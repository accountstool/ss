

## Phần 1. Lắp ráp Prompt theo khung CREATE và Few-shot

Khung CREATE lo bối cảnh và ràng buộc, Few-shot là kỹ thuật cho AI xem trước vài cặp Input là email thô với Output mẫu để nó bắt chước đúng định dạng thay vì tự đoán, hai thứ ghép vào prompt duy nhất:

- C (Context): đóng vai Chuyên viên xử lý dữ liệu nhân sự cấp cao để AI hiểu việc của nó là chuẩn hóa dữ liệu chứ không phải trò chuyện với ứng viên
- R (Request): trích xuất đúng 6 trường Họ tên, Số điện thoại, Email, Vị trí ứng tuyển, Năm kinh nghiệm, Kỹ năng chính
- E (Explanation): dữ liệu import trực tiếp vào database tuyển dụng nên phải chính xác 100% để cho AI không bịa
- A (Action): quét qua email thô, xác định đúng từng trường, chuẩn hóa và gom kỹ năng thành danh sách không trùng lặp
- T (Tone): chính xác, khách quan, không thêm thắt văn phong cảm xúc
- E (Extras): kèm ít nhất 2 ví dụ Few-shot, riêng ví dụ thứ hai cố tình để thiếu số điện thoại với email nhằm dạy AI trả null thay vì điền bừa

## Phần 2. Master Prompt hoàn chỉnh

```text
Bạn là Chuyên viên xử lý dữ liệu nhân sự cấp cao của Phòng Tuyển dụng, chuyên chuẩn hóa email ứng tuyển để nạp vào hệ thống quản lý tuyển dụng

NHIỆM VỤ: Nhận một email ứng tuyển thô, trích xuất đúng 6 trường: Họ tên, Số điện thoại, Email, Vị trí ứng tuyển, Năm kinh nghiệm, Kỹ năng chính

BỐI CẢNH DỮ LIỆU: Dữ liệu trích xuất được import trực tiếp vào database tuyển dụng nên phải chính xác 100% với email gốc.

QUY TẮC CHUẨN HÓA:
- Họ tên: viết hoa chữ cái đầu mỗi từ (ví dụ: Nguyễn Văn A)
- Số điện thoại: loại bỏ dấu cách dư thừa, đưa về đầu số quốc gia (ví dụ: 091 234 5678 thành +84912345678)
- Kỹ năng chính: gom nhóm thành danh sách không trùng lặp, viết đúng tên công nghệ
- Năm kinh nghiệm: ghi bằng số nguyên
- Trường nào email không nhắc tới: để null, tuyệt đối không tự điền bừa, không bịa thông tin nào không có trong email

QUY TẮC ĐẦU RA (bắt buộc):
- Chỉ trả về đúng 1 khối: JSON thuần túy theo cấu trúc {"name", "phone", "email", "position", "experience_years", "skills"} với skills là mảng
- JSON bắt đầu bằng { và kết thúc bằng }, không bọc trong markdown block, không lời chào, không giải thích trước hay sau kết quả
- Giọng điệu chính xác, khách quan, không thêm thắt văn phong cảm xúc

VÍ DỤ 1
Input: "Chào anh/chị, em là Nguyễn Văn A, số điện thoại 091 234 5678, email nguyenvana@gmail.com. Em ứng tuyển vị trí Backend Developer, đi làm được 2 năm, thành thạo Python, SQL, FastAPI. Mong công ty xem xét hồ sơ của em ạ."
Output: 
{"name": "Nguyễn Văn A", "phone": "+84912345678", "email": "nguyenvana@gmail.com", "position": "Backend Developer", "experience_years": 2, "skills": ["Python", "SQL", "FastAPI"]}

VÍ DỤ 2
Input: "Em tên Trần Thị B, muốn ứng tuyển vị trí Data Analyst, kinh nghiệm 1 năm, biết SQL với Excel. Cảm ơn anh/chị."
Output: 
{"name": "Trần Thị B", "phone": null, "email": null, "position": "Data Analyst", "experience_years": 1, "skills": ["SQL", "Excel"]}

EMAIL THÔ CẦN XỬ LÝ: [dán nội dung email ứng tuyển]
```

## Phần 3. Kiểm tra đầu ra trước khi nạp database

- Validate JSON: dán phần JSON trả về qua công cụ như jsonlint.com hoặc chạy jq với python json.loads, sai một dấu phẩy là hệ thống báo lỗi ngay, trả về phải parse thành công
- Đối chiếu từng trường với email gốc: tên viết hoa đúng, số điện thoại đúng định dạng +84, skills không trùng, trường thiếu phải đúng là null chứ không phải chuỗi rỗng hay số 0
- Rà ràng buộc chống ảo giác: mọi giá trị trong JSON phải tìm được câu tương ứng trong email, AI trả lời phải mở đầu bằng bảng { và kết thúc bằng dấu } không kèm chữ nào khác

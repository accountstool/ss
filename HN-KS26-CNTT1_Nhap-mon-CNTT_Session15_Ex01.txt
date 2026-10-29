# HN-KS26-CNTT1_Nhap-mon-CNTT_Session15_Ex01

Bài làm Session 15 Ex01: phân tích trường hợp của Nam (đội Startup Smart Food) và đề xuất quy trình Hybrid Workflow.

## Phần 1. Phân tích: hậu quả của thảm họa dữ liệu truyền thống

**1. Xóa nhầm rồi Ctrl+S là mất code thật, không lấy lại được**

Đoạn code quan trọng chỉ nằm trong file code_final.py trên máy Nam. Tối qua xóa nhầm đoạn đó rồi bấm Ctrl+S nên bản lỗi đã ghi đè luôn bản tốt trong ổ cứng. Lúc này Ctrl+Z không ăn nữa, trong máy cũng chẳng còn bản nào của nội dung cũ để chép lại, mấy ngày viết code coi như mất trắng trong khi sáng nay phải demo cho khách.

**2. Lưu nhiều bản nhưng cùng nằm trên 1 ổ cứng thì vẫn mất hết**

Nam nghĩ đã lưu ra code_v1.py, code_final.py là an toàn nhưng cả 2 bản đều nằm trong D:\Project trên cùng một chiếc máy. Sao lưu chỉ có tác dụng khi bản copy nằm ở chỗ khác. Ổ cứng hỏng hay mất laptop là mất sạch mọi bản, đúng cảnh Nam thốt lên "file chỉ có trên máy em".

**3. File rải rác trên Zalo nên cả nhóm không biết bản nào mới nhất**

main_v1.py, main_v2_final.py gửi qua Zalo, ai tải về cũng để một bản riêng rồi thôi. Không ai dám chắc bản nào là bản cuối, bạn trong nhóm kéo nhầm main_v1.py về chạy là demo sập trước mặt khách. Nhóm còn mất thời gian hỏi qua hỏi lại "bản này có phải bản cuối không" mỗi lần cần code.

Còn luận điểm "cloud làm chậm máy" của Nam cũng không đứng: sync chạy ngầm, file code chỉ vài KB là lên cloud xong trong vài giây, trong khi cái giá của việc không sync là mất trắng cả đoạn code quan trọng như tối qua.

## Phần 2. Đề xuất quy trình thiết lập Hybrid Workflow cho Nam

Từ nay Nam chỉ giữ 1 file code duy nhất, đưa cả thư mục dự án lên cloud để mỗi lần lưu đều có bản dự phòng, cần quay lại bản cũ thì dùng Version History.

Bước 1. Đăng nhập Google Drive của đội Smart Food, tạo thư mục SmartFood_Project rồi share cho 2 thành viên còn lại với quyền Editor.

Bước 2. Trên máy Nam cài Google Drive for desktop, đăng nhập cùng tài khoản, thư mục dự án sẽ hiện trên máy như một ổ đĩa bình thường.

Bước 3. Move toàn bộ code từ D:\Project vào SmartFood_Project trong vùng đồng bộ. Xóa các bản v1, v2, final thừa, thống nhất chỉ giữ một file main.py vì muốn quay về bản nào cũng có version history lo.

Bước 4. Mở Preferences của Drive for desktop chờ sync xong. Thử sửa một dòng trong main.py rồi mở drive.google.com trên web, thấy bản mới hiện lên là sync chạy đúng.

Bước 5. Hết thói quen gửi file qua Zalo, ai cần code thì gửi link file trong Drive kèm quyền xem hoặc sửa. Code xong chỉ cần Ctrl+S là bản mới tự lên cloud.

Bước 6. Khi lại xóa nhầm, mở file trên drive.google.com vào File rồi chọn See version history, mỗi lần Ctrl+S là một bản lưu ở cột bên phải. Chọn bản trước lúc xóa rồi bấm Restore là code quan trọng quay về nguyên vẹn trong một cú bấm.

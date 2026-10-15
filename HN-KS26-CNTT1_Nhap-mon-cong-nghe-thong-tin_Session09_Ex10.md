# PHẦN 1: Phân tích & đề xuất

1. Phân tích bài toán (I/O)
- Input: 
  + Người hỏi: Sinh viên năm nhất PTIT chưa có kinh nghiệm code.
  + Thắc mắc: Cần hiểu khái niệm "Markdown Parser".
- Output: 
  + Trả lời ngắn gọn so sánh bằng hình ảnh đời thường.
  + Không dùng từ ngữ chuyên ngành hay ví dụ code phức tạp có sẵn 1 câu Markdown mẫu và kết quả render

2. Ưu và nhược điểm của 2 chiến lược
- Chiến lược A (Văn xuôi):
  + Ưu điểm: Viết nhanh, gõ tiện trên điện thoại, tốn ít token.
  + Nhược điểm: Hỏi kiểu này AI rất dễ bỏ sót các yêu cầu phụ (như giới hạn số từ hoặc ví dụ), không dùng lại làm mẫu cho các câu sau được.
- Chiến lược B (Markdown 3 phần:
  + Ưu điểm: Rõ ràng bối cảnh, yêu cầu và các điểm cần tránh AI trả lời cực kỳ chuẩn ý lưu lại làm templ để hỏi các môn khác rất tiện.
  + Nhược điểm: Mất thời gian gõ cú pháp Markdown tốn token hơn một tí.


# PHẦN 2: so sánh và chọn

3. Bảng so sánh 4 tiêu chí

| Tiêu chí | Chiến lược A (Văn xuôi) | Chiến lược B (Markdown 3 phần) |
| :--- | :--- | :--- |
| **Độ chính xác** | Tầm trung - AI hay quên hoặc sót tiêu chí | Rất cao - AI làm đúng 100% bối cảnh và yêu cầu |
| **Tiêu thụ Token** | Ít (~40-50 token) | Tốn hơn chút (~80-100 token) |
| **Khả năng tái sử dụng** | Bằng 0 - Lần nào gõ lại lần đó | Cực cao - Giữ nguyên khung, chỉ thay khái niệm |
| **Dễ học cho người mới** | Ai cũng gõ được ngay | Phải biết vài dấu Markdown cơ bản |

4. Chốt lựa chọn
- Khi nào dùng Chiến lược A: Khi cần hỏi nhanh mấy câu đơn giản lúc đang đi đường hoặc dùng điện thoại, không quan trọng câu trả lời ngắn hay dài.
- Khi nào dùng Chiến lược B: Lúc ôn thi, cần AI trả lời đúng trọng tâm để học, hoặc muốn tạo sẵn bộ khung prompt để hỏi liên tục nhiều bài.
- Lý do: Mất công gõ khung ở Chiến lược B giúp tiết kiệm thời gian sửa lại câu trả lời của AI sau này, tránh việc AI trả lời dài dòng vô lan man.


# PHẦN 3: THIẾT KẾ & TRIỂN KHAI

5. Prompt mẫu hỏi khái niệm "Token" (Dùng Chiến lược B)

## Bối cảnh
Tôi là sinh viên năm 1 PTIT, chưa học lập trình bao giờ.

## Khái niệm cần giải thích
Token (trong môn Nhập môn CNTT)

## Yêu cầu
- Lấy ví dụ đời thường gần gũi để giải thích.
- Viết ngắn trong tầm 100 đến 150 từ.
- Cho 1 ví dụ câu ngắn và đếm rõ ra bao nhiêu token.

## Không cần
- Mấy công thức toán hay thuật ngữ tách chuỗi phức tạp.
- Đoạn code minh họa.


6. Trả lời 2 bẫy dữ liệu

- Bẫy 1: 
Nhét nhầm giới hạn độ dài vào mục ## Bối cảnh thì AI vẫn đọc được, nhưng tỉ lệ nó bỏ qua yêu cầu này sẽ cao hơn hẳn. Do thuật toán AI ưu tiên các tiêu chí nằm đúng mục ## Yêu cầu để xử lý hơn.

- Bẫy 2: 
Chiến lược A tốn ít token nên sẽ ngon hơn khi:
1. Đang nhắn tin hỏi nhanh trên điện thoại.
2. Không cần AI trả lời theo khuôn mẫu cụ thể nào.
3. Trong đoạn chat đã hỏi đáp vài câu trước đó rồi, AI đã có sẵn context nên không cần nhắc lại bối cảnh nữa.

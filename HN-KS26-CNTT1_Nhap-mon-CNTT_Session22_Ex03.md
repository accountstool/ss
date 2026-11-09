# HN-KS26-CNTT1_Nhap-mon-CNTT_Session22_Ex03

## Mô hình IPO

**Input:** Câu trả lời của AI, gồm một câu lệnh bảo dán vào Terminal để sửa lỗi, lệnh trông lạ và có dấu hiệu can thiệp sâu vào hệ thống

**Process:** Kiểm chứng lệnh qua hai nguồn độc lập. Một là copy nguyên câu lệnh dán lên Google kèm toán tử `site:stackoverflow.com`, xem có ai gặp cùng lỗi và dùng đúng lệnh đó chưa, ưu tiên bài có tích xanh với nhiều upvote. Hai là mở trang chủ python.org đọc hướng dẫn chính thức cách sửa "Path not found". Quy tắc chốt: lệnh của AI phải được ít nhất một trong hai nguồn xác nhận thì mới tính, không tìm thấy ai nhắc tới là nghi ngờ nặng.

**Output:** Hai khả năng. Có nguồn xác nhận thì lệnh an toàn, dán vào Terminal chạy theo. Không nguồn nào nhắc tới thì kết luận không an toàn, khả năng cao AI đang bịa ra lệnh nghe cho hợp lý nhưng không có thật, vứt lệnh đó và làm theo hướng dẫn trên python.org

## Prompt hỏi ngược lại AI

```text
Ngữ cảnh: Em đang sửa lỗi "Path not found" khi cài Python, cậu vừa đưa em một câu lệnh để dán vào Terminal.
Lệnh nguyên văn: [dán đúng câu lệnh cậu vừa nhận từ AI]
Yêu cầu: Trước khi em chạy, hãy giải thích từng đoạn trong lệnh làm gì, nó đụng vào file hay thư mục hệ thống nào, chạy xong có quay lại được không, kèm nguồn chính thức như python.org hoặc StackOverflow để chứng minh. Nếu không chắc chắn thì nói thẳng, đừng bịa.
```
# HN-KS26-CNTT1_Nhap-mon-CNTT_Session22_Ex05

Nhóm hay dính lỗi vặt Docker với Port conflict mà cứ nhắn loạn xạ vào chat rồi tin trôi, mình làm hai thứ để chặn: một mẫu bug report bắt buộc điền trước khi hỏi và một quy trình 3 bước tự xử trước.

## 1. Mẫu Bug Report 4 mảnh ghép

Ai muốn hỏi thì phải copy khung này điền đủ rồi mới đưa lên nhóm, thiếu mảnh nào thì bị bảo điền lại:

```markdown
### Context
Đang làm gì, trên máy gì, dùng tool gì phiên bản mấy

### Expected
Bình thường nó phải chạy thế nào

### Actual
Thực tế nó ra gì, chép nguyên văn thông báo lỗi

### Log
Log hoặc ảnh chụp màn hình lỗi
```

Ví dụ điền mẫu cho lỗi Port conflict quen thuộc:

- Context: đang chạy docker compose up cho dự án web trên Windows 11, Docker Desktop bản mới
- Expected: container web chạy ở cổng 3000
- Actual: máy báo "port is already allocated" không start được
- Log: ảnh chụp terminal hiện thông báo lỗi

## 2. Quy trình 3 bước tra cứu bắt buộc

1. Googling: bóc từ khoá trong thông báo lỗi rồi gõ Google kèm toán tử, site: để khoanh vùng, ngoặc kép để khóa nguyên cụm, dấu trừ để vứt trang rác
2. Community Search: lội GitHub Issues của dự án với StackOverflow, ưu tiên issue còn OPEN có nhiều reaction, vì lỗi vặt Docker hay port conflict kiểu này gần như chắc chắn đã có người gặp
3. AI Translation: dán prompt 3 thành phần gồm ngữ cảnh, lỗi nguyên văn, yêu cầu nhờ AI giải thích lỗi tiếng Anh bằng tiếng Việt cùng cách sửa, nhưng kiểm chứng bằng site:stackoverflow.com hoặc trang chủ trước khi chạy lệnh

Ba bước này xử được khoảng 80% lỗi vặt, còn lại mới lên nhóm chat hỏi, mà hỏi thì phải kèm bug report đã điền, ai đọc cũng nắm đủ ngữ cảnh, không ai phải hỏi lại kiểu "lỗi gì đâu", tin cũng không trôi vì nội dung nằm gọn trong một khung.

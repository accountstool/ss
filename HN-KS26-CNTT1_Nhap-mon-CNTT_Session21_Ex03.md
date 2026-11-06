# HN-KS26-CNTT1_Nhap-mon-CNTT_Session21_Ex03

## Phần 1. Báo cáo phân tích theo IPO

**Input (Ngữ cảnh với mã lỗi nguyên văn)**

- Ngữ cảnh: sinh viên mới học Git, đứng ở thư mục dự án mới tạo, chưa từng chạy git init
- Mã lỗi nguyên văn, dán y nguyên không sửa một dấu:

```
fatal: not a git repository (or any of the parent directories): .git
```

**Process (AI xử lý thông tin ra sao)**

AI đọc mã lỗi, hiểu là Git chạy mà không tìm thấy thư mục .git nào từ chỗ đang đứng đi lên trên cùng. Đối chiếu ngữ cảnh người hỏi là người mới với chưa từng git init, nó loại các nguyên nhân xa vời, chốt nguyên nhân khả dĩ nhất rồi xếp thành trình tự bước cho người mới làm theo.

**Output (Bản dịch với 3 bước sửa)**

Bản dịch: "Nghiêm trọng: đây không phải là một kho Git (các thư mục phía trên cũng không có): .git", tức là chỗ đang đứng chưa được khởi tạo Git.

1. Gõ pwd (Linux/Mac) hoặc cd không tham số (Windows) xem mình đang đứng ở thư mục nào, có đúng thư mục dự án không

2. Sai chỗ thì cd vào đúng thư mục dự án, đứng đúng rồi mà vẫn lỗi thì gõ git init, máy sinh ra thư mục ẩn .git chính là kho Git

3. Gõ lại git status kiểm tra, hết báo lỗi là xong

## Phần 2. Prompt hoàn chỉnh

Viết theo công thức Ngữ cảnh → Mã lỗi → Yêu cầu:

```
Tôi là sinh viên năm nhất mới học Git, đang mở terminal trong thư mục dự án của mình để chạy lệnh git status.

Terminal báo lỗi:
fatal: not a git repository (or any of the parent directories): .git

Tôi không hiểu tiếng Anh chuyên ngành. Hãy: (1) dịch nghĩa lỗi này sang tiếng Việt dễ hiểu, (2) nêu nguyên nhân, (3) hướng dẫn tôi sửa từng bước bằng tiếng Việt, mỗi bước kèm lệnh rõ ràng theo thứ tự để tôi gõ theo.
```

Câu đầu là Ngữ cảnh cho AI biết ai hỏi với đang ở đâu, khối giữa là Mã lỗi dán nguyên bản để khỏi đoán mò, câu cuối là Yêu cầu chốt định dạng trả lời. Đủ 3 lớp thì AI không phải hỏi lại, trả lời trúng trình độ người mới, đúng tiếng Việt, đi đúng từng bước.

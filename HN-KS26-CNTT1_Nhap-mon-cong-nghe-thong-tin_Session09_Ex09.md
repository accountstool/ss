# PHẦN 1: PHÂN TÍCH VÀ THIẾT KẾ GIẢI PHÁP

1. Phân tích bài toán (I/O)
- Input: Thông tin cơ bản về CLB Lập trình PTIT (tên, mô tả, các ban, email liên hệ, các bước gia nhập kèm lệnh git, checklist task thành viên mới và lưu ý quy định/deadline).
- Output: File README.md hoàn chỉnh render trực quan trên GitHub với tiêu đề chuẩn, bảng biểu, khối lệnh code, danh sách việc cần làm và thông báo nổi bật.

2. Đề xuất giải pháp
Chia file README.md thành 5 phần bằng cú pháp Markdown:
- Phần 1: Dùng # cho H1, ## cho H2 và ** ** để in đậm nội dung chính.
- Phần 2: Dùng bảng | | | chia 3 cột và gắn link mailto: cho cột liên hệ.
- Phần 3: Dùng danh sách 1. 2. 3. và khối ```bash để đóng khung lệnh git.
- Phần 4: Dùng - [x] và - [ ] để tạo danh sách công việc.
- Phần 5: Dùng > để tạo khối ghi chú/cảnh báo nổi bật.

3. Các bước thực hiện
- B1: Tạo file README.md bằng editor (VS Code / StackEdit).
- B2: Soạn Phần 1 giới thiệu CLB.
- B3: Dựng bảng danh sách các ban ở Phần 2 và chèn link mailto.
- B4: Soạn hướng dẫn gia nhập ở Phần 3, đưa các lệnh git vào code block.
- B5: Tạo checklist nhiệm vụ ở Phần 4.
- B6: Viết quy định và deadline ở Phần 5 bằng blockquote.
- B7: Push file lên repository GitHub và kiểm tra hiển thị.


# PHẦN 2: TRIỂN KHAI VÀ CHỐNG LỖI

4. Source code file README.md

--- BẮT ĐẦU NỘI DUNG FILE README.MD ---

# CLB LẬP TRÌNH PTIT (PROCLUB)

## 1. Giới thiệu CLB
Môi trường học tập và rèn luyện kỹ năng lập trình dành cho sinh viên PTIT. Nơi hội tụ các bạn **đam mê công nghệ, chủ động học hỏi và cùng làm dự án thực tế**.

---

## 2. Danh sách Ban Điều Hành

| Tên Ban | Trưởng Ban | Liên hệ |
| :--- | :--- | :--- |
| Ban Kỹ thuật | Nguyễn Văn A | [tech.proclub@ptit.edu.vn](mailto:tech.proclub@ptit.edu.vn) |
| Ban Truyền thông | Trần Thị B | [media.proclub@ptit.edu.vn](mailto:media.proclub@ptit.edu.vn) |
| Ban Sự kiện | Lê Văn C | [event.proclub@ptit.edu.vn](mailto:event.proclub@ptit.edu.vn) |

---

## 3. Hướng dẫn Gia nhập CLB

1. Clone repo của CLB về máy:
   ```bash
   git clone https://github.com/proclub-ptit/welcome.git
   ```

2. Tạo branch mới theo tên cá nhân:
   ```bash
   git checkout -b feature/ten-thanh-vien
   ```

3. Thêm thông tin cá nhân vào file member.json và commit:
   ```bash
   git add .
   git commit -m "Add new member"
   ```

4. Push code lên GitHub và tạo Pull Request:
   ```bash
   git push origin feature/ten-thanh-vien
   ```

---

## 4. Checklist Nhiệm vụ Thành viên Mới

- [x] Tham gia group Zalo chung của CLB
- [x] Tạo tài khoản GitHub và cập nhật thông tin
- [ ] Hoàn thành bài test Git cơ bản
- [ ] Đăng ký vào 1 dự án của Ban Kỹ thuật
- [ ] Báo cáo tiến độ cho Trưởng ban sau tuần đầu

---

## 5. Lưu ý quan trọng

> ⚠️ **DEADLINE SETUP:** 23h59 Chủ Nhật tuần này.
> 
> **Quy tắc ứng xử:**
> - Tôn trọng mọi người, trao đổi lịch sự trong nhóm chat.
> - Tuân thủ đúng quy trình Git khi làm việc nhóm.
> - Gặp khó khăn hay bị lỗi thì nhắn hỏi ngay, không giấu.

--- HẾT NỘI DUNG FILE README.MD ---


5. Trả lời 2 bẫy dữ liệu

- Bẫy 1: 
Nếu chỉ viết email dạng chữ thường như `tech@ptit.edu.vn` thì khi click vào sẽ không có tác dụng gì. Phải bọc dạng `[tech.proclub@ptit.edu.vn](mailto:tech.proclub@ptit.edu.vn)` thì khi bấm vào, trình duyệt mới hiểu đây là giao thức gửi thư và tự mở ứng dụng Mail (như Outlook, Gmail...) trên thiết bị để tạo sẵn thư gửi tới địa chỉ đó.

- Bẫy 2: 
+ Link dẫn đi đâu: Nếu dán URL thiếu `http://` hoặc `https://` (ví dụ `[facebook.com/group](https://facebook.com/group)`), GitHub sẽ hiểu nhầm đó là đường dẫn tương đối trong repository và tự nối nó vào đằng sau URL repo hiện tại (thành `[https://github.com/user/repo/facebook.com/group](https://github.com/user/repo/facebook.com/group)`), khi nhấp vào sẽ ra lỗi 404 Not Found. Nếu URL sai tên miền thì trình duyệt sẽ báo lỗi DNS không kết nối được.
+ Hệ thống xử lý thế nào: Trình xem Markdown của GitHub chỉ dịch ký tự ra thẻ HTML `<a>` chứ không chủ động kết nối hay kiểm tra xem link đó có tồn tại hay không. Việc link mở được hay báo lỗi hoàn toàn do trình duyệt web của người dùng xử lý khi click vào.

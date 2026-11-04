# HN-KS26-CNTT1_Nhap-mon-CNTT_Session19_Ex09

## Phần 1. Báo cáo phân tích kiến trúc an ninh mật khẩu

**1. Lưu mật khẩu trên Chrome nguy hiểm thế nào**

Chrome bỏ mật khẩu vào file Login Data nằm ngay trên ổ cứng, file này có mã hóa nhưng chìa khóa cũng nằm trên máy, nên mã độc Infostealer chạy được trong máy là kéo nguyên file về, lấy đủ cả kho. Lập trình viên dính là mất một lượt GitHub, AWS, Steamworks, và đang lộ hơn nữa khi 6/8 người dùng chung biến thể PixelForge@2026 cho cả tài khoản cá nhân lẫn công ty, một trang bị rò là domino đổ hàng loạt, vụ diễn đàn tuần trước suýt mất GitHub chính là kẻ xấu lấy mật khẩu cũ đi thử lại từng trang. Nên chuyển hết sang kho riêng có khóa Master là phải làm, không phải lựa chọn.

**2. Server Bitwarden bị hack thì có giải mã được không**

Không. Kiến trúc Zero-Knowledge là mọi chuyện diễn ra bên máy mình (Client-side Decryption): vault bị mã hóa bằng key sinh ra từ Master Passphrase, key này chỉ tồn tại trên máy client, server chỉ cầm bản đã mã hóa và một cái hash để kiểm tra passphrase lúc đăng nhập, còn passphrase gốc thì server không bao giờ biết. Hacker ôm được cả máy chủ cũng chỉ có mớ dữ liệu AES-256, không có key thì phải dò hàng tỷ tỷ tổ hợp, cỗ máy mạnh mấy cũng không xong nổi. Đúng ràng buộc của đề, nhà cung cấp tự họ cũng không mở được két của studio.

## Phần 2. Chính sách và kịch bản chuyển đổi

**3. Master Passphrase chuẩn**

Công thức là một câu chuyện ngược đời gồm 5-6 từ ngẫu nhiên, thêm số với ký tự đặc biệt, chỉ đội nhóm biết, không lấy câu hát hay câu thơ ai cũng thuộc. Ví dụ đạt chuẩn trên 20 ký tự: Con-Mèo-Nhặt-Được-7-Viên-Kẹo-Vàng! Dễ nhớ vì chỉ là một cảnh buồn cười, còn máy brute-force phải thử cả tỷ tỷ cách ghép từ. Đây chỉ là ví dụ, dùng thật thì tự nghĩ câu của mình kẻo ai cũng trùng.

**4. Bảng cấu hình Generator cho 40 tài khoản**

| Mục | Cài đặt |
| --- | --- |
| Độ dài | 20 ký tự, trong khung 16-32 của đề |
| Chữ hoa | Bật |
| Chữ thường | Bật |
| Chữ số | Bật |
| Ký tự đặc biệt | Bật (!@#$%^&) |
| Tránh ký tự dễ nhầm | Bật (I, l, 1, O, 0) |

Mỗi tài khoản bấm sinh một mã riêng, không tái sử dụng, nguyên tắc một tài khoản một mật khẩu là cắt được hiệu ứng domino.

**5. Auto-fill chống Phishing**

Bitwarden chỉ chịu điền khi tên miền trang đang mở khớp từng ký tự với địa chỉ đã lưu, trang giả githúb.com hay steampowered.xyz lệch một dấu là vault nằm im, không nhả mật khẩu. Con người nhìn logo với giao diện giống là gõ mật khẩu ngay, nên máy so tên miền chính xác hơn mắt thường một bậc.

**6. Khóa Cấp cứu **

Trưởng phòng Kỹ thuật mà có chuyện đột xuất là cả studio bị khóa ngoài 40 tài khoản, nên phải in Emergency Kit ra giấy gồm tên tài khoản, gợi ý passphrase, mã khôi phục 2FA, niêm phong bỏ vào két sắt văn phòng. Chìa két giao Trưởng nhóm giữ, muốn mở phải có 2 người có mặt. Đổi passphrase là in lại bộ mới, hủy bộ cũ. Giấy không nối mạng nên hacker lấy không được, két sắt số phải nhờ két sắt thật giữ chân.

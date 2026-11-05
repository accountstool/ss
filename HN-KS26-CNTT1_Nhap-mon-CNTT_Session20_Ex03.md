# HN-KS26-CNTT1_Nhap-mon-CNTT_Session20_Ex03

## Phần 1. Báo cáo phân tích theo IPO

**Input (Mã dự phòng)**

- Bộ 10 Backup Codes in giấy niêm phong cất két sắt văn phòng, đúng nguyên tắc bài trước
- Mỗi mã dùng đúng một lần, thay vai trò mã OTP khi Google Authenticator đã nằm trong máy mất

**Process (Xác thực / Hủy mã cũ / Cấp mã mới)**

1. Lấy bộ mã từ két, vào AWS đăng nhập bằng mật khẩu rồi nhập một Backup Code thay mã OTP

2. Vào phần bảo mật của AWS, đăng xuất tất cả phiên đang hoạt động, kể cả phiên còn mở trên máy mất

3. Gỡ authenticator cũ, quét QR mới bằng Google Authenticator trên điện thoại thay thế, seed của máy mất chết hẳn

4. Cấp bộ Backup Codes mới, xóa bộ cũ vì mã còn sót là lỗ hổng

5. Đổi luôn mật khẩu AWS sau khi vào lại được, kẻ nhặt máy dù mở được app nào cũng chỉ thấy phiên đã chết

**Output (Hệ thống an toàn)**

- AWS vào lại được, máy mới sinh mã bình thường, seed cũ cùng bộ mã cũ hết hiệu lực
- Máy mất không còn mở được cửa nào, bộ mã mới vẫn nằm yên trong két

## Phần 2. Vì sao không lưu Backup Codes dạng ảnh trong điện thoại

Điện thoại đang là thiết bị sinh mã OTP, để mã dự phòng trong máy là cất chìa với ổ khóa vào cùng một ngăn kéo, mất máy là mất cả hai cùng lúc, cửa dự phòng đóng luôn. Ảnh còn tự đồng bộ lên Google Photos, tức là một bản copy nằm ngoài máy, tài khoản Google bị hack thì kẻ xấu đọc được ảnh mà không cần cầm điện thoại. App nào cài trên máy cũng có thể xin quyền đọc thư viện ảnh rồi lôi ảnh đi. Nên mã dự phòng phải nằm ngoài thiết bị sinh mã, giấy niêm phong trong két hoặc vault Bitwarden là chuẩn.

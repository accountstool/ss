# HN-KS26-CNTT1_Nhap-mon-CNTT_Session19_Ex01

## Phần 1. Báo cáo phân tích theo IPO

**Input (Dấu hiệu nhiễm)**

- Facebook với Gmail liên tục bị đăng nhập từ thiết bị lạ dù đã đổi mật khẩu
- Máy chậm bất thường, Task Manager có phần mềm lạ chạy ngầm

**Process (Quy trình 4 bước cấp cứu)**

Nguyên tắc là ngắt kết nối rồi thu hồi quyền truy cập:

1. Ngắt kết nối: rút dây mạng với tắt WiFi ngay, để máy không gửi thêm dữ liệu ra ngoài

2. Thu hồi quyền tài khoản: cầm điện thoại đổi mật khẩu Gmail với Facebook, bật xác minh 2 bước (2FA)

3. Thu hồi quyền phiên: đăng xuất khỏi mọi thiết bị, vào GitHub xóa hết token. Token hiểu đơn giản là chuỗi cho vào lại tài khoản mà không cần mật khẩu, giống cookie bài hôm trước, kẻ xấu cầm được là server tưởng vẫn đang đăng nhập nên phải xóa chết hết

4. Quét sạch máy: chạy Windows Defender quét full, xóa mật khẩu với cookie đã lưu trong trình duyệt

Mất quyền liên tục là vì đổi mật khẩu mà phiên đăng nhập cũ chưa bị thu hồi, kẻ xấu vẫn ngồi trong đó.

**Output (Hệ thống sạch)**

- Mật khẩu đổi hết, 2FA bật
- Token với phiên đăng nhập cũ xóa hết, máy quét không còn virus

## Phần 2. Triển khai chi tiết

**Đổi mật khẩu từ thiết bị khác**

Không gõ mật khẩu mới trên máy đang nhiễm vì loại virus này ghi lại từng phím mình gõ, đổi cũng vô ích. Cầm điện thoại vào Gmail đổi trước, bật 2FA, đăng xuất các thiết bị lạ, Facebook làm y chang. Xong quét sạch máy mới đăng nhập lại.

**Revoke Token trên GitHub (xóa token)**

Vào GitHub bằng thiết bị khác còn sạch, Settings, Applications, Personal access tokens, chọn từng token bấm Delete. Phần Authorized OAuth Apps lướt một vòng, thấy app lạ thì gỡ. Cuối cùng vào mục Sessions, xóa hết phiên đăng nhập. Tạo lại token mới nhưng chỉ cho ít quyền, đặt hạn ngắn thôi.

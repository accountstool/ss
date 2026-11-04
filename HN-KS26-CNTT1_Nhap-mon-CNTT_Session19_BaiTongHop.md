# HN-KS26-CNTT1_Nhap-mon-CNTT_Session19_BaiTongHop

## Phần 1. Nhận diện rủi ro và xử lý sự cố

**Tình huống 1**

Email này là Phishing, còn tên miền githuh-security.com là chi tiết Typosquatting, chữ b sửa thành h cho giống github. Chi tiết lộ liễu là GitHub chưa bao giờ gửi link bắt nhập lại mật khẩu, thêm nữa bài email cố tạo nỗi sợ tài khoản bị khóa cho người đọc hoảng loạn bấm link. Khuyên bạn đúng điều KHÔNG bấm link lạ trong email với không nhập mật khẩu qua link, muốn kiểm tra thì tự tay gõ github.com.

**Tình huống 2**

Đây là bẫy Mã độc Crack, phần mềm bẻ khóa chèn sẵn Infostealer với keylogger. Yêu cầu tắt Windows Defender là dấu hiệu nguy nhất: phần mềm lành không bao giờ sợ diệt virus, bắt tắt là để mã độc chạy yên, mất luôn lớp phòng duy nhất của máy. Khuyên bạn KHÔNG tải phần mềm crack với KHÔNG tắt phần mềm diệt virus.

**Nếu lỡ chạy file crack, 4 bước cấp cứu**

1. Ngắt kết nối mạng ngay, chặn đường gửi dữ liệu ra ngoài

2. Đổi mật khẩu Gmail với GitHub từ thiết bị khác còn sạch, bật 2FA

3. Đăng xuất mọi thiết bị, revoke token GitHub

4. Quét full Windows Defender, xóa sạch mật khẩu với cookie đã lưu trong trình duyệt

## Phần 2. Chuyển sang Password Manager

Email nhóm lộ SmartCampus2026! thì GitHub tổ chức với Vercel chết theo ngay, vì kẻ xấu cầm một mật khẩu đi thử tất cả dịch vụ, kiểu tấn công này tên Credential Stuffing, đúng hiệu ứng domino.

Zero-Knowledge là dữ liệu được mã hóa bằng key sinh từ Master Passphrase, key chỉ tồn tại trên máy client, server Bitwarden chỉ giữ bản đã mã hóa nên hacker vào được server cũng thiếu chìa khóa giải mã.

Generator tạo 3 mật khẩu riêng biệt cho GitHub, Vercel và email nhóm:

| Thông số | Giá trị cấu hình |
| --- | --- |
| Độ dài | 20 ký tự |
| Chữ hoa (A-Z) | Bật |
| Chữ thường (a-z) | Bật |
| Chữ số (0-9) | Bật |
| Ký tự đặc biệt | Bật (!@#$%^&) |

## Phần 3. Kích hoạt 2FA cho GitHub tổ chức

**Vì sao bỏ SMS OTP**

Một là SMS dính SIM Swapping, kẻ xấu giả danh gọi nhà mạng chuyển SIM là nhận mã hộ mình. Hai là mất sóng hay đi nước ngoài là không nhận được mã, trong khi TOTP chạy offline mọi lúc.

**Các bước bật Google Authenticator**

1. Vào GitHub, Settings, Password and authentication

2. Chọn Enable two-factor authentication

3. Chọn Authenticator app (TOTP), hệ thống hiện mã QR

4. Mở Google Authenticator, bấm dấu cộng rồi quét QR

5. Nhập mã 6 số đang hiện trên app để xác nhận

**Backup Codes**

Nên in ra giấy niêm phong bỏ két sắt văn phòng, hoặc cất vào Bitwarden. Không chụp màn hình nằm trong điện thoại hay quăng file vào Downloads, mất máy là mất cả chìa dự phòng.

## Phần 4. Bảo vệ Secrets trước khi push

Hai secret đang hardcode: API_KEY với giá trị sk-proj-abc123456789, và DB_PASSWORD với giá trị SmartCampus@2026.

Code sửa lại:

```js
const API_KEY = process.env.API_KEY;
const DB_PASSWORD = process.env.DB_PASSWORD;

function connectDatabase() {
  return connect(DB_PASSWORD);
}
```

File .env (chỉ nằm trên máy, không lên Git):

```
API_KEY=sk-proj-abc123456789
DB_PASSWORD=SmartCampus@2026
```

File .gitignore:

```
node_modules/
.env
```

File .env.example (chia sẻ cho nhóm, không chứa giá trị thật):

```
API_KEY=your_api_key_here
DB_PASSWORD=your_db_password_here
```

**4 bước kiểm tra trước khi push**

1. git status soi danh sách file sắp commit, không được thấy .env

2. Soi lại diff, tìm chuỗi sk-proj, password, key xem còn sót gì không

3. Kiểm tra .gitignore đã chặn .env với node_modules

4. Push xong mở repo trên web soi lại, chỉ thấy .env.example chứ không thấy .env

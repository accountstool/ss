# HN-KS26-CNTT1_Nhap-mon-CNTT_Session19_Ex10

## Phần 1. Phân tích 2 giải pháp xác thực

**1. Ba yếu tố xác thực và 2FA xếp vào đâu**

Ba lớp yếu tố là thứ mình biết (Know) như mật khẩu, thứ mình cầm (Have) như điện thoại, thứ mình là (Are) như vân tay với khuôn mặt. Kích hoạt 2FA nghĩa là phải vượt qua 2 lớp khác loại: mật khẩu đại diện cho Know, mã OTP đại diện cho Have vì nó nằm trong chiếc điện thoại đang cầm trên tay. Kẻ xấu ăn trộm được mật khẩu vẫn không vào được nếu không cầm được máy.

**2. Vì sao TOTP sinh mã đúng khi bật Chế độ Máy bay**

Mã OTP không phải ai gửi tới cả. Lúc quét QR lần đầu, chìa khóa bí mật được nạp vào app, sau đó mã 6 số chỉ là kết quả bài toán tính từ chìa khóa đó cộng đồng hồ của máy chia theo khung 30 giây, server làm bài toán y chang với cùng chìa khóa rồi đối chiếu. Đồng hồ điện thoại chạy độc lập, bật máy bay cũng không dừng, nên không cần Wi-Fi với 4G gì hết, mã vẫn đổi đúng nhịp đếm lùi.

**3. Bảng so sánh theo 4 tiêu chí của đề**

| Tiêu chí | SMS OTP | Authenticator TOTP |
| --- | --- | --- |
| Chống SIM Swapping với nghe lén SS7 | Kém, kẻ xấu chiếm đoạt được số hoặc nghe lén sóng mạng | Tuyệt đối, chìa khóa bí mật nằm an toàn trên chip máy |
| Sẵn sàng offline với nước ngoài | Phụ thuộc sóng, mất sóng hay ra nước ngoài là không nhận được mã | Chạy 100% offline mọi lúc kể cả trên máy bay |
| Tiện dụng với chi phí | Quen thuộc nhưng mỗi lượt gửi SMS doanh nghiệp mất tiền | Miễn phí, mở app quét mã là xong |
| Rủi ro khi mất điện thoại | Làm lại SIM lấy lại được mã nhưng dễ bị trộm SIM | Cần Backup Codes hoặc Cloud Sync mã hóa |

**4. Kết luận: chọn TOTP**

Ban Giám đốc nên chọn Authenticator App cho đội ngũ kỹ sư. Dev thường xuyên bay GDC với làm việc trên máy bay, SMS ra nước ngoài là mất sóng không nhận được mã, TOTP chạy offline không bao giờ kẹt. Bẫy an ninh của đề cũng trúng thẳng SMS: kẻ xấu gọi nhà mạng giả danh đổi SIM là số của nhà sáng lập chết liền, còn chìa khóa của TOTP nằm trong chip máy, đường dỗ nhà mạng không lấy được. Thêm chuyện chi phí, gửi SMS mỗi lượt là mất tiền, TOTP miễn phí hoàn toàn, tài khoản quản trị mã nguồn với doanh thu bán hàng đáng đầu tư lớp chắc nhất.

## Phần 3. Backup Codes

**5. Bộ 10 mã khôi phục**

Mục đích: điện thoại mất, rớt nước hay app lỗi là không sinh được OTP, bộ Backup Codes là cửa dự phòng, mỗi mã dùng một lần để vào lại tài khoản gỡ 2FA cũ rồi kích hoạt lại trên máy mới.

Hai vị trí an toàn để lưu:

- In ra giấy niêm phong bỏ vào két sắt văn phòng, giống Emergency Kit bài trước
- Cất vào Bitwarden, két sắt số đã dựng cho studio

Sai lầm tai hại: chụp màn hình lưu ngay trong điện thoại, mất máy là mất app với mất mã khôi phục cùng một chỗ, chìa dự phòng nằm cạnh chìa chính thì phòng hờ bằng không.

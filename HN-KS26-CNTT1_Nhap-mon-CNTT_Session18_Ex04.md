# HN-KS26-CNTT1_Nhap-mon-CNTT_Session18_Ex04

## Phần 1. Incognito khác Profile riêng chỗ nào

Khác nhau nằm ở chỗ dữ liệu được giữ thế nào. Cửa sổ ẩn danh (Ctrl+Shift+N) chỉ ghi cookie, lịch sử, dữ liệu form tạm vào RAM, đóng cửa sổ là Chrome quét sạch, đăng nhập tới đâu cũng chỉ sống đúng phiên đó, bù lại nó không dính dáng tới cookie của hồ sơ thường nên hợp để đăng nhập chớp nhoáng rồi thoát. Profile riêng thì dữ liệu được ghi hẳn xuống ổ cứng, mỗi hồ sơ một thư mục riêng trong thư mục User Data của Chrome, cookie, mật khẩu, lịch sử tách bạch hẳn, tắt máy mở lại phiên đăng nhập vẫn còn nguyên. Vậy nên chuyện 3 tài khoản đè cookie lên nhau chỉ xảy ra khi nằm chung một hồ sơ, chia ra là xung đột phiên tự tiêu, mà dữ liệu cần sống sót qua nhiều ngày thì ẩn danh không chịu được, phải là profile riêng.

## Phần 2. Triển khai

**Chức năng 1. Ba hồ sơ Personal, Work, Sandbox**

Bấm avatar góc phải trên chọn Thêm hồ sơ (Add), chọn Tiếp tục mà không cần tài khoản, đặt tên với chọn màu khác nhau, làm 3 lần là xong:

- Personal: tài khoản cá nhân, mail, mạng xã hội
- Work: admin GreenLog với Portal công ty
- Sandbox: chỗ thả tay test, đăng nhập linh tinh cũng không ảnh hưởng tới ai

Mỗi hồ sơ mở ra một cửa sổ riêng với avatar màu riêng, cookie nằm ở thư mục khác nhau nên không còn chuyện phiên này ghi đè phiên kia. Nguyên tắc duy nhất phải giữ là một hồ sơ một tài khoản Google, không đăng nhập chéo.

**Chức năng 2. Cây thư mục Bookmark**

Bật thanh bookmark bằng Ctrl+Shift+B, vào Bookmark Manager (Ctrl+Shift+O) để dựng cây, hồ sơ Work chia thế này:

- Công việc: GitHub GreenLog, Portal công ty
- Học tập: Canvas LMS
- Công cụ: tài liệu DevTools, trang check JSON

Công cụ nào cần bấm liên tục thì kéo thẳng lên thanh bookmark cho ra mặt, chôn sâu quá mỗi lần mở phải đi 2 nhịp là mất công.

**Đồng bộ Cloud Sync**

Trong hồ sơ bấm avatar chọn Bật đồng bộ hóa, đăng nhập tài khoản Google đúng của hồ sơ đó, trong phần tùy chọn chọn đồng bộ Bookmark (hoặc đồng bộ tất cả nếu muốn kéo cả mật khẩu theo). Sang máy mới chỉ cần cài Chrome, đăng nhập đúng account rồi bật sync là cây bookmark tự về như cũ, mở Bookmark Manager kiểm tra lại là thấy.

**Đảm bảo ràng buộc**

Mật khẩu với lịch sử của Personal nằm trong thư mục của Personal nên hồ sơ Work bản chất không nhìn thấy được, kể cả kho lưu mật khẩu cũng là của riêng từng hồ sơ. Khi trình chiếu chỉ cần mở đúng cửa sổ Work, không bao giờ đăng nhập account cá nhân vào hồ sơ Work là đạt ràng buộc.

## Phần 3. Máy tính công cộng dùng Guest

Guest khác ẩn danh ở chỗ cửa sổ Khách không đụng tới dữ liệu của bất kỳ hồ sơ nào trên máy, không cho cài tiện ích, không cho đồng bộ, đóng cửa sổ là Chrome xóa sạch cookie cùng lịch sử. Quy tắc khi mượn máy:

- Chỉ mở cửa sổ Khách từ menu avatar, không đăng nhập hồ sơ Chrome của mình trên máy người ta, thế là kéo cả kho mật khẩu xuống máy lạ
- Không lưu mật khẩu, không tick ghi nhớ đăng nhập ở bất kỳ trang nào
- Đăng xuất từng trang Portal, GitHub trước khi đóng, đề phòng người ngồi lại sau
- Đóng hết mọi cửa sổ Khách rồi mới rời máy
- Account quan trọng nên bật 2FA sẵn, lỡ lộ mật khẩu vẫn còn một lớp chặn

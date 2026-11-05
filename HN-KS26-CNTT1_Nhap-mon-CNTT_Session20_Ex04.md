# HN-KS26-CNTT1_Nhap-mon-CNTT_Session20_Ex04

## Phần 1. Bảng so sánh

| Tiêu chí | Chrome lưu mật khẩu | Bitwarden |
| --- | --- | --- |
| Khả năng chống Infostealer | Yếu: mật khẩu nằm trong file Login Data, chìa giải mã cũng nằm trên máy, mã độc kéo cả hai là mở được cả kho | Mạnh: vault mã hóa AES-256, chỉ mở khi gõ Master Password, mã độc lấy được file vault cũng chưa đủ chìa |
| Zero-Knowledge Architecture | Không theo mô hình này, dữ liệu sync gắn hẳn tài khoản Google | Chuẩn: mã hóa giải mã bên máy client, server chỉ giữ bản mã hóa, nhà cung cấp tự họ cũng không mở được két |
| Đồng bộ chéo nền tảng | Chỉ trong hệ sinh thái Chrome, ràng buộc tài khoản Google | App với extension cho mọi trình duyệt, máy tính với điện thoại đều có, sync qua đường mã hóa |

## Phần 2. Vì sao Bitwarden thắng dù tốn thao tác

Giá phải trả chỉ là vài lần gõ Master Password mỗi ngày, đổi lại là lớp bảo vệ khác cấp. Mật khẩu từng site do Generator sinh riêng biệt, một trang bị lộ không đổ domino sang trang khác, trong khi Chrome khiến nhân viên tái sử dụng mật khẩu, Infostealer kéo một file Login Data là cả công ty lộ hàng loạt. Kịch bản xấu nhất với Bitwarden là mã độc cài trong máy và nhân viên lỡ mở vault rồi đi khỏi chỗ, nhưng vault tự khóa sau vài phút, còn Chrome lưu mật khẩu là mở cửa 24/7 không cần chìa. Công ty còn cần kiểm soát tập trung, nhân viên nghỉ việc thì revoke quyền trong Bitwarden một phát là xong, mật khẩu nằm trong Chrome của từng máy phải rà từng cái một. Thao tác thêm một bước là tiền bảo hiểm rẻ nhất có thể mua.

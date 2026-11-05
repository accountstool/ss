# HN-KS26-CNTT1_Nhap-mon-CNTT_Session20_Ex01

## Phần 1. Ký tự lạ nằm ở đâu

Địa chỉ githúb.com có chữ u mang dấu sắc (ú), khác hẳn chữ u thường trong github.com. Mắt lướt nhanh thanh địa chỉ là thấy giống hệt github, nhưng máy đọc tên miền từng ký tự, ú với u là hai ký tự Unicode khác nhau nên đây là một tên miền hoàn toàn khác, không thuộc GitHub. Kiểu chơi chữ này tên Homograph attack, kẻ xấu lập tên miền gần giống rồi dựng trang đăng nhập y chang, mình gõ Master Password vào là nó thu trọn chìa của cả két sắt. Đoạn mã kiểm tra của bạn kia rơi bẫy đúng chỗ này, chỉ so sánh chuỗi sau khi bỏ dấu là githúb thành github, trang giả lọt qua đàng hoàng.

## Phần 2. Quy trình kiểm tra URL trước khi nhập Master Password

Bằng mắt thường:

1. Đọc chậm từng ký tự tên miền, không đọc lướt cả cụm, chú ý mấy dấu trên đầu chữ kiểu ú

2. Gõ github.com trực tiếp hoặc mở từ bookmark đã lưu, không bấm link trong email

3. Nhìn https với ổ khóa, nhưng chỉ coi là tham khảo, trang giả cũng mua được chứng chỉ

Công cụ hỗ trợ:

- Bitwarden tự điền là phao cứu sinh, tên miền lệch một dấu là vault nằm im không nhả mật khẩu
- Dán URL vào VirusTotal quét thử trước khi đăng nhập
- Tra whois xem tên miền đăng ký từ bao giờ, trang giả thường mới đăng ký vài ngày

# PayKX - Phần 3: xử lý lỗi #N/A
Trần Mạnh Hoa - HN-KS26-CNTT1

Lỗi #N/A xuất hiện khi VLOOKUP không tìm thấy mã khớp trong bảng nguồn (do đặt FALSE nên phải giống 100%). Đợt làm Phần 2 mình bị dính lỗi này do mã copy từ file ngân hàng sang bị dính khoảng trắng thừa.

Các bước mình đã xử lý:

Dùng hàm TRIM: Bọc TRIM(A5) để xóa khoảng trắng thừa ở đầu/cuối mã. Cách này fix được hầu hết các ô bị lỗi.=VLOOKUP(TRIM(A5),Tra_Cuu!$A$2:$B$26,2,FALSE)

Check mã gốc: Ctrl + F bên bảng Tra_Cuu xem mã có tồn tại không hoặc có bị nhập nhầm chữ O thành số 0 (GD0O5 vs GD005) hay không.

Đồng bộ định dạng: Quét cột mã ở 2 bên, dùng Format Cells đưa về cùng 1 kiểu (Text/General) vì số 123 khác chữ "123".

Soi lại công thức: Cố định vùng bằng $, chuẩn đối số FALSE (để TRUE dễ ra kết quả sai) và cột cần lấy dữ liệu nằm trong vùng quét.

Fix xong thì ô báo #N/A nhảy về tên đăng nhập chuẩn luôn. File Phần 2 mình đã lồng sẵn TRIM và đặt FALSE nên không còn ô nào bị dính lỗi này nữa.

Đã chuẩn vibe bài nộp sinh viên chưa bạn? Nếu cần chỉnh thêm gì cứ bảo mình:

Thu gọn nữa: Nén lại thành dạng bullet point siêu ngắn để làm slide/thuyết trình.

Tích hợp thêm hàm: Viết thêm mẫu IFERROR để ẩn hẳn lỗi đi nhìn cho mượt.

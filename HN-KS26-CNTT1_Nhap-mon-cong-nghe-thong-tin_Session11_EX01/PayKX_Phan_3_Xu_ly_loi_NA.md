# PayKX - Phần 3: xử lý lỗi #N/A

Trần Mạnh Hoa - HN-KS26-CNTT1

Lỗi #N/A là khi VLOOKUP quét hết bảng nguồn mà không tìm thấy giá trị nào khớp (mình để FALSE nên hàm bắt khớp chính xác 100% khác 1 ký tự là báo lỗi luôn). Mình gặp vụ này ngay lúc làm phần 2: mấy mã giao dịch copy từ báo cáo ngân hàng sang bị thừa dấu cách ở đầu/cuối, nhìn thì giống GD005 thật nhưng Excel lại bảo khác. Xử lý mình làm theo 4 bước:

1. Kiểm tra khoảng trắng thừa trước, thủ phạm hay gặp nhất. Bọc TRIM vào ô mã:

   `=VLOOKUP(TRIM(A5),Tra_Cuu!$A$2:$B$26,2,FALSE)`

   xong là hết 90% trường hợp luôn

2. Kiểm tra mã có tồn tại trong bảng nguồn không: Ctrl+F trong bảng Tra_Cuu, không ra là thiếu mã hoặc gõ nhầm (kiểu chữ O với số 0, GD0O5 với GD005 nhìn hệt nhau). Thiếu thì bổ sung vào bảng rồi tra lại

3. Kiểm tra kiểu dữ liệu: 123 dạng số vs "123" dạng chữ là 2 thứ khác nhau với Excel. Chọn cột mã cả 2 bên Format Cells về chung 1 kiểu là xong

4. Soi lại công thức lần cuối: vùng tra cứu có dấu $ chưa, đối số cuối có phải FALSE không (để TRUE là tra gần đúng, ra số sai còn nguy hơn #N/A), cột trả về (cột 2) có nằm trong vùng chọn không

Sửa xong bấm Enter là ô #N/A ra tên đăng nhập bình thường. File excel phần 2 mình làm sẵn cột TRIM + đối số FALSE rồi nên mở lên không còn ô nào báo #N/A.

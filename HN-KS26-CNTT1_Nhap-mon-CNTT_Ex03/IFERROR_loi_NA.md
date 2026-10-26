# FastMove - Phần 3: Gặp lỗi #N/A với mã vận đơn ký tự lạ, xử lý bằng IFERROR

Kéo công thức xuống 500 dòng xong mình quét mắt một lượt, thấy đúng 3 ô có vấn đề ở dòng 78, 129 và 235. Trước khi bọc IFERROR thì 3 ô đó báo #N/A, nhìn rợn cả người.

Mình dò từng mã: dòng 78 là `FM00O76`, chữ O thay cho số 0. Dòng 129 là `FM@0127`, dính dấu @ chắc ai gõ trượt tay. Dòng 235 là `FM00233 ` thừa một dấu cách ở cuối, loại này mắt thường nhìn không ra, phải bôi đen ô mới thấy có dấu cách nằm đó.

VLOOKUP điền `FALSE` là so khớp chính xác từng ký tự, nên mã lệch một ký tự là nó cộc lốc trả #N/A. Lỗi nằm ở dữ liệu đầu vào chứ công thức không sai gì cả, cái này mình mất kha khá thời gian mới chấp nhận.

Cách xử lý là bọc thêm một lớp IFERROR: `=IFERROR(VLOOKUP(A2,Bang_Gia_Cuoc!$A$2:$B$501,2,FALSE),"Không tìm thấy")`. Từ đó thay vì #N/A thì ô đó hiện chữ "Không tìm thấy", nhân viên kho nhìn phát là biết đơn nào phải mang ra quầy kiểm tra mã, màn hình không còn đỏ lửm lỗi.

Nói thật lòng thêm một câu: IFERROR chỉ che lỗi chứ không sửa được dữ liệu. Muốn hết hẳn thì phải sửa mã ở sheet nguồn, ví dụ xóa cái dấu cách thừa đi rồi để công thức tự tính lại. Mình sửa gì cũng thử trên bản copy trước rồi mới đụng bản chính, sợ hỏng 500 dòng của người ta lắm.

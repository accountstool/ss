# Session12_Ex02 - Phần 3: lọc theo tên không ra kết quả, xử lý bằng TRIM

Trần Mạnh Hoa - HN-KS26-CNTT1

Tình huống: bật AutoFilter (Ctrl+Shift+L), vào filter cột Họ và tên gõ đúng tên "Nguyễn Văn An" mà danh sách vẫn trống trơn, trong khi lăn xuống dưới vẫn thấy tên đó nằm chình ình trong bảng.

Nguyên nhân: tên trong ô có thừa dấu cách - dán từ file khác sang thì hay dính dấu cách ở đầu/cuối, gõ tay thì dính 2 dấu cách ở giữa. Nhìn bằng mắt thì y chang "Nguyễn Văn An", nhưng Excel so sánh chuỗi thì "Nguyễn Văn An " (thừa 1 dấu ở cuối) là một chuỗi khác hẳn "Nguyễn Văn An", nên điều kiện lọc không bao giờ khớp.

Xử lý bằng TRIM như sau:

1. Thêm 1 cột phụ ngay bên phải cột tên (ví dụ cột C), đánh công thức `=TRIM(B2)` rồi kéo xuống hết danh sách. TRIM cắt hết dấu cách thừa ở 2 đầu và rút gọn dấu cách dôi ở giữa còn đúng 1

2. Cần lọc gấp thì lọc luôn trên cột phụ này - tên nào trước đây lọc không ra giờ ra bình thường

3. Muốn trả dữ liệu về nguyên cột tên gốc: copy cột phụ, đứng tại cột tên cũ rồi Paste Special > Values, xong xóa cột phụ đi là cả cột sạch dấu cách thừa

4. Bật lại filter và lọc theo tên lần nữa là ra kết quả

Lưu ý nhỏ: trước khi lọc lại nhớ Clear filter cũ trước (Data > Clear) kẻo tưởng công cụ hỏng. Kinh nghiệm của mình là dữ liệu dán từ nguồn khác về thì chạy TRIM ngay từ đầu, đỡ phải đi tìm lỗi về sau.

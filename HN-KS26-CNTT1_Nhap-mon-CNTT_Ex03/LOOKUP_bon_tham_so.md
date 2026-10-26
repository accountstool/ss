# FastMove - Phần 1: 4 tham số của VLOOKUP qua mô hình nhân viên kho tra hồ sơ

Đề bài bắt ánh xạ 4 tham số của VLOOKUP vào hình ảnh một anh nhân viên kho đang giữ tủ hồ sơ, mình cứ theo hình đó mà giải thích luôn.

`lookup_value` là mã vận đơn in trên kiện mình đang cầm. Mình đưa phiếu cho anh kho và chỉ đưa đúng mã đó, không đưa thêm gì khác.

`table_array` là cái tủ hồ sơ, trong file là `Bang_Gia_Cuoc!$A$2:$B$501`. Dấu $ ở đây giống keo dán tủ vào sàn: kéo công thức xuống 500 dòng thì tủ vẫn đứng yên một chỗ. Lần đầu làm mình quên dấu $, kéo tới khoảng dòng 30 thì giá bắt đầu lộn xộn vì vùng dò tụt theo con trỏ, ngồi soát một lúc mới ngộ ra.

`col_index_num` là số ngăn trong tủ. Tủ này có 2 cột, giá cước để ở ngăn 2 nên điền `2`. Điền số khác là anh kho mở nhầm ngăn, đưa mình dữ liệu của cột khác.

`range_lookup` thì điền `0` hay `FALSE`, nghĩa là bắt khớp chính xác từng ký tự. Mã lệch một dấu cách cũng không được trả kết quả kiểu "gần giống", vì tra giá nhầm kiện còn phiền hơn là không có kết quả.

Công thức cuối mình nộp: `=IFERROR(VLOOKUP(A2,Bang_Gia_Cuoc!$A$2:$B$501,2,FALSE),"Không tìm thấy")`. Cái phần IFERROR bọc ngoài tại sao cần thì mình kể ở Phần 3.

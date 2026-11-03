# HN-KS26-CNTT1_Nhap-mon-CNTT_Session18_Ex06

## Phần 1. Soi Waterfall tìm nút thắt

Mở F12 tab Network, tick Disable cache rồi F5 để đo từ đầu, sắp xếp theo cột Time hoặc nhìn thẳng cột Waterfall, thanh nào dài nhất là thủ phạm. Portal này soi ra 2 nút thắt rõ: mấy tấm bản đồ lộ trình xuất PNG nguyên bản nặng chục MB chiếm gần hết chiều dài Waterfall, mạng khỏe mấy cũng phải kéo đủ chục MB mới xong, và một đám request tô đỏ 404 chính là link ảnh bản đồ bị đứt, server báo không tìm thấy nên shipper mới không bao giờ thấy bản đồ dù mạng vẫn khỏe. Hai lỗi đều không nằm ở đường truyền, file nặng cộng request chết thì trang vẫn 20 giây như thường.

## Phần 2. Quy trình 3 bước tối ưu

1. Sửa đứt link 404: lọc request theo Status 404 hoặc gõ .png vào ô filter, bấm từng con xem URL, path sai thì sửa lại link trong code, file thiếu thì upload đúng chỗ. Hết đám đỏ là bản đồ hiện lại ngay, shipper hết phàn nàn trước đã

2. Nén ảnh: xuất lại bản đồ từ PNG chục MB sang WebP hoặc JPEG, resize đúng bằng kích thước hiển thị chứ không để 4000px rồi co nhỏ, ảnh nào nằm dưới màn hình đầu thì thêm lazy-load. Chục MB kéo xuống còn vài trăm KB là Waterfall co ngắn thấy rõ

3. Bật Browser Cache cho tài nguyên tĩnh: cấu hình server trả header Cache-Control: max-age cho CSS, JS, ảnh, lần sau mở trang trình duyệt dùng bản nằm trên đĩa luôn, chỉ xin lại phần mới đổi. Làm xong reload, cột Size hiện disk cache với mã 304 là chạy đúng

**Chốt ràng buộc CSS/JS nạp 200 trước khi vẽ**

Lọc Network theo CSS với JS, soi cột Status, mấy file quan trọng của portal phải là 200 OK, dính 404 hay pending là Rendering Engine không có gì để tô, giao diện vỡ màu vỡ layout ngay. Nên sắp CSS/JS nạp lên trước, ảnh bản đồ để lazy-load sau cho trang hiện chữ đã rồi mới vẽ tiếp.

## Phần 3. 304 Not Modified là tín hiệu tốt

Reload lần 2 mà thấy 304 nghĩa là trình duyệt hỏi file còn mới không bằng cách kèm If-None-Match vào request, server đối chiếu xong thấy nội dung chưa đổi nên trả đúng cái dấu 304 không kèm nội dung. Tốt cho băng thông ở chỗ request vẫn đi lên nhưng chỉ về có vài trăm byte header, còn CSS, JS, ảnh nặng mấy trăm KB thì không bị kéo lại từ đầu mỗi lần F5, băng thông tiết kiệm gần trọn phần tài nguyên tĩnh. 304 cũng là bằng chứng bước 3 chạy đúng, server với trình duyệt đã bắt tay qua cache thành công. Nó không phải lỗi, dịch nôm na là hàng còn tốt, dùng bản cũ đi.

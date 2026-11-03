# HN-KS26-CNTT1_Nhap-mon-CNTT_Session18_Ex01

## Phần 1. DNS Lookup là gì

Khi Nam gõ tên miền, trình duyệt chạy luồng sau:

```
phong-dieu-phoi.greenlog.vn (Input: tên miền)
 → xem cache trình duyệt với cache máy đã lưu IP chưa
 → chưa có thì hỏi DNS Resolver của ISP (hoặc 8.8.8.8)
 → Resolver hỏi lần lượt Root Server, TLD .vn rồi DNS server của greenlog.vn
 → nhận về IP address của máy chủ (Output), lưu lại cache cho lần sau
 → trình duyệt cầm IP đi kết nối
```

Input là tên miền dễ nhớ cho người, Output là địa chỉ IP mới là thứ máy tính dùng để kết nối, DNS chính là cuốn danh bạ Internet chuyển tên thành số.

**Lỗi DNS khác 500 chỗ nào**

DNS_PROBE_FINISHED_NXDOMAIN nghĩa là cuốn danh bạ không tìm thấy tên nên không trả về được IP, request chưa hề chạm tới máy chủ nào cả, lỗi nằm phía client. Còn 500 Internal Server Error là request đã chạm server rồi mà server xử lý dính lỗi nội bộ, thuộc phía server. Vậy nên Nam khẳng định máy chủ sập nguồn là sai, vì server sập thì tên miền vẫn giải quyết ra IP bình thường, trình duyệt sẽ báo timeout chứ không báo NXDOMAIN.

Cái bẫy: Nam gõ grenlog.vn thiếu một chữ e, danh bạ tra không thấy cái tên đó tồn tại nên trả về NXDOMAIN. Chỉ sai một ký tự là cả tên miền thành một địa chỉ khác không tồn tại, không có IP để kết nối tới.

## Phần 2. Kiểm tra mã trạng thái HTTP

1. Gõ lại đúng phong-dieu-phoi.greenlog.vn rồi F12 mở tab Network

2. F5 tải lại trang, nhìn request đầu tiên ở cột Status

3. Có mã trả về kiểu 200, 301, 404, 500 là request đã chạm máy chủ vì server đã trả lời

4. Vẫn báo lỗi DNS hoặc request không có status là chưa chạm, vấn đề còn nằm ở khâu phân giải tên miền

## Phần 3. Sửa đúng tên miền mà vẫn nhận 404

404 nghĩa là DNS đã làm việc tốt, request đã chạm đúng máy chủ greenlog.vn, nhưng server không tìm thấy tài nguyên nào ở đường dẫn đó, tức là trang này không tồn tại hoặc đã bị dời địa chỉ, lỗi nằm ở phần tài nguyên chứ không phải mạng hay DNS. Nam nên kiểm tra lại đường dẫn trang quản trị xem có gõ sai path không rồi báo quản trị hệ thống mở lại quyền truy cập.

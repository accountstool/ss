# HN-KS26-CNTT1_Nhap-mon-CNTT_Session18_Ex02

## Phần 1. Cache với Cookies khác nhau ra sao

Cache là kho lớn chứa tài nguyên tĩnh như ảnh, CSS, JS, dung lượng tính bằng MB tới GB, nhưng nó chỉ giúp trang load nhanh chứ server không đọc được, nên không phải chỗ lưu dữ liệu người dùng. Cookies bé xoàng chỉ khoảng 4KB một cái nhưng trình duyệt tự động kèm theo mỗi request gửi lên server, nên chỉ đủ chỗ nhét một token định danh, còn giỏ hàng phụ tùng với thông tin shipper phải nằm trên server rồi tra qua token. Mà giỏ hàng trống với bị đăng xuất lại cũng vì cookie mất là server không nhận ra ai nữa, gán cho phiên khách mới. Nguyên nhân chính là hệ thống đang dùng Session Cookie, loại này không có thời hạn nên shipper đóng trình duyệt là nó tự biến mất. Đổi sang Persistent Cookie có Max-Age là cookie nằm trên ổ cứng, tắt mở lại vẫn còn đăng nhập nguyên phiên.

## Phần 2. Mẩu tin Cookie cần thiết lập

```
Set-Cookie: session_token=9f3a7c...; Max-Age=604800; Path=/; HttpOnly; Secure; SameSite=Lax
```

- session_token: chuỗi ngẫu nhiên do server sinh ra, không chứa tên hay số điện thoại gì hết
- Max-Age=604800 tức 7 ngày tính theo giây, có dòng này là thành Persistent Cookie
- HttpOnly: JavaScript phía client không đọc được cookie, khớp đúng ràng buộc của đề, chặn luôn kiểu XSS ăn trộm phiên
- Secure: cookie chỉ được gửi qua đường HTTPS, không cho bắt qua mạng thường
- SameSite=Lax: giảm thêm rủi ro CSRF từ site ngoài

## Phần 3. Hard Reload

Giao diện đổi mà màu cũ còn nằm nguyên là do bản CSS cũ vẫn nằm trong cache, bấm Ctrl+F5 để hard reload, trình duyệt bỏ qua cache kéo thẳng bản mới từ server về. Hoặc mở F12, tick Disable cache trong tab Network rồi F5 lại cũng xong.

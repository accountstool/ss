# HN-KS26-CNTT1_Nhap-mon-CNTT_Session17_BaiTongHop

## Phần A. Profile với Bookmark chuẩn Dev

Cookie github.com nằm chung một kho trong User Data của Profile, nên đăng nhập song song GitHub cá nhân với công ty trong cùng một Profile là cookie của tài khoản sau ghi đè tài khoản trước, máy cứ văng phiên này ra khi tài khoản kia vào, tranh nhau suốt ngày.

| Profile | Tên đặt | Mục đích sử dụng |
| --- | --- | --- |
| 1 | Personal | GitHub cá nhân, mạng xã hội, việc riêng |
| 2 | Company_Work | GitHub công ty, trang nội bộ, tool dự án |
| 3 | Sandbox/Test | thử link lạ, extension lạ, không đăng nhập gì quan trọng |

Bookmark chia 3 thư mục:

- 01_Company: GitHub công ty, trang nội bộ test.internal-tool.com
- 02_Reference: MDN Web Docs, Stack Overflow
- 03_Personal: GitHub cá nhân, Gmail

Đồng nghiệp mượn máy 5 phút thì cho mở Guest Profile, vì Guest tạm biệt hoàn toàn khỏi các profile có sẵn, không thấy cookie hay bookmark gì, tắt cửa sổ là tự dọn. Còn Incognito vẫn nằm trong profile của mình, autofill mật khẩu đã lưu vẫn chạy.

## Phần B. Chọn Extension

Link JSON thô thì cài JSON Viewer, thuộc nhóm Dev Suite vì nó là công cụ đọc dữ liệu API phục vụ debug đúng việc của dev. Productivity Suite kiểu ghi chú với quản lý công việc không đỡ được việc đọc JSON, Security Suite kiểu quản lý mật khẩu chặn quảng cáo cũng chẳng liên quan gì.

Quyền Site Access chọn On click theo nguyên tắc cấp quyền tối thiểu, extension chỉ chạy lúc mình bấm vào, không chạy ngầm trên mọi trang web.

## Phần C. Luồng HTTP Request

Gõ test.internal-tool.com rồi Enter chạy đủ 4 giai đoạn: trình duyệt tra DNS ra IP của server, thiết lập kết nối TCP/TLS, gửi HTTP Request rồi nhận HTTP Response, cuối cùng parse HTML CSS JS và render trang lên màn hình.

| Mã trạng thái | Ý nghĩa | Lỗi nằm ở đâu? | Hướng debug ban đầu |
| --- | --- | --- | --- |
| 404 Not Found | Server không tìm thấy tài nguyên | Chủ yếu phía client do sai đường dẫn | Soi lại URL trong Network xem request đang bấm sai endpoint nào, hỏi dev lấy route đúng |
| 500 Internal Server Error | Server gặp lỗi nội bộ khi xử lý | Phía server | Xem Response body trong Network rồi báo backend kèm request lỗi để họ soát log |

Xem mã trạng thái HTTP thì mở tab Network vì nó liệt kê từng request kèm status code. Elements chỉ soi DOM với CSS, Console chỉ hiện log lỗi JS, Application chỉ chứa storage như cookie với cache, đều không thấy từng request.

## Phần D. Cache và Cookies

CSS sửa rồi mà F5 vẫn giao diện cũ là do trình duyệt đang bám bản CSS cũ trong cache, F5 thường không xóa cache. Khắc phục bằng Ctrl+F5 hard refresh hoặc mở DevTools tick Disable cache rồi tải lại trang.

session_id không có dấu tích HttpOnly nghĩa là JavaScript đọc được cookie này, trang dính chèn script độc là phiên đăng nhập bị lấy trộm luôn, loại tấn công đó là XSS.

Muốn đăng xuất mà giữ nguyên cache ảnh CSS thì đừng Clear toàn bộ Browsing Data, vào DevTools tab Application mở Cookies, xóa riêng cookie của trang đó là phiên tắt còn cache nằm nguyên.

## Phần E. Inspect Element và Network

Chuột phải nút Đăng nhập chọn Inspect, trong Styles sửa thử giá trị background-color hoặc color tới khi ra đúng màu thiết kế, chụp màn hình với mã màu gửi mentor, không đụng vào file gốc dự án.

Request màu đỏ xử lý theo 4 bước: mở tab Network rồi F5 lại để bắt lại request, tìm đúng dòng đỏ bị lỗi, bấm vào xem Status với Headers với Response, từ đó kết luận lỗi thuộc 4xx hay 5xx rồi báo dev kèm bằng chứng.

Chỉ xem các lời gọi API thì bật bộ lọc Fetch/XHR, muốn dữ liệu là bản mới nhất không lấy từ bộ nhớ đệm thì tick Disable cache, hai thao tác này bật trong tab Network trước khi reload.

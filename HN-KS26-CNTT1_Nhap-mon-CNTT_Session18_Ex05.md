# HN-KS26-CNTT1_Nhap-mon-CNTT_Session18_Ex05

## Phần 1. JSON Viewer soi dữ liệu API thô

API của GreenLog trả dữ liệu GPS về dạng JSON thô, server nén hết vào một dòng nên mở lên chỉ là một cục ký tự dính vào nhau, tọa độ với tốc độ của mấy chục chiếc xe nằm lẫn vào nhau, mắt thường đọc kiểu gì cũng lòi mắt. Cài JSON Viewer xong thì copy response từ tab Network dán vào (hoặc bật tiện ích ngay trên URL của API), nó format lại thành cây, tô màu phân biệt key với value, gập mở từng nhánh được nên soi xe nào đang đứng, thiếu field nào là thấy liền. Kiểu này còn bắt được lỗi luôn: nếu dán vào mà viewer không format nổi, chứng tỏ server trả về thứ không phải JSON như trang lỗi HTML, tức là API dính lỗi chứ không phải dữ liệu bị xấu.

## Phần 2. Triển khai

**Danh sách 5 tiện ích phải có**

- JSON Viewer (Dev Suite): format dữ liệu JSON thô thành cây dễ đọc
- Wappalyzer (Dev Suite): soi server, framework nằm dưới một trang web
- ColorZilla (Productivity): chấm lấy mã màu bất kỳ chỗ nào trên trang
- Bitwarden (Security): kho mật khẩu, điền form đăng nhập tự động
- uBlock Origin (Security): chặn quảng cáo độc hại, nổi tiếng nhẹ, Chrome bản mới không còn bản gốc thì dùng bản Lite

**Ghim lên Toolbar**

Bấm icon mảnh ghim cạnh thanh địa chỉ, danh sách tiện ích bung ra, bấm cái ghim bên cạnh từng tên là icon dính luôn lên toolbar. Quy tắc là chỉ ghim 5 cái trên, tiện ích nào ít dùng cho nằm trong menu mảnh ghim cho thanh gọn gàng.

**Phân quyền Site Access (On click)**

Vào chrome://extensions, bấm Chi tiết của từng tiện ích, kéo xuống phần Quyền truy cập trang (Site access) chọn Bằng cách nhấp chuột (On click). Lợi là tiện ích chỉ được đọc dữ liệu trang đúng lúc mình bấm icon, dữ liệu GPS với account trong trang điều phối không bị soi tự động, đồng thời nó cũng không chạy ngầm ăn RAM cả ngày.

## Phần 3. Bị lag thì check thử chrome://extensions

Mở chrome://extensions, bật Chế độ dành cho nhà phát triển, từng thẻ tiện ích sẽ hiện link service worker, bấm vào là soi được phần nó đang chạy ngầm. Muốn có số liệu nhanh thì bấm Shift+Esc mở Task Manager của Chrome, kéo cột Bộ nhớ sắp giảm dần, tiện ích nào ăn nhiều nhất tự hiện đầu bảng. Xử lý theo thứ tự: tắt tạm toggle của cái không cần thiết, đổi quyền về On click cho mấy con đang chạy ngầm, con nào nặng quá thì gỡ đi tìm bản nhẹ hơn thay thế. Bộ 5 ở trên chọn toàn loại bấm mới hoạt động hoặc chạy nền siêu nhẹ như uBlock, nên tổng RAM không đáng kể, biểu đồ Waterfall của hệ thống điều phối nạp thoải mái không kẹt.

# HN-KS26-CNTT1_Nhap-mon-CNTT_Session15_Ex02

Bài làm Session 15 Ex02: dự án JavaScript bật sync là treo vì node_modules, bài này thiết kế lại cách đồng bộ giữa laptop với cloud.

## Phần 1. Luồng dữ liệu từ lúc nhấn Ctrl+S đến khi có tích xanh

Lấy ví dụ file src/app.js nằm trong thư mục dự án đã đưa vào vùng đồng bộ OneDrive:

1. Nhấn Ctrl+S thì VS Code ghi bản mới xuống SSD, bản mới nhất lúc này đã nằm trên máy rồi vì ghi ổ local nên không thấy chậm gì

2. OneDrive thấy file thay đổi là đưa vào hàng đợi upload, biểu tượng file đổi thành vòng xoay

3. File được chia nhỏ nén lại rồi upload ngầm lên cloud, VS Code vẫn chạy bình thường mình code tiếp file khác không sao

4. Bên cloud ghép các phần lại thành bản mới và lưu vào version history, tức là mỗi lần sync là được thêm một điểm khôi phục luôn

5. Client nhận được xác nhận từ server thì biểu tượng đổi thành tích xanh, lúc này bản trên máy với bản trên cloud đã giống nhau

6. Đang upload mà rớt mạng thì nó tự thử lại sau, bản mới cũng hiện luôn trên máy mấy thành viên khác trong nhóm

node_modules không nằm trong vùng sync nên cả luồng trên chẳng bao giờ phải đụng tới nó, sync khỏi treo.

## Phần 2. Bố trí để chạy nhanh trên SSD mà vẫn an toàn trên cloud

Chỉ những thứ tự tay làm ra mới đưa vào vùng sync là src, public, package.json, tài liệu và hình ảnh. Còn node_modules tuy nằm trong dự án nhưng nó là thứ npm install sinh ra cài lại được bất cứ lúc nào nên không đưa vào sync.

node_modules chính là cái bẫy của bài này: cài vài thư viện là nó phình ra hơn 10.000 file nhỏ nặng vài trăm MB, client phải quét từng file rồi upload từng chút một nên treo luôn, cloud lại đầy. Mà sync nó cũng chẳng có tác dụng gì vì cái máy nào cũng tự cài lại được.

Cách loại nó khỏi sync mà source vẫn được bảo vệ là dùng junction, chạy một lần duy nhất:

```
mklink /J "C:\Users\Tuan Minh PC\OneDrive\StartupProject\Code\startup-app\node_modules" "D:\NodeCache\startup-app"
```

Sau lệnh này trong dự án vẫn thấy node_modules như bình thường nhưng đó chỉ là cái link thôi, file thật nằm ở D:\NodeCache tức là ngoài vùng sync rồi. npm install ghi vào đó qua link nên npm chạy bình thường, còn OneDrive gặp link thì bỏ qua không quét không upload. Source code vẫn nằm nguyên trong vùng sync nên lỡ xóa nhầm thì còn version history lấy lại.

Máy mới tinh chưa có node_modules cũng không thành vấn đề vì package.json luôn nằm trên cloud, mở terminal gõ npm install là thư viện cài lại đủ trong vài phút.

## Phần 3. Thư mục cloud sắp xếp thế nào cho gọn

```
OneDrive
└── StartupProject
    ├── Code
    │   └── startup-app        (src, public, package.json, README)
    ├── Docs                   (kế hoạch, biên bản họp, báo cáo)
    ├── Assets                 (logo, ảnh sản phẩm, mockup, video)
    └── Share                  (bản gửi khách hàng, đối tác)
```

Code là nơi duy nhất chứa code nên để chế độ "Luôn giữ trên thiết bị này", không thì code offline bị giật lúc mở file. Docs toàn file nhỏ nên để sync bình thường chẳng tốn bao nhiêu. Assets nặng nhất mà lâu lâu mới mở lại nên để chế độ online-only của Files On-Demand: chuột phải chọn "Giải phóng dung lượng" là file vẫn hiện như thường nhưng bấm vào mới tải về, vài GB logo với video từ đó không nằm sẵn trên ổ laptop nữa. Share để riêng các bản đã gửi khách khỏi lẫn với bản nội bộ, muốn gửi thì share link quyền Viewer.

Nhóm dùng Google Drive thì cũng tương tự vì Drive for desktop có chế độ streaming giống Files On-Demand.

Tóm lại là ổ laptop chỉ cần chứa code đang làm với docs mới, phần nặng nằm trên cloud, cần cái nào thì tải cái đó.

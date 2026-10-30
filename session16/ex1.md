 
## Phần 1. BÁO CÁO PHÂN TÍCH 

### 1. Luồng dữ liệu & Xử lý bẫy/xung đột

flowchart LR
    A[Ctrl + S] --> B(Lưu vào Folder Sync)
    B --> C{Sync Engine}
    C --> D(Phát Hiện Thay Đổi)
    D -->|No Internet| E[Local Cache]
    D -->|Internet| F[Block Level Sync]
    F -->G(Cloud Storage)
    G -->H([Tạo Version History])
  
* Xử lý xung đột phiên bản: Khi 2 người cùng sửa offline rồi sync, hệ thống áp dụng cơ chế Forking để không ghi đè file, tự động tạo bản sao xung đột có chứa tên người dùng và ngày giờ. Trưởng nhóm hoặc Designer sẽ mở đối chiếu và chốt bản chuẩn.

### 2. Phương án khôi phục bằng Version History
1. Mở giao diện Web hoặc App Cloud, click chuột phải vào file 3D bị hỏng hoặc lỗi.
2. Chọn Version History, lọc danh sách phiên bản theo mốc thời gian trước khi xảy ra sự cố.
3. Bấm Restore để đưa bản ổn định về làm bản chính.



## Phần 2. QUY TRÌNH THỰC THI 

1. Bước 1 : Cài Google Drive hoặc OneDrive, tạo thư mục dự án trong thư mục Cloud và chọn chế độ Mirror Files để luôn có 1 bản Offline trên SSD.
2. Bước 2 : Trỏ thư mục Auto-Save hoặc Backup của phần mềm 3D như Blender, 3ds Max, Photoshop về thư mục con trong Cloud.
3. Bước 3 : Đặt tên file theo chuẩn TenHienVat_GiaiDoan_PhienBan.ext, sau đó bấm Ctrl + S và kiểm tra bản ghi trên Cloud trước khi giao nộp.

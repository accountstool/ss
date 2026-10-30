## Phần 1
- Tạo bản thiết kế phân quyền. 

|STT| Đối tượng | Quyền
|--|--|--|
| 1 | Admin | Owner |
| 2 | Hr| Editing |
| 3 | Trưởng các bộ phận | Comments|
| 4 | Nhân viên | Viewer |
| 5 | Ứng viên | No Access |

- Quy tắc cờ đỏ :
- 1. Tắt "Editors can change permissions and share"
- 2. Tắt "Viewers and commenters can see the option to download, print, and copy"
- 3. Bật liên kết chung thành

## Phần 2
Kịch bản xử lý sự cố: Quy trình 3 bước xử lý khi phát hiện dữ liệu bị chia sẻ sai quyền.

1. Thu hồi quyền hạn ngay sau khi phát hiện sự cố
2. Tiến hành kiểm tra rà soát xem dữ liệu có bị thay đổi hay lấy hay chưa
3. Bật lại chế độ "Đề xuất", cấp lại đúng quyền cho các bộ phận

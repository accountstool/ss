#  SmartCampus

app di động hỗ trợ sv ptit tra cứu lịch học phòng trống với nhận **thông báo mới nhất** từ *nhà trường*

## Tính năng nổi bật
- Tra cứu lịch học theo mã sv
  - Cập nhật dữ liệu thời gian thực từ hệ thống
- Xem danh sách phòng trống theo tòa nhà

## Thông tin CLB & Dự án
- Trang chủ CLB: [CLB Lập trình PTIT](https://clblaptrinh.ptit.edu.vn)
- Logo dự án:
![SmartCampus Logo](https://raw.githubusercontent.com/clb-lap-trinh/smartcampus/main/assets/logo.png)

>  **CẢNH BÁO:** dự án đang phát triển nên chưa dùng cho mục đích chính thức nha

---

##  Hướng dẫn cài đặt & Kỹ thuật

Cài đặt với chạy dự án bằng mấy lệnh này:

```bash
git clone https://github.com/clb-lap-trinh/smartcampus.git
npm install
npm start
```

### Tiến độ tính năng
- [x] Tra cứu lịch học theo mã sinh viên
- [x] Xem danh sách phòng trống theo tòa nhà
- [ ] Thông báo đẩy (push notification)
- [ ] Đăng nhập bằng tài khoản trường

### Bảng thư viện sử dụng

| Thư viện | Phiên bản | Mục đích |
| :--- | :---: | :--- |
| React Native | 0.74 | Xây giao diện đa nền tảng iOS/Android |
| Axios | 1.6 | Gọi API lấy dữ liệu lịch học |

### Ghi chú cú pháp
mấy ký tự đặc biệt như \* với \# muốn hiện nguyên văn thì phải thêm dấu `\` đằng trước để escape

---

##  Ghi chú ôn tập (Phần 4 - Bẫy cú pháp)

### 1. Chỉ ra 2 lỗi cú pháp trong đoạn code mẫu
- **Lỗi 1 ở phần Bảng (Table):** thiếu mất dòng phân cách tiêu đề `| --- | --- |` ngay dưới hàng tiêu đề (`| Tính năng | Trạng thái |`) làm parser không nhận ra bảng
- **Lỗi 2 ở phần Task List:** dấu gạch ngang bị viết dính liền ngoặc vuông (`-[x]` với `-[ ]`) chứ đúng ra phải có khoảng trắng sau dấu gạch ngang mới hiện đúng (`- [x]` với `- [ ]`)

### 2. Đoạn Markdown đã sửa chuẩn
```
| Tính năng | Trạng thái |
| :--- | :--- |
| Tra cứu lịch học | Xong |
| Push notification | Đang làm |

- [x] Tra cứu lịch học
- [ ] Push notification
```
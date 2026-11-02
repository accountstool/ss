# HN-KS26-CNTT1_Nhap-mon-CNTT_Session17_Ex09

## Phần 1. Vì sao dùng chung một Profile là văng phiên đăng nhập

Cookie đăng nhập của Chrome nằm gọn trong một thư mục User Data duy nhất của Profile đang mở, cả trạm dùng chung một cửa sổ nghĩa là ba người xài chung một kho cookie. Bác sĩ đang đăng nhập CarePulse kê đơn cho bệnh nhân A thì thực tập sinh đăng nhập tài khoản khác của cùng hệ thống ở tab bên cạnh, cookie mới ghi đè mất cookie cũ nên phiên của bác sĩ sập ngay giữa ca khám. Chữa dứt điểm là mỗi mục đích một Profile, mỗi Profile một thư mục User Data riêng thì cookie với history không bao giờ đụng nhau.

Ba Profile đặt ra cho máy trạm:

- Work (theme xanh dương): ca khám chính thức, chỉ đăng nhập CarePulse với cổng BHYT, cài extension phục vụ công việc
- Personal (theme tím): cổng học tập PTIT, GitHub, email cá nhân, không đụng vào phiên Work
- Sandbox/Test (theme đỏ): sinh viên thực tập mở link lạ thử extension lạ, không đăng nhập gì quan trọng, hỏng thì xóa dựng lại

Ba thằng này cookies, history, bookmarks, extensions tách biệt hoàn toàn nên hết hẳn chuyện văng phiên.

## Phần 2. Bookmark với quy tắc an toàn

Cây thư mục dựng trong Bookmark Manager (Ctrl+Shift+O):

```
01_CarePulse_Clinic
├─ Hồ sơ điện tử CarePulse
├─ Lịch trực phân ca khoa
└─ Cổng báo cáo tuyến trên
02_Pharma_Portal
├─ Tra cứu Dược thư Quốc gia
├─ Cổng BHYT tra cứu mã thuốc
└─ Danh mục thuốc BHYT
03_Medical_Tools
├─ Google Dịch hồ sơ bệnh án
├─ Máy tính liều lượng, BMI
└─ Kiểm tra tương tác thuốc
```

Mẹo Favicon-Only: chuột phải từng trang CarePulse, Cổng BHYT, Dược thư, Google Dịch trên thanh dấu trang, chọn Sửa rồi xóa trắng ô tên là chỉ còn icon. Bốn icon rộng đúng bằng một link có tên nên thanh gọn gấp 3, nhét 30 link chia 3 thư mục vẫn không tràn màn hình.

Khách thanh tra mượn máy 30 phút thì mở Guest Profile chứ không phải Incognito, vì Guest là profile tạm đứng ngoài hẳn Work với Personal, khách không đụng được cookie, history, bookmark, tắt cửa sổ là tự dọn sạch. Bật Incognito thì khách vẫn nằm trong profile của nhân viên, autofill mật khẩu đã lưu vẫn chạy, lỡ tay mở cửa sổ thường là lộ nguyên ca bệnh đang mở. Tuyệt đối không bật Cloud Sync tài khoản cá nhân trên máy này, bật là mật khẩu với lịch sử Shopee Facebook kéo về máy phòng khám, ai mượn máy cũng soi được, mà mất mạng thì sync đứt giữa đường dữ liệu còn dễ lỗi nữa.

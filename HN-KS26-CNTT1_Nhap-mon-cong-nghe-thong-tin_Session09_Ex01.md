Phần 1

Sai lầm 1: Xem file .docx như một định dạng lưu trữ tài liệu mã nguồn/dự án
- File .docx thực chất là một tệp nén chứa nhiều file XML, style, hình ảnh và metadata định dạng bên trong
- Do đó Git không thể đọc trực tiếp nội dung bên trong, dẫn đến việc không thể hiển thị bản xem trước trực tiếp trên giao diện web GitHub.
- 
Sai lầm 2: Nhầm lẫn giữa khả năng định dạng và tính chuyên nghiệp trong quản lý dự án
- Nam cho rằng Markdown chỉ là văn bản thô nên không chuyên nghiệp.
- Trong phát triển phần mềm, tính chuyên nghiệp nằm ở khả năng tương thích, dễ đọc, đọc được trên mọi nền tảng và dễ quản lý phiên bản 



Phần 2   

# Dự Án Quản Lý Bán Hàng Trực Tuyến

## 1. Giới thiệu dự án
Dự án được xây dựng nhằm mục đích cung cấp giải pháp bán hàng tối ưu, nhanh chóng và an toàn cho người dùng. Hệ thống hỗ trợ đa nền tảng và tích hợp nhiều phương thức thanh toán.

## 2. Các tính năng chính
- **Quản lý sản phẩm**: Thêm, sửa, xóa và tìm kiếm sản phẩm dễ dàng.
- **Giỏ hàng & Thanh toán**: Tích hợp thanh toán trực tuyến qua VNPAY, QRPay.
- **Quản lý người dùng**: Phân quyền chi tiết cho Admin và Customer.

## 3. Công nghệ sử dụng
| Thành phần | Công nghệ |
| :--- | :--- |
| **Frontend** | ReactJS, Tailwind CSS |
| **Backend** | Node.js, Express.js |
| **Database** | MongoDB |

> *Ghi chú: Tài liệu được soạn thảo bằng ngôn ngữ Markdown  chuyển từ word sang.*

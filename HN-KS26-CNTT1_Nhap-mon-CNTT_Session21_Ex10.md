# HN-KS26-CNTT1_Nhap-mon-CNTT_Session21_Ex10

## Phần 1. Bảng so sánh Trade-off

VoltCharge phình từ 10 lên 100 trạm mà cách sửa lỗi vẫn kiểu gọi cầu cứu, Trade-off là được cái này mất cái kia, mình so hai phương án theo bốn tiêu chí của đề.

| Tiêu chí | Phương án 1: Hỗ trợ Cảm tính / Nhóm Chat | Phương án 2: Troubleshooting 4 Chặng |
| --- | --- | --- |
| Thời gian xử lý sự cố (Downtime) | Kéo dài, trạm nằm chờ Senior bên tổng bộ rảnh điện thoại trả lời | Rút ngắn hẳn, KTV tự xử tại chỗ trong 5-10 phút đầu |
| Áp lực và chi phí cho Senior Devs | Rất cao, gián đoạn liên tục bởi câu hỏi lỗi cơ bản lặp lại, mất thời gian code tính năng mới | Tối ưu, Senior chỉ tiếp nhận ca khó kèm Bug Report chuẩn |
| Năng lực và tính tự chủ của KTV | Thụ động, nhìn thông báo tiếng Anh là sợ, không tiến bộ nghề nghiệp | Chủ động, tư duy phân tích sắc bén, làm chủ trọn vẹn máy trạm |
| Lưu vết tri thức (Knowledge Base) | Thất thoát, tin nhắn trôi đáy nhóm Zalo, người sau gặp lỗi cũ vẫn hỏi lại | Lưu tập trung, ca khó thành bài Wiki nội bộ, tra lại phát ăn ngay |

**Vì sao lên 1,000 trạm thì bắt buộc Phương án 2:** Phương án 1 sống nhờ vài ông Senior gánh, lên 1000 trạm là gánh không nổi. Tính theo giá downtime của đề, trạm nằm chết 500000 đồng mỗi giờ, chỉ cần một đợt sự cố khiến trạm chờ tổng bộ 2 tiếng là đốt 1 tỷ, chưa kể khách xe điện hết chỗ sạc là bỏ luôn thương hiệu. Tuyển thêm Senior thì lương đắt hơn xa việc dạy KTV tự gỡ. Đến bẫy phụ thuộc, KTV không rèn thì thành thợ bấm máy thụ động, mất mạng nội bộ là cả nghìn trạm tê liệt. Phương án 2 thì năng lực nằm ở quy trình và Wiki chứ không nằm ở vài cá nhân, thêm trạm là quy trình tự nhân bản, Senior khỏi trả lời lại lỗi cũ vì mọi thứ đã trên tài liệu.

## Phần 2. Sơ đồ luồng ra quyết định gỡ lỗi

Kiosk bật Error Pop-up, KTV đi theo luồng:

**Chặng 1 - Bóc tách và Googling (phút 0-2):** chép nguyên văn thông báo lỗi, lọc bỏ số hiệu file dòng, giữ mã lỗi chính rồi gõ Google với toán tử: `site:stackoverflow.com` để khoanh vùng StackOverflow, `"ten loi"` ngoặc kép khóa nguyên cụm, `-tu_khoa` dấu trừ loại trang rác
- Có bài ăn khớp -> Chặng 2
- Không -> Chặng 3

**Chặng 2 - Thẩm định StackOverflow/GitHub (phút 2-5):** đọc lướt 30 giây, nhìn Tích xanh với Upvote cao trước, xem ngày đăng không quá cũ với phiên bản đang chạy, lướt comment cuối xác nhận cách đó còn sống
- Có cách sửa khả thi -> áp dụng tại chỗ rồi đóng ca
- Không -> Chặng 3

**Chặng 3 - Hỏi AI (phút 5-12):** gửi prompt 3 thành phần, Ngữ cảnh đang làm gì, Mã lỗi nguyên văn, Yêu cầu giải thích tiếng Việt kèm cách sửa từng bước
- Thử tối đa 2 giải pháp AI đưa, được -> đóng ca
- Vẫn hỏng -> Chặng 4

**Chặng 4 - Bug Report lên cấp 2 (sau phút 15):** điền phiếu 4 bước gồm lỗi gì, tái hiện thế nào, đã thử gì, mong đợi gì, kèm ảnh màn hình gửi IT Helpdesk, lúc chờ chuyển trạm sang trạng thái an toàn

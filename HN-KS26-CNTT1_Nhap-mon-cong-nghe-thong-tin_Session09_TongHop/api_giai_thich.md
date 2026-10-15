# TÀI LIỆU TRA CỨU THUẬT NGỮ API

## 1. Prompt hỏi AI (Công thức 3 phần)

## Tôi là ai / Bối cảnh
tôi là sinh viên năm nhất ptit mới vào nhóm dự án SmartCampus chưa biết gì về backend

## Chủ đề / Nội dung cần xử lý
giải thích khái niệm api

## Yêu cầu
- so sánh bằng hình ảnh đời thường kiểu như bồi bàn trong nhà hàng
- giải thích ngắn gọn tầm dưới 150 từ thôi
- cho 1 ví dụ thực tế liên quan tới app SmartCampus

## Không cần
- định nghĩa lý thuyết suông với thuật ngữ kỹ thuật khó hiểu
- không cần viết code minh họa

---

## 2. Tóm tắt câu trả lời của AI (Chiến lược đọc 3 bước)

- api nó giống như anh bồi bàn nhận order từ khách (app) chuyển xuống bếp (server) rồi bê đồ ăn (dữ liệu) quay lại
- đóng vai trò làm cầu nối trung gian giúp 2 hệ thống trao đổi thông tin với nhau an toàn
- ví dụ app SmartCampus gửi mã sv qua api để lấy lịch học từ server ptit về hiện lên màn hình

---

## 3. Nội dung phản hồi chi tiết từ AI

api hiểu đơn giản giống như bồi bàn trong nhà hàng. bạn (app) ngồi ở bàn xem menu rồi gọi món, bồi bàn chuyển yêu cầu đó xuống bếp (máy chủ) rồi bê món ăn (dữ liệu) lên cho bạn. api chính là cầu nối trung gian giúp app di động với máy chủ nói chuyện được với nhau mà không cần quan tâm bên trong chạy thế nào.

**Ví dụ thực tế:**
lúc mở app SmartCampus bấm xem lịch học thì app sẽ gửi yêu cầu qua api tới máy chủ ptit. máy chủ nhận được sẽ lọc dữ liệu rồi gửi lịch học tương ứng về hiện lên màn hình điện thoại.
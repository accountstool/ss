# HN-KS26-CNTT1_Nhap-mon-CNTT_Session21_Ex04

## Phần 1. Bảng so sánh

Nhóm đang dính lỗi xung đột cổng (Port conflict, tức hai chương trình cùng giành một cổng nên có bên không chạy được), người thì đòi Google, người thì đòi hỏi AI, mình chấm theo bốn tiêu chí của đề.

| Tiêu chí | Google Search | AI Assistant |
| --- | --- | --- |
| Độ chính xác | Ưu: dẫn về bài StackOverflow thật, code người dùng đã chạy được, có vote kiểm chứng sẵn. Nhược: phải tự đọc tự lọc | Ưu: đọc đúng mã lỗi của nhóm nên trả lời thường trúng bài. Nhược: nói chắc chắn vậy chứ vẫn lẫn câu sai |
| Tính cập nhật | Ưu: quét web liên tục, soi được tài liệu mới nhất. Nhược: bài lên top thường cũ vài năm | Nhược: kiến thức dừng ở một mốc, phiên bản mới ra sau là không biết. Ưu: loại có lướt web thì bù được phần nào |
| Khả năng giải thích | Nhược: bài viết cho số đông, dài và mặc định người đọc hiểu sẵn | Ưu: giải tới đâu hiểu tới đó, nhờ dịch luôn mã lỗi sang tiếng đời thường |
| Rủi ro (Hallucination) | Ưu: gần như không bịa, đáp án nào cũng có nguồn thật để đối chiếu | Nhược: điểm yếu chí mạng, Hallucination là chuyện AI bịa lệnh hay tên thư viện nghe hợp lý mà thật ra không tồn tại, nói lại chắc nịch nên người mới khó nghi ngờ |

## Phần 2. Trường hợp bắt buộc dùng Google Search

Cách xử lý nào đụng chạm thật vào máy thì bắt buộc phải Google: xoá file, tắt tiến trình, gỡ phần mềm, sửa cấu hình hệ điều hành, đại loại mọi lệnh gõ xong là hết cửa hoàn tác. Lấy đúng bài toán Port conflict, cách chữa quen thuộc là xem tiến trình nào chiếm cổng rồi kill nó, lỡ AI bịa lệnh kill sai số hiệu là tắt nhầm tiến trình hệ thống, hỏng thật luôn. Bài StackOverflow thì có người comment cảnh báo nguy hiểm ngay dưới đáp án, kèm vote kiểm chứng sẵn, còn AI nói hay vậy mà không chịu trách nhiệm khi mình làm hỏng. Nên mình chốt: hiểu lỗi thì hỏi AI cho nhanh, lệnh nào đụng vào máy thật thì phải Google đọc nguồn chính thức rồi hẳn gõ.

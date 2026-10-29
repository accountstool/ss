# HN-KS26-CNTT1_Nhap-mon-CNTT_Session15_Ex09

Bài làm Session 15 Ex09: thiết kế lại hệ thống lưu trữ Google Drive cho dự án CampusPay sau sự cố rò rỉ dữ liệu, phân quyền theo nguyên tắc tối thiểu quyền.

## Phần 1. Phân tích bài toán

**Đầu vào:**

- 4 nhóm người dùng: ban Kỹ thuật 3 người, ban Thiết kế 2 người, ban Kinh doanh 2 người và 1 nhà đầu tư bên ngoài
- 5 loại tài liệu cần quản lý: mã nguồn với API doc kèm API keys, tài sản thiết kế, Business Plan, Slide Pitch và bản PDF xuất ra, thông tin khách hàng với đối tác
- 5 nguyên tắc phải giữ: mỗi người chỉ thấy đúng phần việc của mình, tài liệu nhạy cảm chỉ Restricted không Anyone with link, tài liệu làm chung share chéo nhưng kiểm soát được quyền sửa, tài liệu quan trọng có Version History 30 ngày, quyền nhà đầu tư tự hết hạn sau 14 ngày

**Đầu ra mong đợi:**

- Cấu trúc thư mục Drive 2 cấp mà ai nhìn vào cũng biết cái gì nằm ở đâu
- Bảng phân quyền 5 loại tài liệu x 4 vai trò
- Quy trình lập hệ thống từ đầu kèm cách kiểm tra và thu hồi quyền

**Cấu trúc thư mục 2 cấp:**

Cấp 1 là thư mục gốc CampusPay do trưởng nhóm làm owner. Cấp 2 gồm 5 thư mục con:

- KyThuat: mã nguồn, API doc, file chứa API keys, chỉ ban Kỹ thuật vào
- ThietKe: mockup, logo, banner, chỉ ban Thiết kế vào
- KinhDoanh: Business Plan và thông tin khách hàng đối tác, chỉ ban Kinh doanh vào
- TongHop: Slide Pitch với business summary, mấy ban làm chung
- GuiNhaDauTu: bản PDF pitch xuất ra cho nhà đầu tư, quyền có hạn

Share quyền ở cấp thư mục chứ không share từng file lẻ, vậy là thu hồi một chỗ là cả cây tài liệu mất quyền theo, lúc có người nghỉ việc khỏi đi gỡ từng file. Toàn bộ nằm trên Drive nên tài liệu nào cũng tự có Version History 30 ngày, chỉ cần cả nhóm làm việc thẳng trên file Drive chứ đừng tải về gửi qua Zalo.

**Các bước lập hệ thống:**

- Bước 1. Tạo thư mục gốc CampusPay rồi tạo đủ 5 thư mục con, đặt tên không dấu cho khỏi lỗi font lúc share
- Bước 2. Share từng thư mục con theo email đúng người: KyThuat cho 3 bạn KT quyền Editor, ThietKe cho 2 bạn TK Editor, KinhDoanh cho 2 bạn KD Editor, TongHop cho KD với TK Editor và KT Viewer
- Bước 3. Vào từng thư mục chỉnh setting: tắt "Editors can change permissions and share" để chỉ trưởng nhóm mới mời thêm người được, file nhạy cảm để Restricted không bật Anyone with link
- Bước 4. Share GuiNhaDauTu cho email nhà đầu tư quyền Viewer và đặt Access expiration 14 ngày
- Bước 5. Test bằng tài khoản thật của từng ban xem thấy đúng phạm vi không, tìm thử file API keys bằng ô search từ tài khoản ban khác mà không ra mới đạt
- Bước 6. Sau này có ai rời nhóm thì gỡ email khỏi thư mục, cuối tháng trưởng nhóm rà lại danh sách người được share một lần

## Phần 2. Triển khai và chống lỗi

**Bảng phân quyền** (Viewer chỉ đọc, Commenter đọc với góp ý, Editor sửa được):

| Loại tài liệu | Ban KT | Ban TK | Ban KD | Nhà đầu tư | Ghi chú bảo mật |
|---|---|---|---|---|---|
| Mã nguồn, API doc, API keys | Editor | Viewer | Không | Không | API keys để file riêng chỉ KT thấy, Restricted |
| Tài sản thiết kế (mockup, logo) | Commenter | Editor | Viewer | Không | Restricted, KD chỉ xem để lấy hình làm slide |
| Business Plan | Viewer | Không | Editor | Viewer | Tài liệu mật, share đúng email, Restricted |
| Slide Pitch | Viewer | Editor | Editor | Viewer (bản PDF) | pptx gốc không share cho nhà đầu tư, chỉ cho bản PDF |
| Thông tin khách hàng, đối tác | Không | Không | Editor | Không | Nhạy cảm nhất, Restricted, cấm Anyone with link |

**Ba bẫy dữ liệu:**

Bẫy 1: cấp Viewer kèm phạm vi Restricted cho ban Kỹ thuật. Lý do là KT chỉ cần đọc hiểu context để viết code, Viewer là quyền thấp nhất còn đủ dùng rồi và không sửa được nội dung, đúng ý ban KD. Lỡ sau này muốn KT góp ý thẳng vào tài liệu thì nâng lên Commenter chứ không nhảy cóc lên Editor.

Bẫy 2: nhà đầu tư chỉ nhận bản PDF xuất từ slide, cấp Viewer và vẫn giữ tính năng download trên file PDF vì không tắt thì anh ấy không tải được về thuyết trình offline, mà PDF tải về cũng chẳng sửa được nội dung như pptx. Cái cần khóa là file pptx gốc: không share cho nhà đầu tư luôn là sạch nhất, lỡ có phải share thì tắt "Viewers and commenters can see the option to download, print, or copy".

Bẫy 3: đầu tiên chuyển owner các file quan trọng về trưởng nhóm nếu người đó đang giữ, sau đó gỡ email người đó khỏi các thư mục đã share, vì từ đầu share theo thư mục nên gỡ ở thư mục cha là cả cây tài liệu mất quyền ngay. Nếu nhóm có dùng tài khoản chung thì đổi mật khẩu luôn, còn công ty dùng Google Workspace thì vào Admin Console vô hiệu hóa tài khoản là chặn một phát sạch. Xong rà lại tab Shared xem còn file nào lẻ bị share sót cho email đó không.

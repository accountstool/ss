# HN-KS26-CNTT1_Nhap-mon-CNTT_Session20_Ex02

## Phần 1. Domino chạy thế nào

Diễn đàn nhỏ bị hack, danh sách tài khoản kèm mật khẩu 123456 rò ra ngoài. Kẻ xấu không đứng yên ở diễn đàn đó, cầm cặp email với mật khẩu này bắn vào Gmail, Facebook, GitHub bằng công cụ tự động, mỗi phát là một khung đăng nhập thật, trùng mật khẩu là lọt, kiểu tấn công này tên Credential Stuffing. Gmail rơi trước là nguy nhất, vào được mail là nhận luôn mã reset của mọi dịch vụ còn lại, mình đổi mật khẩu ở đâu cũng vô ích vì người cầm chìa khóa chính nằm trong tay nó. Một cái khóa rè cho 3 cánh cửa, mở một cánh là mở cả ba.

## Phần 2. Mật khẩu cảm tính thua mật khẩu máy sinh

Con người đặt mật khẩu theo kiểu dễ nhớ: tên với ngày sinh, 123456, abc123, thêm dấu chấm than cuối cho ra vẻ mạnh. Bộ từ điển tấn công có sẵn hàng tỷ mật khẩu phổ biến gom từ các vụ rò rỉ trước, máy dò chạy đúng những mẫu này trước nên mật khẩu cảm tính vỡ trong vài giây tới vài phút, 123456 lại còn là mật khẩu đứng đầu mọi danh sách bị lộ. Máy sinh chuỗi ngẫu nhiên không nằm trong từ điển nào, từng ký tự độc lập với nhau, muốn dò phải quét hết tổ hợp, chuỗi 20 ký tự là bài toán không tưởng.

## Phần 3. AES-256: Password Manager an toàn hơn giấy

Ghi giấy hoặc file matkhau.docx không có lớp mã hóa nào, ai cầm được là đọc được ngay, mất tờ giấy là mất trắng. Password Manager mã hóa toàn bộ vault bằng AES-256, chuẩn mà muốn dò brute-force phải để mọi máy tính hiện nay chạy hàng tỷ tỷ năm, key giải mã nằm trên máy mình cùng Master Passphrase chỉ mình biết, kẻ xấu chôm được file vault cũng chỉ thấy mớ dữ liệu rối, đúng kiến thức Zero-Knowledge bài trước. Tóm lại giấy là cửa không khóa, vault là cửa có ổ khóa khó nhất thế giới.

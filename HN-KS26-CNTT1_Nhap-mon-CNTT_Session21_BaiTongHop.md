# HN-KS26-CNTT1_Nhap-mon-CNTT_Session21_BaiTongHop

Vừa cài Node.js trên laptop Windows 11, gõ `npm -v` kiểm tra thì máy báo lỗi "không nhận lệnh", mình xử theo đúng 4 chặng trước khi nhờ trợ giảng.

## Phần 1. Googling đúng cách

Câu hỏi văn nói cho kết quả kém vì Google không phải con người, nó không hiểu "em" là ai hay "không nhận" nghĩa là lỗi gì, chỉ khớp từng từ rời rạc nên ra toàn bài suông về cài Node.js chứ không trúng đúng lỗi đang gặp.

Bóc tách lỗi theo 3 thành phần:

| Thành phần | Nội dung bóc tách |
| --- | --- |
| Tên phần mềm / Hệ điều hành | npm của Node.js, chạy trên Windows 11 |
| Mã lỗi nguyên văn | 'npm' is not recognized as an internal or external command, operable program or batch file. |
| Thao tác đang làm | Gõ npm -v trong Terminal của VS Code để kiểm tra phiên bản |

Ba câu truy vấn, mỗi câu đúng một toán tử:

- Giới hạn StackOverflow: `npm is not recognized as an internal or external command site:stackoverflow.com`
- Khóa nguyên cụm lỗi: `"is not recognized as an internal or external command" npm windows`
- Loại bài rác cũ: `npm not recognized windows 11 -xp`

## Phần 2. Thẩm định StackOverflow

| Tiêu chí | Câu trả lời A | Câu trả lời B |
| --- | --- | --- |
| Vote & Tích xanh | Accepted Answer tích xanh, cộng 186 upvotes, cộng đồng đã kiểm chứng đông | Không có tích xanh, chỉ 2 upvotes, gần như không ai dùng |
| Thời gian đăng bài | 2 năm trước, còn sát phiên bản hiện tại | 9 năm trước, thời Windows XP |
| Tags khớp hệ điều hành/phần mềm | node.js, windows, npm khớp đủ với máy mình | node.js, windows-xp, sai hẳn hệ điều hành đang dùng |

Kết luận: áp dụng Câu trả lời A. B là bẫy vì tag node.js nhìn như nhau nhưng bài dành cho Windows XP, lại còn bảo cài "driver mạng" chẳng dính dáng gì tới lỗi PATH, làm theo là mất công gỡ cài mà lỗi vẫn nguyên.

Quy trình 30 Giây Đọc lướt khi mở một trang StackOverflow mới:

- Nhìn Vote với Tích xanh trước, cộng đồng xác nhận mới đáng đọc
- Xem ngày đăng, quá cũ so với phiên bản đang chạy thì cảnh giác
- Liếc Tags khớp phần mềm với hệ điều hành chưa
- Đọc thẳng đáp án tích xanh, chưa vội dịch cả câu hỏi
- Lướt comment cuối xem cách đó còn được xác nhận không

## Phần 3. Hỏi AI đúng cách và nhận diện rủi ro

Prompt 3 thành phần gửi AI:

```text
Ngữ cảnh: Em mới cài Node.js trên laptop Windows 11, mở Terminal trong VS Code gõ npm -v để kiểm tra thì bị lỗi. Em đã làm theo hướng dẫn trên StackOverflow là thêm C:\Program Files\nodejs\ vào biến môi trường PATH và mở lại Terminal mới nhưng lỗi vẫn y nguyên.
Lỗi nguyên văn: 'npm' is not recognized as an internal or external command, operable program or batch file.
Yêu cầu: Giải thích nguyên nhân bằng tiếng Việt dễ hiểu, đưa các bước sửa theo thứ tự từng bước, và chỉ rõ bước nào đụng tới hệ thống thì cần cẩn thận điều gì.
```

Câu trả lời AI ở mục 3e là KHÔNG an toàn. Áp 3 Nguyên tắc An toàn Vàng: chưa hiểu lệnh làm gì thì không Enter, mà `del /f /s /q C:\Windows\System32\*` là ép xoá sạch file trong thư mục hệ thống Windows; phải đối chiếu nguồn chính thức, chẳng có tài liệu nào của Microsoft bảo xoá System32 để sửa PATH; lệnh xoá hàng loạt đụng hệ thống thì tuyệt đối dừng. Câu này là AI bịa (hallucination), chạy một phát hỏng Windows thật trong khi lỗi PATH chẳng liên quan file hệ thống.

Nếu là mình sẽ hỏi lại AI: "Lệnh này xoá chính xác cái gì, vì sao xoá thư mục hệ thống lại sửa được biến PATH, có nguồn chính thức nào chứng minh không? Không chắc thì đưa cách sửa không đụng System32 và giải thích từng lệnh trước."

## Phần 4. Viết Bug Report chuẩn

Tin nhắn kiểu Kém: "Thầy ơi em cài node xong nó không chạy được gì hết, thầy xem giúp em với ạ".

Tin nhắn chuẩn theo Bug Reporting Framework 4 mảnh:

| Mảnh ghép | Nội dung trong tin nhắn |
| --- | --- |
| Context | Em mới cài Node.js trên laptop Windows 11, mở Terminal trong VS Code và gõ npm -v để kiểm tra phiên bản |
| Expected | npm trả về số phiên bản, ví dụ v20.x.x |
| Actual | Máy báo: 'npm' is not recognized as an internal or external command, operable program or batch file. |
| Log & Screenshot | Ảnh chụp thông báo lỗi trong Terminal kèm ảnh biến PATH đã thêm C:\Program Files\nodejs\, làm theo đáp án tích xanh rồi mà vẫn lỗi |

Phím tắt chụp màn hình đã học là Win + Shift + S để cắt đúng vùng cần gửi. Lưu ý bảo mật khi đính kèm: soi ảnh một lần trước khi gửi, cắt che phần lộ thông tin cá nhân với tài khoản đang đăng nhập ở góc màn hình, khỏi để mật khẩu hay token lọt vào khung ảnh.

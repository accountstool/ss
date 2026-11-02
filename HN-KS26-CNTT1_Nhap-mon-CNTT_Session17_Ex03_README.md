# HN-KS26-CNTT1_Nhap-mon-CNTT_Session17_Ex03

## Phần 1. Soi Box Model bằng tab Computed

F12 chọn div#lesson-content, mở tab Computed được số như sau:

```
margin trái 20px
└─ border 2px solid
   └─ padding 10px
      └─ content 840 × 100 (width: 65%, float: left)
```

Nó đang chạy content-box nên width: 65% chưa gồm padding với border, chỗ ngang thật là 840 + 10 + 10 + 2 + 2 + 20 = 884px. 840 là 65% của container thì container chừng 1292px, div#video-list khai 35% chừng 452px, còn trống lại 408px là thiếu 44px, đúng bằng padding + border + margin của thằng lesson-content ăn mất. Hai khung cộng vượt 100% nên video-list bị hất lên đè vào lesson-content.

**Cái bẫy: đổi margin mà không kiểm tra padding**

Chỉnh margin là nắn mỗi cái mép ngoài, padding với border vẫn nằm ngoài width nên tổng vẫn vượt. Tăng margin thì đè nặng hơn, về 0 cũng còn thiếu 24px do padding với border gây ra. Reflow dịch hình tưởng sửa xong chứ tổng vẫn vượt thì vẫn chồng lấn y nguyên.

## Phần 2. Sửa tại bảng Styles

Bước 1. Thêm box-sizing: border-box cho cả #lesson-content với #video-list

Bước 2. Đổi width của #lesson-content thành calc(65% - 30px), chừa 30px cho margin trái 20px với khe hở 10px

Khi đó lesson-content chiếm 830px, video-list 452px, cộng lại 1282px nhỏ hơn container 1292px nên hai khung tách ra khỏi nhau. Chỉnh trong Styles chỉ để xem thử, chép vào file CSS thật mới giữ được.

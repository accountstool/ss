

# PHẦN A – PROMPT ĐEM CHẠY AI

## A1. Prompt đọc File 1 – Danh sách sinh viên

```text
[C] Bạn là trợ lý đào tạo Trung tâm CNTT, xử lý dữ liệu học phần Java cơ bản của lớp 30 sinh viên.
[R] Đọc File 1 trong thẻ <file_1>...</file_1> và trích xuất danh sách sinh viên.
[E] Chỉ dùng dữ liệu trong thẻ, tuyệt đối không bịa thêm sinh viên. Mã sinh viên (MSV) là khóa định danh duy nhất; không gộp hay tách sinh viên dựa vào họ tên. Giữ nguyên họ tên có dấu. Ô trống ghi "Thiếu dữ liệu".
[A] 1. Chuẩn hóa MSV (viết hoa, bỏ khoảng trắng thừa). 2. Lập bảng theo đúng thứ tự file. 3. Soát MSV bị lặp và các cặp trùng họ tên nhưng khác MSV.
[T] Hành chính, trung tính, ngắn gọn.
[E] Chỉ xuất 2 khối: (1) Bảng Markdown 2 cột | Mã SV | Họ tên |; (2) mục "Bất thường" gạch đầu dòng, không có thì ghi "Không có". Không chào hỏi, không dạo đầu, không giải thích.
<file_1>
[DÁN NỘI DUNG FILE 1 VÀO ĐÂY]
</file_1>
```

## A2. Prompt đọc File 2 – Điểm chuyên cần và bài tập

```text
[C] Bạn là trợ lý đào tạo Trung tâm CNTT, xử lý học phần Java cơ bản.
[R] Đọc File 2 trong thẻ <file_2>...</file_2>, trích điểm chuyên cần và điểm bài tập của từng sinh viên.
[E] Chỉ trích trong thẻ, cấm suy đoán điểm. Khóa là MSV, không dò theo họ tên. Thang điểm 0–10; giá trị ngoài thang giữ nguyên và gắn cờ [NGOÀI_THANG], tuyệt đối không tự sửa. Ô trống hoặc không có bản ghi ghi "Thiếu dữ liệu".
[A] 1. Chuẩn hóa MSV. 2. Đưa điểm về số thập phân, giữ nguyên giá trị gốc. 3. Lập bảng. 4. Liệt kê MSV thiếu điểm, ngoài thang, bị lặp; MSV không thuộc danh sách 30 sinh viên thì ghi chú riêng.
[T] Hành chính, trung tính, ngắn gọn.
[E] Chỉ xuất 2 khối: (1) Bảng Markdown 3 cột | Mã SV | Chuyên cần | Bài tập |; (2) mục "Bất thường". Không chào hỏi, không giải thích, không tính điểm tổng kết.
<file_2>
[DÁN NỘI DUNG FILE 2 VÀO ĐÂY]
</file_2>
```

## A3. Prompt đọc File 3 – Điểm kiểm tra giữa kỳ

```text
[C] Bạn là trợ lý đào tạo Trung tâm CNTT, xử lý học phần Java cơ bản.
[R] Đọc File 3 trong thẻ <file_3>...</file_3>, trích điểm giữa kỳ theo từng MSV.
[E] Chỉ dùng dữ liệu trong thẻ. Khóa là MSV, không ghép theo họ tên. Thang 0–10, ngoài thang gắn cờ [NGOÀI_THANG]. Một MSV có nhiều bản ghi thì xuất tất cả giá trị và gắn cờ [TRÙNG_BẢN_GHI], tuyệt đối không tự chọn một giá trị. Không có điểm ghi "Thiếu dữ liệu".
[A] 1. Chuẩn hóa MSV. 2. Lập bảng. 3. Liệt kê MSV thiếu điểm, trùng bản ghi, ngoài thang.
[T] Hành chính, trung tính, ngắn gọn.
[E] Chỉ xuất 2 khối: (1) Bảng Markdown 2 cột | Mã SV | Giữa kỳ |; (2) mục "Bất thường". Không chào hỏi, không giải thích, không tính toán.
<file_3>
[DÁN NỘI DUNG FILE 3 VÀO ĐÂY]
</file_3>
```

## A4. Prompt đọc File 4 – Điểm thi cuối kỳ và nhận xét giảng viên

```text
[C] Bạn là trợ lý đào tạo Trung tâm CNTT, xử lý học phần Java cơ bản.
[R] Đọc File 4 trong thẻ <file_4>...</file_4>, trích điểm cuối kỳ và nhận xét của giảng viên theo từng MSV.
[E] Chỉ dùng dữ liệu trong thẻ. Khóa là MSV, không ghép theo họ tên. Thang 0–10, ngoài thang gắn cờ [NGOÀI_THANG]. Nhận xét giữ nguyên ý của giảng viên, tối đa 30 từ, tuyệt đối không diễn giải hay suy đoán nguyên nhân điểm thấp. Không có bản ghi ghi "Thiếu dữ liệu".
[A] 1. Chuẩn hóa MSV. 2. Lập bảng. 3. Liệt kê MSV thiếu điểm cuối kỳ hoặc thiếu nhận xét.
[T] Hành chính, trung tính, ngắn gọn.
[E] Chỉ xuất 2 khối: (1) Bảng Markdown 3 cột | Mã SV | Cuối kỳ | Nhận xét GV |; (2) mục "Bất thường". Không chào hỏi, không giải thích.
<file_4>
[DÁN NỘI DUNG FILE 4 VÀO ĐÂY]
</file_4>
```

## A5. Prompt đối chiếu dữ liệu (gộp 4 bảng → tính điểm → phân loại → thống kê)

```text
[C] Bạn là trợ lý đào tạo Trung tâm CNTT. Tôi có 4 bảng đã trích xuất từ 4 file của lớp Java cơ bản (30 sinh viên), dán trong <bang_1>...</bang_1> đến <bang_4>...</bang_4>.
[R] Đối chiếu 4 bảng theo MSV, tính điểm tổng kết, phân loại đạt/chưa đạt và thống kê tình hình học tập.
[E] Quy tắc bắt buộc:
- MSV là khóa ghép duy nhất; TUYỆT ĐỐI không ghép theo họ tên (lớp có sinh viên trùng tên).
- Lấy danh sách 30 MSV ở bảng 1 làm gốc; MSV chỉ có ở bảng khác thì đưa vào mục bất thường, không thêm vào bảng tổng hợp.
- Chỉ dùng dữ liệu trong 4 thẻ, không bịa điểm, không tự điền điểm thiếu, không tự sửa điểm ngoài thang 0–10.
- Ô "Thiếu dữ liệu", [NGOÀI_THANG] hoặc [TRÙNG_BẢN_GHI] => Tổng kết ghi "Thiếu dữ liệu", Kết quả ghi "Chưa xét".
- Không suy đoán nguyên nhân sinh viên điểm thấp; chỉ mô tả số liệu.
[A] 1. Ghép 4 bảng theo MSV. 2. Soát thiếu điểm, trùng bản ghi, điểm ngoài thang, MSV lạ, trùng họ tên. 3. Tính từng bước trong nội bộ: Tổng kết = 0,1×Chuyên cần + 0,2×Bài tập + 0,3×Giữa kỳ + 0,4×Cuối kỳ, làm tròn 2 chữ số thập phân. 4. Đạt nếu Tổng kết >= 5,0, ngược lại Chưa đạt. 5. Đếm số đạt / chưa đạt / chưa xét, tính tỷ lệ trên nhóm đủ dữ liệu và trên sĩ số 30.
[T] Hành chính, khách quan, không khen chê cảm tính.
[E] Chỉ xuất 4 khối, không chào hỏi, không trình bày phép tính trung gian:
(1) Bảng Markdown 8 cột | Mã SV | Họ tên | Chuyên cần | Bài tập | Giữa kỳ | Cuối kỳ | Tổng kết | Kết quả | đúng 30 dòng, sắp theo MSV.
(2) Bảng thống kê: số lượng và tỷ lệ Đạt / Chưa đạt / Chưa xét; kèm phổ điểm, điểm tổng kết trung bình - cao nhất - thấp nhất, trung bình từng đầu điểm.
(3) Danh sách bất thường: | Mã SV | Vấn đề | File nguồn | Cách xử lý |.
(4) Nhận xét tình hình học tập khoảng không quá 500 từ, chỉ dựa số liệu đã tính, không suy đoán nguyên nhân điểm thấp.
<bang_1>
[DÁN BẢNG KẾT QUẢ PROMPT A1]
</bang_1>
<bang_2>
[DÁN BẢNG KẾT QUẢ PROMPT A2]
</bang_2>
<bang_3>
[DÁN BẢNG KẾT QUẢ PROMPT A3]
</bang_3>
<bang_4>
[DÁN BẢNG KẾT QUẢ PROMPT A4]
</bang_4>
```

---

# PHẦN B – KẾT QUẢ CHẠY

## 1. Các prompt dùng để đọc và xử lý 4 file

Dùng nguyên 4 prompt A1, A2, A3, A4 ở Phần A mỗi file một prompt riêng, trích xuất độc lập, khóa MSV

## 2. Prompt đối chiếu dữ liệu

Dùng prompt A5 ở Phần A.

## 3. Bảng kết quả tổng hợp 30 sinh viên
| Mã SV | Họ tên | Chuyên cần | Bài tập | Giữa kỳ | Cuối kỳ | Tổng kết | Kết quả |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SV001 | Nguyễn Văn An | 9.5 | 8.0 | 8.0 | 8.5 | 8.35 | Đạt |
| SV002 | Trần Thị Bình | 10.0 | 9.0 | 9.0 | 9.0 | 9.10 | Đạt |
| SV003 | Lê Hoàng Cường | 7.5 | 6.0 | 5.5 | 5.0 | 5.60 | Đạt |
| SV004 | Phạm Minh Dung | 8.5 | 8.0 | 8.0 | Thiếu dữ liệu | Thiếu dữ liệu | Chưa xét |
| SV005 | Hoàng Quốc Đạt | 4.0 | 3.0 | 2.5 | 2.5 | 2.75 | Chưa đạt |
| SV006 | Vũ Thị Hà | 8.0 | 7.5 | 7.0 | 7.0 | 7.20 | Đạt |
| SV007 | Đặng Quang Huy | 8.0 | 7.5 | 7.5 | 7.5 | 7.55 | Đạt |
| SV008 | Bùi Thị Lan | 8.0 | 7.0 | 6.5 | 6.5 | 6.75 | Đạt |
| SV009 | Đỗ Văn Long | 8.5 | Thiếu dữ liệu | 7.5 | 7.5 | Thiếu dữ liệu | Chưa xét |
| SV010 | Hồ Thị Mai | 9.0 | 8.5 | 8.0 | 8.0 | 8.20 | Đạt |
| SV011 | Ngô Đình Nam | 8.5 | 12 [NGOÀI_THANG] | 7.0 | 7.5 | Thiếu dữ liệu | Chưa xét |
| SV012 | Dương Thị Ngọc | 6.0 | 5.0 | 4.5 | 4.0 | 4.55 | Chưa đạt |
| SV013 | Lý Tuấn Phong | 7.0 | 6.5 | 6.0 | 5.5 | 6.00 | Đạt |
| SV014 | Trịnh Thị Quyên | 9.0 | 8.5 | 8.5 | 8.5 | 8.55 | Đạt |
| SV015 | Nguyễn Văn An | 7.5 | 7.0 | 6.5; 8.0 [TRÙNG_BẢN_GHI] | 6.5 | Thiếu dữ liệu | Chưa xét |
| SV016 | Phan Thanh Sơn | 9.0 | 8.0 | 7.5 | 7.0 | 7.55 | Đạt |
| SV017 | Võ Thị Tâm | 9.0 | 8.5 | Thiếu dữ liệu | 8.5 | Thiếu dữ liệu | Chưa xét |
| SV018 | Trương Văn Thắng | 7.0 | 6.5 | 6.0 | 6.0 | 6.20 | Đạt |
| SV019 | Đinh Thị Thảo | 6.5 | 5.5 | 5.0 | 4.5 | 5.05 | Đạt |
| SV020 | Lâm Hữu Thịnh | 9.5 | 9.0 | 9.0 | 9.0 | 9.05 | Đạt |
| SV021 | Mai Thị Trang | 5.0 | 4.5 | 4.0 | 3.5 | 4.00 | Chưa đạt |
| SV022 | Đào Xuân Trường | 6.5 | 6.0 | 5.5 | 5.0 | 5.50 | Đạt |
| SV023 | Hà Thị Tuyết | 9.5 | 9.0 | 8.5 | 9.0 | 8.90 | Đạt |
| SV024 | Chu Văn Uy | 7.5 | 7.0 | 6.5 | 6.0 | 6.50 | Đạt |
| SV025 | Trần Thị Bình | 7.0 | 6.5 | 6.0 | 6.0 | 6.20 | Đạt |
| SV026 | Tạ Minh Vũ | 4.5 | 3.5 | 3.0 | 3.0 | 3.25 | Chưa đạt |
| SV027 | Phùng Thị Xuân | 3.5 | 2.5 | 2.0 | 2.0 | 2.25 | Chưa đạt |
| SV028 | Lương Đức Yên | 5.5 | 4.0 | 3.5 | 3.0 | 3.60 | Chưa đạt |
| SV029 | Kiều Thị Yến | 10.0 | 9.5 | 9.5 | 9.5 | 9.55 | Đạt |
| SV030 | Nghiêm Văn Kiên | 8.0 | 7.5 | 7.0 | 7.0 | 7.20 | Đạt |

**Thống kê kết quả học tập**

| Chỉ tiêu | Số lượng | Tỷ lệ trên nhóm đủ dữ liệu (25 SV) | Tỷ lệ trên sĩ số lớp (30 SV) |
| --- | --- | --- | --- |
| **Đạt** (Tổng kết từ 5,0 trở lên) | 19 | 76,00% | 63,33% |
| **Chưa đạt** (Tổng kết dưới 5,0) | 6 | 24,00% | 20,00% |
| **Chưa xét** (Thiếu/lỗi dữ liệu) | 5 | Không áp dụng | 16,67% |

**Phổ điểm tổng kết (tính trên 25 sinh viên đủ dữ liệu hợp lệ)**

| Mức điểm tổng kết | Số lượng | Tỷ lệ trên nhóm đủ dữ liệu (25 SV) |
| --- | --- | --- |
| Từ 9,0 đến 10,0 | 3 | 12,00% |
| Từ 8,0 đến 8,99 | 4 | 16,00% |
| Từ 7,0 đến 7,99 | 5 | 20,00% |
| Từ 6,0 đến 6,99 | 4 | 16,00% |
| Từ 5,0 đến 5,99 | 3 | 12,00% |
| Dưới 5,0 | 6 | 24,00% |

**Chỉ số thống kê điểm số**

| Thành phần điểm | Số mẫu hợp lệ | Điểm trung bình | Điểm cao nhất | Điểm thấp nhất |
| --- | --- | --- | --- | --- |
| Chuyên cần | 30 | 7,52 | 10,0 | 3,5 |
| Bài tập | 28 | 6,75 | 9,5 | 2,5 |
| Giữa kỳ | 28 | 6,34 | 9,5 | 2,0 |
| Cuối kỳ | 29 | 6,34 | 9,5 | 2,0 |
| **Điểm tổng kết** | **25** | **6,55** | **9,55** | **2,25** |

**Danh sách bất thường**

| Mã SV | Vấn đề | File nguồn | Cách xử lý |
| --- | --- | --- | --- |
| SV001, SV015 | Trùng họ tên (Nguyễn Văn An) nhưng khác MSV | File 1 | Giữ nguyên theo khóa định danh MSV, không gộp dữ liệu |
| SV002, SV025 | Trùng họ tên (Trần Thị Bình) nhưng khác MSV | File 1 | Giữ nguyên theo khóa định danh MSV, không gộp dữ liệu |
| SV009 | Thiếu điểm bài tập | File 2 | Ghi "Thiếu dữ liệu" ở điểm bài tập và tổng kết; xếp loại "Chưa xét" |
| SV011 | Điểm bài tập vượt thang điểm 0–10 (giá trị: 12) | File 2 | Giữ nguyên giá trị gắn cờ [NGOÀI_THANG]; tổng kết ghi "Thiếu dữ liệu", xếp loại "Chưa xét" |
| SV031 | MSV lạ (Lê Minh Khôi), không có trong danh sách 30 SV | File 2 | Không đưa vào bảng tổng hợp 30 sinh viên của lớp |
| SV015 | Trùng bản ghi điểm giữa kỳ với 2 giá trị khác nhau (6,5 và 8,0) | File 3 | Xuất cả hai giá trị gắn cờ [TRÙNG_BẢN_GHI]; tổng kết ghi "Thiếu dữ liệu", xếp loại "Chưa xét" |
| SV017 | Thiếu điểm giữa kỳ | File 3 | Ghi "Thiếu dữ liệu" ở điểm giữa kỳ và tổng kết; xếp loại "Chưa xét" |
| SV004 | Thiếu điểm cuối kỳ | File 4 | Ghi "Thiếu dữ liệu" ở điểm cuối kỳ và tổng kết; xếp loại "Chưa xét" |

**Nhận xét tình hình học tập**

Trên tổng số 30 sinh viên của lớp, có 25 sinh viên (chiếm 83,33%) có đầy đủ dữ liệu điểm hợp lệ để xét kết quả và 5 sinh viên (chiếm 16,67%) ở trạng thái Chưa xét do thiếu điểm thành phần, sai thang điểm hoặc trùng lặp bản ghi.

Trong nhóm 25 sinh viên đủ điều kiện xét, tỷ lệ Đạt đạt mức 76,00% (19 sinh viên) và tỷ lệ Chưa đạt là 24,00% (6 sinh viên). Tính trên toàn bộ sĩ số 30 sinh viên, tỷ lệ Đạt hiện ghi nhận ở mức 63,33% và Chưa đạt ở mức 20,00%.

Điểm tổng kết trung bình của nhóm đủ dữ liệu đạt 6,55 điểm với biên độ phân hóa rộng từ thấp nhất 2,25 điểm (SV027) đến cao nhất 9,55 điểm (SV029). Phổ điểm tổng kết phân bổ tương đối đều ở các phân khúc từ trung bình đến giỏi: nhóm đạt mức từ 8,0 điểm trở lên có 7 sinh viên (28,00%), nhóm từ 6,0 đến 7,99 điểm chiếm tỷ trọng lớn nhất với 9 sinh viên (36,00%), nhóm đạt mức cận chuẩn từ 5,0 đến 5,99 điểm có 3 sinh viên (12,00%) và nhóm dưới 5,0 điểm có 6 sinh viên (24,00%).

Xét theo từng cột điểm thành phần hợp lệ, điểm trung bình có xu hướng giảm dần theo tiến trình đánh giá của học phần. Cụ thể, điểm chuyên cần đạt mức trung bình cao nhất là 7,52 điểm (dao động từ 3,5 đến 10,0 điểm), tiếp đến là điểm bài tập đạt trung bình 6,75 điểm (dao động từ 2,5 đến 9,5 điểm). Ở hai kỳ thi tập trung, điểm trung bình giữa kỳ và cuối kỳ cùng dừng ở mức 6,34 điểm với khoảng điểm trải dài từ 2,0 đến 9,5 điểm. Số liệu nhận xét từ giảng viên ở bài thi cuối kỳ ghi nhận sự phân hóa rõ rệt về mức độ hoàn thành bài làm giữa nhóm điểm cao (từ 8,0 trở lên, hoàn thiện đầy đủ các yêu cầu về lập trình hướng đối tượng và xử lý ngoại lệ) với nhóm điểm thấp (dưới 5,0, bài làm còn thiếu sót về cú pháp, vòng lặp và cấu trúc lớp).

Để hoàn thiện bảng điểm chính thức của lớp, bộ phận đào tạo cần rà soát và bổ sung dữ liệu cho 5 trường hợp chưa xét (SV004, SV009, SV011, SV015, SV017), đồng thời xác minh nguồn gốc bản ghi của mã sinh viên SV031. 

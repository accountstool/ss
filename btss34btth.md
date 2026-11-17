
## 1. Báo cáo thiết kế giải pháp

 

```
[Đánh giá thô] → B1 Làm sạch & hợp lệ hóa → B2 Phân loại chủ đề & cảm xúc → B3 Trích xuất bằng chứng → B4 Tổng hợp báo cáo → [Báo cáo sạch]
                       └─ bản ghi dị biệt được gắn nhãn cách ly, chuỗi KHÔNG dừng
```

- **B1 làm sạch và hợp lệ hóa dữ liệu**: kiểm schema từng bản ghi; bản ghi lỗi được chuyển vào `quarantine[]` kèm mã lý do để xử lý đứt gãy dữ liệu, chuỗi vẫn chạy tiếp.
- **B2 phân loại**: với từng bản ghi, suy luận từng bước theo lối Chain-of-Thought để xác định chủ đề và cảm xúc.
- **B3 trích xuất bằng chứng**: chọn 3 trích dẫn tiêu biểu làm bằng chứng cho báo cáo.
- **B4 tổng hợp báo cáo**: chỉ nhận thống kê số liệu của B2 và bảng B3, viết báo cáo ≤150 từ.



## 2. Prompt hệ thống + prompt thực thi từng bước

**Prompt hệ thống**:

```
Bạn là một bộ xử lý trong chuỗi Prompt Chaining khép kín. Quy tắc bắt buộc:
1. Chỉ trả về đúng JSON theo schema của bước, không giải thích, không thêm chữ ngoài JSON.
2. Dữ liệu dị biệt KHÔNG được làm crash: chuyển vào quarantine[] kèm {id, reason}. Không tự đoán giá trị thay cho dữ liệu lỗi.
3. Chỉ dùng dữ liệu có trong input; thiếu dữ liệu thì trả {"status":"error"} cho nhánh đó, không bịa dữ liệu.
4. Trả lời tiếng Việt, gọn, tôn trọng giới hạn token của bước.
```

**Prompt B1 làm sạch và hợp lệ hóa**:

```
Nhận mảng JSON đánh giá thô. Với từng bản ghi kiểm: đủ id|comment|score? score là số nguyên trong 1–5? comment khác rỗng?
Đạt → đưa vào clean[]. Không đạt → đưa vào quarantine[] kèm reason ngắn gọn.
Output: {"clean":[{"id","comment","score"}],"quarantine":[{"id","reason"}]}
```

**Prompt B2 phân loại**:

```
Nhận clean[] từ B1. Với từng bản ghi suy luận lần lượt: (1) ý chính của comment là gì, (2) chủ đề [giaohang|sanpham|giamo|khac], (3) cảm xúc [tichcuc|trunglap|tieucuc] dựa trên score + nội dung.
Output: {"records":[{"id","topic","sentiment"}]}
```

**Prompt B3 trích xuất bằng chứng**:

```
Nhận clean[] (B1) và records[] (B2). Chọn 3 bản ghi tiêu biểu nhất: điểm cao nhất, điểm thấp nhất, điểm trung bình nhất; kèm trích dẫn gốc ≤20 từ mỗi bản ghi.
Output: {"evidence":[{"id","topic","sentiment","quote"}]}
```

**Prompt B4 tổng hợp báo cáo**:

```
Nhận thống kê tổng của B2 và evidence[] của B3. Viết báo cáo ≤150 từ gồm: số bản ghi hợp lệ / bị cách ly, tỷ lệ % mỗi chủ đề, điểm hài lòng trung bình, 1 đề xuất hành động. Không thêm dữ liệu ngoài input.
Output: văn bản báo cáo thuần.
``` 

## 3. Kết quả chạy thử   

```json
[{"id":"DG01","comment":"Giao hàng nhanh, đóng gói cẩn thận","score":5},
 {"id":"DG02","comment":"","score":4},
 {"id":"DG03","comment":"Sản phẩm tốt nhưng giao chậm","score":3},
 {"id":"DG04","comment":"Giao hàng bị vỡ, thái độ kém","score":-2},
 {"id":"DG05","comment":"Giá hơi cao so với chất lượng","score":"ba"}]
```

- **B1 trả về**: `clean = [DG01, DG03]`; `quarantine = [DG02 (bình luận rỗng), DG04 (score âm), DG05 (score sai kiểu)]`, không có exception.
- **B2 trả về**: DG01 → giaohang, tichcuc; DG03 → giaohang, trunglap.
- **B3 trả về**: DG01 (5★, "Giao hàng nhanh, đóng gói cẩn thận"); DG03 (3★, "Sản phẩm tốt nhưng giao chậm").
- **B4 trả về báo cáo cuối**:

> Báo cáo tuần: 2/5 đánh giá hợp lệ, 3 bản ghi dị biệt được cách ly an toàn (1 bình luận rỗng, 1 điểm âm, 1 sai kiểu dữ liệu), không bản ghi nào làm dừng chuỗi. Chủ đề chiếm ưu thế: giao hàng (100%). Điểm hài lòng trung bình 4,0/5. Đề xuất: rà soát quy trình giao hàng vì các phản hồi hợp lệ đều xoay quanh tốc độ giao.

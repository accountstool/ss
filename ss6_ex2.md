# [Phân tích] So sánh Trade-off – Feynman Prompt & Rubric

### Bước 1 – Hai giải pháp prompt

**Giải pháp 1 (Đơn giản)**

Giải thích ngắn gọn Feynman Prompt và Rubric chấm bài.
Dùng gạch đầu dòng, không chào hỏi.

**Giải pháp 2 (Chi tiết)**

Giải thích ngắn gọn 2 khái niệm dưới đây theo đúng format.
Chỉ dùng gạch đầu dòng. Không chào hỏi, không mở đầu, không kết luận, không giải thích thêm.

- Feynman Prompt gia sư: (định nghĩa + cách hoạt động 1 câu)
- Rubric chấm bài tự động: (định nghĩa + 3 phần feedback bắt buộc)

### Bước 2 – Bảng so sánh Trade-off

| Tiêu chí              | Giải pháp 1 (Đơn giản) | Giải pháp 2 (Chi tiết) |
|-----------------------|------------------------|------------------------|
| Độ dễ hiểu            | Cao                    | Trung bình             |
| Tốn token             | Ít                     | Nhiều hơn              |
| Chặn lỗi biên         | Trung bình             | Cực tốt                |
| Khả năng sạch chữ thừa| Thấp                   | Rất cao                |
| Phù hợp báo cáo học tập| Trung bình            | Cao                    |

### Bước 3 – Lựa chọn & chạy thử

**Chọn Giải pháp 2** vì chặn được lời chào và giải thích thừa, kết quả sạch để dán thẳng vào báo cáo.

**Kết quả chạy thử :**
- **Feynman Prompt gia sư**: Kỹ thuật đảo vai – bạn tự giảng khái niệm bằng ngôn ngữ đơn giản, AI chỉ đặt 1 câu hỏi phản biện mỗi lượt để soi lỗ hổng, không cho đáp án sẵn.
- **Rubric chấm bài tự động**: Ma trận tiêu chí có trọng số % dùng để AI chấm điểm khách quan, kèm feedback 3 phần: vị trí lỗi – lý do – cách sửa.

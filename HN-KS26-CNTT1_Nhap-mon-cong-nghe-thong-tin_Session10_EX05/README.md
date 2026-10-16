#  Smart-Farm: Hệ Thống IoT Cho Trang Trại Lan

*Hệ thống tự động hóa theo dõi môi trường và tưới nước thông minh giúp tối ưu chi phí và nâng cao năng suất cho vườn Lan.*

![Sơ đồ hệ thống Smart-Farm](https://raw.githubusercontent.com/gist/assets/smart-farm-diagram.png "Sơ đồ hoạt động hệ thống Smart-Farm")

---

## 1. Mô tả & Kiến trúc hệ thống

> **Chu kỳ Fetch - Decode - Execute khi CPU nhận lệnh tưới Lan:**
> - **Fetch (Lấy lệnh):** CPU đọc tín hiệu yêu cầu tưới từ cảm biến hoặc người dùng gửi về từ RAM.
> - **Decode (Giải mã):** Bộ điều khiển giải mã tín hiệu thành lệnh điều khiển bật máy bơm.
> - **Execute (Thực thi):** CPU gửi tín hiệu mức cao (HIGH) ra chân GPIO để kích hoạt rơ-le bật máy bơm phun sương.

### Chuyển hóa dữ liệu theo mô hình KIM TỰ THÁP DIKW

1. **Data (Dữ liệu thô):** Cảm biến ghi nhận giá trị `28.6°C` và độ ẩm `55%`.
2. **Information (Thông tin):** Nhiệt độ cao hơn mức chuẩn và độ ẩm đất đang tụt dưới ngưỡng $60\%$.
3. **Knowledge (Tri thức):** Môi trường đang bị khô nóng, nếu không tưới ngay thì cây Lan sẽ bị héo lá.
4. **Wisdom (Trí tuệ / Hành động):** Tự động bật hệ thống máy bơm phun sương trong 5 phút để cân bằng độ ẩm.

---

## 2. Hướng dẫn cài đặt

Cập nhật hệ thống và cài đặt các thư viện cần thiết bằng lệnh terminal:

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-pip git
pip3 install Adafruit_DHT RPi.GPIO
```
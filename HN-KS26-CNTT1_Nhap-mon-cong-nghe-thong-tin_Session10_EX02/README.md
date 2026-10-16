# Hướng dẫn cài đặt cảm biến độ ẩm cho trang trại Lan

## 1. Phân tích Input và Output

- Input: Văn bản thô bị lẫn lộn câu lệnh với lời giải thích, chưa có bảng biểu.
- Output: File Markdown rõ ràng, phân biệt câu lệnh bằng inline code và code block, có bảng so sánh với danh sách kiểm tra.

---

## 2. Bảng so sánh cảm biến độ ẩm

| Tiêu chí | Cảm biến cũ (DHT11) | Cảm biến mới (DHT22 / AM2302) |
| --- | --- | --- |
| Độ chính xác | 5% | 2% |
| Dải đo độ ẩm | 20% - 80% | 0% - 100% |
| Tần số lấy mẫu | 1 giây / lần | 2 giây / lần |
| Đánh giá | Tạm ổn | Rất tốt cho vườn Lan |

---

## 3. Hướng dẫn cài đặt và lệnh Terminal

Cập nhật hệ thống: `sudo apt update && sudo apt upgrade -y`

Cài đặt thư viện: `sudo pip3 install Adafruit_DHT`

Bật giao tiếp 1-Wire: `sudo raspi-config`

Kiểm tra module: `ls /sys/bus/w1/devices/`

Lưu ý dùng dấu `\` trước các ký tự `*` hoặc `#` nếu không muốn bị lỗi định dạng. Ví dụ khi cài crontab chạy 5 phút 1 lần: `*/5 \* \* \* \* python3 /home/pi/read_dht22.py`

---

## 4. Code Python điều khiển máy bơm

```python
import time
import Adafruit_DHT
import RPi.GPIO as GPIO

sensor = Adafruit_DHT.DHT22
pin = 4
pump_pin = 17

GPIO.setmode(GPIO.BCM)
GPIO.setup(pump_pin, GPIO.OUT)

while True:
    humidity, temperature = Adafruit_DHT.read_retry(sensor, pin)
    if humidity is not None:
        print("Do am:", humidity)
        if humidity < 60:
            GPIO.output(pump_pin, GPIO.HIGH)
            print("Bat may bom")
        else:
            GPIO.output(pump_pin, GPIO.LOW)
            print("Tat may bom")
    time.sleep(10)
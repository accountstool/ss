
# script : auto_report.ps1
# Tác giả    : Tran Manh Hoa
# Ngày tạo   : 2026-10-14
# Mô tả     : Tu dong loc loi 404 tu file server.log va xuat bao cao


# 1. config
$logFile = "server.log"
$reportFile = "report.txt"

# 2. Thông báo tiến trình
Write-Host "--------------------------------------------------" 
Write-Host " Bắt đầu quá trình ..." 
Write-Host " -> Nguồn: $logFile" 
Write-Host " -> Output : $reportFile"  
Write-Host "--------------------------------------------------"

# 3. LOGIC XỬ LÝ: Tạo title và report log

"=== Hệ thống lọc lỗi tự động ===" | Out-File -FilePath $reportFile -Encoding utf8
 
Get-Content $logFile | Select-String "404" | Add-Content -Path $reportFile -Encoding utf8
 
Write-Host "Hoàn thành đã lưu vào file $reportFile!" 

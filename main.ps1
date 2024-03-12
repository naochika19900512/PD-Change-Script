# 古いプリンタードライバの名前
$oldDriverName = "OKI Universal PCL 5"
# 新しいプリンタードライバの名前
$NewDriverName = "PaperCut Global PostScript"

# システム上のすべてのプリンタを取得し、それぞれに新しいドライバを設定
Get-Printer | ForEach-Object {
    Write-Host "ドライバ名:" $_.Name
    if($_.DriverName -eq $oldDriverName){
        Write-Host "プリンターのドライバを変更しています:" $_.Name
        Set-Printer -Name $_.Name -DriverName $NewDriverName
    }
}

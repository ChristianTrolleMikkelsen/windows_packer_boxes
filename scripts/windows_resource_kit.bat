if not exist "C:\vagrant\rktools.exe" (
  powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://download.microsoft.com/download/8/e/c/8ec3a7d8-05b4-440a-a71e-ca3ee25fe057/rktools.exe', 'C:\Windows\Temp')" <NUL
)

C:\Windows\Temp\rktools.exe /T:C:\Windows\Temp /C

msiexec /qn /i "C:\Windows\Temp\rktools.msi" RKTOOLS="C:\Program Files\Windows Resource Kit\Tools" /log C:\Windows\Temp\rktools.log

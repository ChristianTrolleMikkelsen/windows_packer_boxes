powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://download.microsoft.com/download/9/5/A/95A9616B-7A37-4AF6-BC36-D6EA96C8DAAE/dotNetFx40_Full_x86_x64.exe', 'C:\Windows\Temp\dotNetFx40_Full_x86_x64.exe')" <NUL
C:\Windows\Temp\dotNetFx40_Full_x86_x64.exe /q /norestart /log C:\Windows\Temp\dotnet40.log

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://go.microsoft.com/fwlink/?LinkId=225702', 'C:\Windows\Temp\dotNetFx45_Full_x86_x64.exe')" <NUL
C:\Windows\Temp\dotNetFx45_Full_x86_x64.exe /q /norestart /log C:\Windows\Temp\dotnet45.log

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://go.microsoft.com/fwlink/?LinkId=322116', 'C:\Windows\Temp\NDP451-KB2858728-x86-x64-AllOS-ENU.exe')" <NUL
C:\Windows\Temp\NDP451-KB2858728-x86-x64-AllOS-ENU.exe /q /norestart /log C:\Windows\Temp\dotnet451.log

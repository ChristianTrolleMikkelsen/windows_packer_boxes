mkdir temp
cd temp
wget https://s3.amazonaws.com/pe-builds/released/3.1.1/puppet-enterprise-3.1.1-ubuntu-12.04-i386.tar.gz
tar -zxvf puppet-enterprise-3.1.1-ubuntu-12.04-i386.tar.gz

if not exist "C:\Windows\Temp\puppet.msi" (
  powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://pm.puppetlabs.com/cgi-bin/download.cgi?ver=latest&dist=win', 'C:\Windows\Temp\puppet.msi')" <NUL
)

:: http://docs.puppetlabs.com/pe/latest/install_windows.html
msiexec /qn /i C:\Windows\Temp\puppet.msi /log C:\Windows\Temp\puppet.log

<nul set /p ".=;C:\Program Files (x86)\Puppet Labs\Puppet Enterprise\bin" >> C:\Windows\Temp\PATH
set /p PATH=<C:\Windows\Temp\PATH
setx PATH "%PATH%" /m
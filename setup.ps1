Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}

Invoke-WebRequest https://github.com/2captcha/rucaptcha-bot/releases/download/win32-ia32-prod-v1.9.8/CaptchaBotRS.Setup.1.9.8.exe -OutFile CaptchaBotRS.Setup.1.9.8.exe
copy CaptchaBotRS.Setup.1.9.8.exe C:\Users\Public\Desktop\CaptchaBotRS.Setup.1.9.8.exe
Invoke-WebRequest https://gitlab.com/rifqiekhafi/setrum/-/raw/main/ngrok-v3-stable-windows-amd64.zip -OutFile ngrok-v3-stable-windows-amd64.zip
copy ngrok-v3-stable-windows-amd64.zip C:\Users\Public\Desktop\ngrok-v3-stable-windows-amd64.zip
net user installer Raya0102 /add >nul
net localgroup administrators installer /add >nul
net user installer /active:yes >nul

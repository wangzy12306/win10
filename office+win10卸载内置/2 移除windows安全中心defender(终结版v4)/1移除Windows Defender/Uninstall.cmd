@echo off
cd /d "%~dp0"
echo Uninstalling ...
CLS
install_wim_tweak.exe /o /l
install_wim_tweak.exe /o /c "Windows-Defender" /r
install_wim_tweak.exe /h /o /l
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "SecurityHealth" /f
echo.
echo 请重启 Windows 10 以完成卸载。
echo.
pause
@echo off
cd /d "%~dp0"
echo Uninstalling ...
CLS
install_wim_tweak.exe /o /l
install_wim_tweak.exe /o /c "Windows-Defender" /r
install_wim_tweak.exe /h /o /l
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "SecurityHealth" /f
echo.
echo ������ Windows 10 �����ж�ء�
echo.
pause
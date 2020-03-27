@echo off
echo y|takeown /f "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\Assets\*.*"
echo y|icacls "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\Assets\*.*" /grant administrators:F
rd /s /q "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\Assets\"
echo y|takeown /f "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\pris\*.*"
echo y|icacls "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\pris\*.*" /grant administrators:F
rd /s /q "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\pris\"
echo y|takeown /f "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\microsoft.system.package.metadata\*.*"
echo y|icacls "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\microsoft.system.package.metadata\*.*" /grant administrators:F
rd /s /q "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\microsoft.system.package.metadata\"
echo y|takeown /f "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\resources.pri"
echo y|icacls "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\resources.pri" /grant administrators:F
del "%windir%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy\resources.pri" /f
echo y|takeown /f "%ProgramFiles(x86)%\Windows Defender\*.*"
echo y|icacls "%ProgramFiles(x86)%\Windows Defender\*.*" /grant administrators:F
rd /s /q "%ProgramFiles(x86)%\Windows Defender\"
echo y|takeown /f "%ProgramFiles%\Windows Defender\*.*"
echo y|icacls "%ProgramFiles%\Windows Defender\*.*" /grant administrators:F
rd /s /q "%ProgramFiles%\Windows Defender\"
echo y|takeown /f "%ProgramFiles%\Windows Defender Advanced Threat Protection\*.*"
echo y|icacls "%ProgramFiles%\Windows Defender Advanced Threat Protection\*.*" /grant administrators:F
rd /s /q "%ProgramFiles%\Windows Defender Advanced Threat Protection\"
echo y|takeown /f "%ALLUSERSPROFILE%\Microsoft\Windows Defender\*.*"
echo y|icacls "%ALLUSERSPROFILE%\Microsoft\Windows Defender\*.*" /grant administrators:F
rd /s /q "%ALLUSERSPROFILE%\Microsoft\Windows Defender\"
echo y|takeown /f "%ALLUSERSPROFILE%\Microsoft\Windows Defender Advanced Threat Protection\*.*"
echo y|icacls "%ALLUSERSPROFILE%\Microsoft\Windows Defender Advanced Threat Protection\*.*" /grant administrators:F
rd /s /q "%ALLUSERSPROFILE%\Microsoft\Windows Defender Advanced Threat Protection\"
taskkill /im smartscreen.exe /f
echo y|takeown /f "%windir%\System32\smartscreen.exe"
echo y|icacls "%windir%\System32\smartscreen.exe" /grant administrators:F
del "%windir%\System32\smartscreen.exe" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SecurityHealthService" /v Start /t reg_dword /d 00000004 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v Start /t reg_dword /d 00000004 /f
PAUSE
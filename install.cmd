@echo off
SET DIR=%~dp0%

%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1','install.ps1'))"
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%install.ps1' %*"
SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin


call RefreshEnv

REM PVM Requirement:
echo. > %DIR%sqlxml.msi.log
msiexec.exe /i sqlxml.msi /QN /L*V %DIR%sqlxml.msi.log


choco install --execution-timeout=10800 -y %DIR%packages.config

echo.
echo.
echo "You should probably reboot to ensure that any environment variables are properly accessible by the installed software."
echo.
pause

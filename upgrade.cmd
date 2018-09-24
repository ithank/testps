@echo off
REM ********************************************************
REM   This script may be of limited use as Administrator
REM   access to the computer is required
REM ********************************************************

SET DIR=%~dp0%

choco upgrade all --except="'sql-server-management-studio,visualstudio2015professional,resharper'" -y

echo.
echo.
echo "Upgrade complete."
echo.
pause

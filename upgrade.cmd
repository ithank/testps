@echo off
SET DIR=%~dp0%

choco upgrade all --except="'sql-server-management-studio,visualstudio2015professional,resharper'" -y

pause

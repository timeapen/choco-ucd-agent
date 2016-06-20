@echo off
SET DIR=%~dp0%
@Powershell -Command "& Unblock-File '%DIR%setup.ps1'"
@PowerShell -NoProfile -ExecutionPolicy unrestricted -Command "& '%DIR%setup.ps1' %*"
pause

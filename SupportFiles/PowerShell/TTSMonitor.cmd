@echo off
cls
echo.

powershell.exe -ExecutionPolicy Bypass -File "C:\Thrustmaster\ED_TargetScript_T16000\SupportFiles\PowerShell\TTSMonitor.ps1"

rem pause to catch startup errors
pause

exit 


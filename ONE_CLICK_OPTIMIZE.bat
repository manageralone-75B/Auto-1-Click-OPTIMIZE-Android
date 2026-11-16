@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist "%~dp0one_click_optimize.ps1" (
    echo [X] one_click_optimize.ps1 not found in this folder.
    pause
    exit /b 1
)
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& { Get-ChildItem -LiteralPath '%~dp0' -Filter *.ps1 | Unblock-File; & '%~dp0one_click_optimize.ps1' }"
echo.
echo Press any key to close this window...
pause >nul

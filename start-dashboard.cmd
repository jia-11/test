@echo off
chcp 65001 >nul
title Tablet Dashboard Local Server
cd /d "%~dp0"

set PORT=8080

echo.
echo ==========================================
echo   Tablet Dashboard Local Server
echo ==========================================
echo.
echo Folder: %CD%
echo Port:   %PORT%
echo.
echo Local test URL:
echo   http://127.0.0.1:%PORT%
echo.
echo Keep this window open while using the dashboard.
echo Press Ctrl+C to stop the server.
echo.

where py >nul 2>&1
if %ERRORLEVEL%==0 (
    start "" cmd /c "timeout /t 2 /nobreak >nul & start http://127.0.0.1:%PORT%"
    py -m http.server %PORT% --bind 0.0.0.0
    goto :end
)

where python >nul 2>&1
if %ERRORLEVEL%==0 (
    start "" cmd /c "timeout /t 2 /nobreak >nul & start http://127.0.0.1:%PORT%"
    python -m http.server %PORT% --bind 0.0.0.0
    goto :end
)

echo ERROR: Python was not found on this computer.
echo Install Python 3, then run this file again.
echo.
pause

:end

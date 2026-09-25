@echo off
title StreamHub - Local Server
cd /d "%~dp0"

where py >nul 2>nul
if %errorlevel%==0 (
    start "StreamHub Server" cmd /k "py -m http.server 8080"
    timeout /t 2 /nobreak >nul
    start "" "http://localhost:8080/index.html"
    exit
)

where python >nul 2>nul
if %errorlevel%==0 (
    start "StreamHub Server" cmd /k "python -m http.server 8080"
    timeout /t 2 /nobreak >nul
    start "" "http://localhost:8080/index.html"
    exit
)

echo.
echo لم يتم العثور على Python في جهازك.
echo.
echo اذا كان Python مثبتاً، تأكد من تفعيل Python في PATH.
echo.
pause

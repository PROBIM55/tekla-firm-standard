@echo off
:: укажите версию и путь к серверу
set VERSION=2025.0
set SERVER_FILE=\\62.113.36.107\BIM_Models\Tekla\02_ЏЂЏЉЂ ”€ђЊ›\01_XS_FIRM\user.ini
set LOCAL_DIR=%LOCALAPPDATA%\Trimble\Tekla Structures\%VERSION%\UserSettings

:: создаем папку, если ее нет, и копируем файл
if not exist "%LOCAL_DIR%" mkdir "%LOCAL_DIR%"
copy /y "%SERVER_FILE%" "%LOCAL_DIR%\user.ini"

echo Gotovo!
pause
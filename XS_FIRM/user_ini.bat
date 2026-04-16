@echo off
:: укажите версию и путь к серверу
set VERSION=2025.0
set SERVER_FILE=c:\Company\TeklaFirm\user.ini
set LOCAL_DIR=%LOCALAPPDATA%\Trimble\Tekla Structures\%VERSION%\UserSettings

:: создаем папку, если ее нет
if not exist "%LOCAL_DIR%" mkdir "%LOCAL_DIR%"

:: проверяем наличие исходного файла и копируем
if exist "%SERVER_FILE%" (
    copy /y "%SERVER_FILE%" "%LOCAL_DIR%\user.ini"
    echo Gotovo!
) else (
    echo Error: Server file not found!
)

pause
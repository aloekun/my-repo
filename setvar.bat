@echo off
setlocal

:: コマンドライン引数が不足している場合のエラーメッセージ
if "%~2"=="" (
    echo Usage: setvar variable command
    exit /b 1
)

:: コマンドの出力を変数に格納
for /f "delims=" %%i in ('%~2') do (
    endlocal
    set "%~1=%%i"
)

:: バッチファイルの終了

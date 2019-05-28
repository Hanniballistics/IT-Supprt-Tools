@echo off
TITLE North Coast: Clear Temp Folder
color a
setlocal
call :Clear_Folder %SystemRoot%\TEMP
pushd C:\Users
for /d %%k in (*) do if exist "%%k\AppData\Local\Temp" call :Clear_Folder "%%k\AppData\Local\Temp"
popd
endlocal
goto :EOF
PAUSE

:Clear_Folder
pushd "%~1"
for /d %%i in (*) do rd /s /q "%%i"
del /f /q *
popd
goto :EOF
PAUSE

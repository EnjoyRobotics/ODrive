@ECHO off
GOTO start
:find_dp0
SET dp0=%~dp0
EXIT /b
:start
SETLOCAL
CALL :find_dp0
"C:\Users\asti\AppData\Roaming\xPacks\@xpack-dev-tools\openocd\0.11.0-5.1\.content\bin\openocd.exe"   %*

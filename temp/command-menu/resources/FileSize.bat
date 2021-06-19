cls
@echo off
if not defined cfspath goto ext
if not defined cfsfilename goto ext
title Custom file size
echo 				---------------------------------------------
echo.
echo                  			   Custom file size generator
echo.
echo 				---------------------------------------------
echo.
echo.
echo File will be located in %cfspath%
echo You can change name or path in settings!
echo 1 MB = 1000000 B
echo.
set /p cfsize=Enter your file size (in bytes):
fsutil file createNew %cfspath%\%cfsfilename% %CFsize%
pause


:ext
cd..
menu.bat
exit
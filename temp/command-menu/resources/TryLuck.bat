@echo off
mode con cols=120 lines=30
cls
title Try your luck 
:tlmain
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
echo 1 = 0 to 10
echo 2 = 0 to 50
echo 3 = 0 to 100
echo 4 = 0 to ??? (custom)
echo 5 = exit
set /p mode=mode:
if %mode%==1 goto tl1
if %mode%==2 goto tl2
if %mode%==3 goto tl3
if %mode%==4 goto tl4
if %mode%==5 goto ext
if %mode%==6 goto scrt
goto tlmain
:tl1
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
set /a randm1=%random% %% 10
set /p randm11=Enter you guess:
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
echo Random picked number: %randm1%
echo Your number: %randm11%
echo %randm1%-%randm11%
if %randm1%==%randm11% echo You win! & timeout 2 /nobreak >nul
pause
goto tlmain

:tl2
cls
rem 50
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
set /a randm0=%random% %% 50
set /p randm00=Enter you guess:
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
echo Random picked number: %randm0%
echo Your number: %randm00%
echo %randm0%-%randm00%
if %randm0%==%randm00% echo You win! & timeout 2 /nobreak >nul
pause
goto tlmain

:tl3
cls
rem 100
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
set /a randm2=%random% %% 100
set /p randm22=Enter you guess:
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
echo Random picked number: %randm2%
echo Your number: %randm22%
echo %randm2%-%randm22%
if %randm2%==%randm22% echo You win! & timeout 2 /nobreak >nul
pause
goto tlmain

:tl4
cls
rem custom
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
set /p setcus=Max. number:
set /a randmcus=%random% %% %setcus%
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
echo Max. number is %setcus%
set /p randmcus2=Enter you guess:
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
echo First random picked number: %randmcus%
echo Your number: %randmcus2%
echo %randmcus%-%randmcus2%
if %randmcus%==%randmcus2% echo You win! & timeout 2 /nobreak >nul
pause
goto tlmain

:scrt
cls
echo 				---------------------------------------------
echo.
echo                  			      Try your luck game
echo.
echo 				---------------------------------------------
echo why 6???
pause
goto tlmain

:ext
cd..
menu.bat
exit
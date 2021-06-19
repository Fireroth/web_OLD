echo off
mode con cols=120 lines=30
:guessgm
title Guessing game
cls
echo 				---------------------------------------------
echo.
echo                  				Guessing Game
echo.
echo 				---------------------------------------------
echo 1 = 0-25
echo 2 = 0-50
echo 3 = 0 to ??? (custom)
echo 4 = exit
set /p mode005=Enter mode:
if %mode005%==1 cls & goto 10typeguess
if %mode005%==2 cls & goto 20typeguess
if %mode005%==3 cls & goto cstmguess
if %mode005%==4 cls & goto ext

goto guessgm

:10typeguess
set cheat=false
set /a randm17=%random% %% 25
title Guessing Game
set /a guessnum=0
set /a answer=%randm17%
set variable1=igiveup
echo Try and Guess my Number! 

:top
echo. 
set /p guess=Enter guess:
echo. 
set /a guessnum=%guessnum% +1
if %guess%==%variable1% goto gvup
if %guess% GTR %answer% echo Lower! 
if %guess% LSS %answer% echo Higher! 
if %guess%==%answer% goto correct
goto top

:correct
cls
echo Congratulation
echo It was %answer%
echo It took you %guessnum% guesses. 
if %cheat%==true goto cheater
echo. 
pause
goto guessgm

:gvup 
echo Okay, the answer is: %answer%
set cheat=true
goto top

:cheater
cls
echo Congratulation
echo It was %answer%
echo But you cheat :(
echo. 
pause
goto guessgm



:20typeguess
set cheat0=false
set /a randm170=%random% %% 50
title Guessing Game
set /a guessnum0=0
set /a answer0=%randm170%
set variable10=igiveup
echo Try and Guess my Number! 

:top0
echo. 
set /p guess0=Enter guess:
echo. 
set /a guessnum0=%guessnum0% +1
if %guess0%==%variable10% goto gvup0
if %guess0% GTR %answer0% echo Lower! 
if %guess0% LSS %answer0% echo Higher! 
if %guess0%==%answer0% goto correct0
goto top0

:correct0
cls
echo Congratulation
echo It was %answer0%
echo It took you %guessnum0% guesses. 
if %cheat0%==true goto cheater0
echo. 
pause
goto guessgm

:gvup0 
echo Okay, the answer is: %answer0%
set cheat0=true
goto top0

:cheater0
cls
echo Congratulation
echo It was %answer0%
echo But you cheat :(
echo. 
pause
goto guessgm

:cstmguess
cls
set /p maxnmbr00=Max number:
set cheat1=false
set /a randm17=%random% %% %maxnmbr00%
title Guessing Game
set /a guessnum1=0
set /a answer1=%randm17%
set variable11=igiveup
echo Try and Guess my Number! 

:top1
echo. 
set /p guess1=Enter guess:
echo. 
set /a guessnum1=%guessnum1% +1
if %guess1%==%variable11% goto gvup1
if %guess1% GTR %answer1% echo Lower! 
if %guess1% LSS %answer1% echo Higher! 
if %guess1%==%answer1% goto correct1
goto top1

:correct1
cls
echo Congratulation
echo It was %answer1%
echo It took you %guessnum1% guesses. 
if %cheat1%==true goto cheater1
echo. 
pause
goto guessgm

:gvup1
echo Okay, the answer is: %answer1%
set cheat1=true
goto top1

:cheater1
cls
echo Congratulation
echo It was %answer1%
echo But you cheated :(
echo. 
pause
goto guessgm

:ext
cd..
menu.bat
exit

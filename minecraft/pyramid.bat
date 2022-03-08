@echo off
set /a input1=%~1
set /a input2=(%input1%*2)-1
set /a input1=1
call endPointFormula.bat %input1% %~4
set /a y1=%output1%
set /a y2=%output2%
call endPointFormula.bat %input2% %~3
set /a x1=%output1%
set /a x2=%output2%
call endPointFormula.bat %input2% %~5
set /a z1=%output1%
set /a z2=%output2%
echo.
:loop
echo fill ~%x1% ~%y1% ~%z1% ~%x2% ~%y2% ~%z2% minecraft:%~2 outline

set /a x1=%x1%+1
set /a z1=%z1%+1
set /a y1=%y1%+1

set /a x2=%x2%-1
set /a z2=%z2%-1
set /a y2=%y2%+1

set /a input2=%input2%-2
if %input2% gtr 0 goto loop
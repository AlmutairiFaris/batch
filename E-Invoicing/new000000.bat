@echo off
:top
Echo. A / B = C

set /p "num1=Enter A: "
set /p "num2=Enter B: "

set /a num1=%num1%
set /a num2=%num2%
set /a precision=10000


set /a left=%num1%/%num2%
set /a right=((%num1% %% %num2%)*(%precision%*10))/%num2%

echo.
echo Result:  %left%.%right%

::You can comment this line to disable "Rounding"
set /a temp=%right% %% 10
::if %right% gtr %precision% if %temp% geq 5 set /a right=(%right%+5)/10
::if %right% gtr %precision% set /a right=%right%/10


echo Result:  %left%.%right%
echo.
pause
echo.
goto top
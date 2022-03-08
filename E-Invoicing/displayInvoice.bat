@echo off


::This prints items of invoice with cost of each.
::This prints total of costs
if exist temp\Invoice (

cd temp\Invoice


echo Price	Qty	Cost	  Name
for /f "tokens=1,2,3,* delims=," %%i in ('forfiles /P . /M * /C "cmd /c type @file"') do (
call :dema %%i" "%%j" "%%k
)

echo.
call :taxAndTotals

if exist total.txt del total.txt
if exist qty.txt del qty.txt

) else echo There's nothing to display.

pause
exit /b 0

:taxAndTotals
call :totalDoubles total.txt
::Take 1st double
for /f "tokens=1,2* delims=." %%i in (total.txt) do (
set /a "al=%%i+0"
set /a "ar=%%j+0"
)

call :printTotal ______Total total.txt
call :multiplyDoubles "%al%.%ar%" "0.15"
echo __Tax (15%%^):	%cl%.%cr%

call :multiplyDoubles "%al%.%ar%" "1.15"
echo Total ^& Tax:	%cl%.%cr%

call :printTotal ________Qty qty.txt

exit /b 0

:tile

call :multiplyDoubles "%~3" "%~4"

set name=%~1
set size=%~2
set price=%al%.%ar%
set qty=%bl%.%br%
set cost=%cl%.%cr%
::Format results
echo %size: =%	%price%	%qty%	%cost%	  %name%

echo.%cl%.%cr%>>total.txt
echo.%bl%.%br%>>qty.txt

exit /b 0


:dema

call :multiplyDoubles "%~2" "%~3"

set name=%~1
set price=%al%.%ar%
set qty=%bl%.%br%
set cost=%cl%.%cr%
::Format results
echo %price%	%qty%	%cost%	  %name%

echo.%cl%.%cr%>>total.txt
echo.%bl%.%br%>>qty.txt

exit /b 0


::This sums all doubles in a column.
:totalDoubles

set /a tl=0
set /a tr=0

::Calculate total
if exist %~1 for /f "tokens=1,2* delims=." %%i in (%~1) do (
set /a "tl+=%%i"
set /a "tr+=%%j"
)

::Adjust total
set /a tl=%tl%+(%tr%/100)
set /a tr=%tr%%%100

::Save total
echo.%tl%.%tr%>%~1

exit /b 0


:properRightDecimal

set decimal=%~1

if "%decimal%" equ "" set "decimal=0"

::take 1st and 2nd char ('90'0000 to 90) ('90' to 90) ('00'090 to 00) ('09'00 to 09)(' 9' to ' 9')
set decimal=%decimal%00
set decimal=%decimal:~0,2%

::Remove 1st char if it's a zero (09 to ' 9') (90 to 90) (00 to ' 0') (' 9' to ' 9')
if "%decimal%" neq "0" if "%decimal:~0,1%" equ "0" set decimal=%decimal:~1%

::("" to "0")
if "%decimal%" equ "" set /a "decimal=0"

set /a "decimal=%decimal%"

::OUTPUT
set %~2=%decimal%
::echo %decimal%
exit /b 0


:properLeftDecimal

set decimal=%~1

if "%decimal%" equ "" set "decimal=0"

::Remove zeros from left part (09 to 9) (009 to 9) (0000 to 0)
:pld
set decimal=%decimal: =%
if "%decimal%" neq "0" if "%decimal:~0,1%" equ "0" set decimal=%decimal:~1% & goto pld

::("" to "0")
if "%decimal%" equ "" set /a "decimal=0"

set /a "decimal=%decimal%"

::OUTPUT
set %~2=%decimal%
::echo %decimal%
exit /b 0






::This multiplies two doubles

:multiplyDoubles


::echo 0 - (%~1) * (%~2)

::Take 1st double
call :doubleDecimal "%~1" "al" "ar"

::Take 2nd double
call :doubleDecimal "%~2" "bl" "br"

::Multiply
set /a ll=%al%*%bl%
set /a rl=%ar%*%bl%
set /a lr=%al%*%br%
set /a rr=%ar%*%br%

set /a cl=(%ll%*1)+(%rl%/100)   +(%lr%/100)   +(%rr%*0)
set /a cr=(%ll%*0)+(%rl% %% 100)+(%lr% %% 100)+(%rr%/100)

set /a cl=%cl% + (%cr%/100)
set /a cr=%cr% %% 100

if %ar% lss 10 set ar=0%ar%
if %br% lss 10 set br=0%br%
if %cr% lss 10 set cr=0%cr%
::echo (%al%.%ar%) * (%bl%.%br%) = (%cl%.%cr%)
::pause
exit /b 0

:doubleDecimal

for /f "tokens=1,2* delims=." %%i in ("%~1") do (
call :properLeftDecimal "%%i" "%~2"
call :properRightDecimal "%%j" "%~3"
)

exit /b 0



:printTotal
call :totalDoubles %~2
if exist total.txt for /f "tokens=1,2* delims=." %%i in (%~2) do (
echo %~1:	%%i.%%j
)
exit /b 0
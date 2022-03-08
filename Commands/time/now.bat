@echo off

::DATE
set weekday=%date:~0,3%
set month=%date:~4,2%
set day=%date:~7,2%
set year=%date:~10,4%

::TIME
set hour=%time:~0,2%
set hour=%hour: =0%
set minute=%time:~3,2%
set second=%time:~6,2%
set milisecond=%time:~9,2%

::PRINT
echo %date%
echo TIME: %hour%:%minute%:%second%		DATE: %year%/%month%/%day%
echo TIME: %hour%:%minute%:%second%		DATE: %date:~0,4%/%date:~5,2%/%date:~8,2%
pause

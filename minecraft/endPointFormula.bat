::endPoint = (|startPoint|+Steps-1)*(startPoint/|startPoint|)
::set /a end=(%abs%+%size%-1)*%sign%


@echo off
set /a output1=%~2
cd ../math/
call sign.bat %output1%
cd ../minecraft/
set /a output2=(%abs%+%~1-1)*%sign%
@echo off

:: Shutdown any task that start with [sql, perl, oracle], check if they are running every 120 seconds


:top
cls

tasklist /FI "IMAGENAME eq sql*"
tasklist /FI "IMAGENAME eq perl*"
tasklist /FI "IMAGENAME eq orac*"

choice /T 10 /D y


taskkill /F /FI "IMAGENAME eq sql*"
taskkill /F /FI "IMAGENAME eq perl*"
taskkill /F /FI "IMAGENAME eq orac*"


choice /T 120 /D y

goto :top

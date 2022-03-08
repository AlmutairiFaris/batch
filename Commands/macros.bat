@echo off
reg add "HKCU\Software\Microsoft\Command Processor" /v Autorun /d "doskey /macrofile=\"C:\Users\farsm\Commands\macros.doskey\"" /f
reg query "HKCU\Software\Microsoft\Command Processor" /v Autorun
cmd
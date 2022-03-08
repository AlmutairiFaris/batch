@echo off
if exist temp (
cd temp
tree /f
) else echo There's nothing to display.
pause
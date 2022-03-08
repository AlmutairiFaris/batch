@echo off

set num=01000

echo (  1  ):	"%num:~1%"	all, but 1st char
echo ( -1  ):	"%num:~-1%"	last char
::echo (  0  ):	"%num:~0%"	all

echo ( 1, 1):	"%num:~1,1%"	2nd char
echo ( 1,-1):	"%num:~1,-1%"	all, but 1st and last chars
::echo (-1, 1):	"%num:~-1,1%"	last char
::echo (-1,-1):	"%num:~-1,-1%"	?

::echo ( 1, 0):	"%num:~1,0%"	?
::echo (-1, 0):	"%num:~-1,0%"	?

echo ( 0, 1):	"%num:~0,1%"	1st char
echo ( 0,-1):	"%num:~0,-1%"	all, but last char
echo ( 0, 2):	"%num:~0,2%"	1st and 2nd char

::echo ( 0, 0):	"%num:~0,0%"	?

pause
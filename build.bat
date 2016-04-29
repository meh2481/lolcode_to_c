@echo off
echo -------FLEX
flex lolcode.l
if %errorlevel% neq 0 goto exit

echo -------YACC
bison -v -d lolcode.y
if %errorlevel% neq 0 goto exit

echo --------G++
g++ -o lolcode lolcode.c lex.yy.c lolcode.tab.c

:exit

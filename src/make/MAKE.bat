@echo off
color 0a

:loop
echo ��ǰ֧�����¹�����
echo 0=����
echo 1=libmodbus
echo 2=duktape
echo 3=lua
echo 4=libmodbus_lua
echo 5=sqlite3
echo .  
set /p target=��ѡ�񹹽�Ŀ�꣺
if /i "%target%" == "0" goto all
if /i "%target%" == "1" goto libmodbus
if /i "%target%" == "2" goto duktape
if /i "%target%" == "3" goto lua
if /i "%target%" == "4" goto libmodbus_lua
if /i "%target%" == "5" goto sqlite3
echo �����ѡ��һ��Ŀ�� goto loop

:all
mingw32-make -f MAKE
goto end

:libmodbus
echo ��ʼ����libmodbus��̬��
mingw32-make -f MAKE libmodbus
goto end

:duktape
echo ��ʼ����duktape��̬��
mingw32-make -f MAKE duk-all
goto end

:lua
echo ��ʼ����lua��̬��
mingw32-make -f MAKE lua
goto end

:libmodbus_lua
echo ��ʼ����libmodbus-lua��̬��
mingw32-make -f MAKE libmodbus_lua
goto end

:sqlite3
echo ��ʼ����sqlite3��̬��
mingw32-make -f MAKE sqlite3
goto end


:end
pause
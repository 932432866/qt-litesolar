@echo off

:loop
set /p target=��ѡ�񹹽�Ŀ�꣺0=���У�1=libmodbus��2=duktape;3=lua;4=libmodbus_lua
if /i "%target%" == "0" goto all
if /i "%target%" == "1" goto libmodbus
if /i "%target%" == "2" goto duktape
if /i "%target%" == "3" goto lua
if /i "%target%" == "4" goto libmodbus_lua
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

:end
pause
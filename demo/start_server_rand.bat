@echo off
set curpath=%~dp0

set KBE_ROOT=%curpath:~0,-5%
set KBE_RES_PATH=%KBE_ROOT%kbe/res/;%KBE_ROOT%demo/;%KBE_ROOT%demo/scripts/;%KBE_ROOT%demo/res/
set KBE_BIN_PATH=%KBE_ROOT%kbe/bin/server/

set uid=%random%%%32760+1

call "kill_server.bat"

echo KBE_ROOT = %KBE_ROOT%
echo KBE_RES_PATH = %KBE_RES_PATH%
echo KBE_BIN_PATH = %KBE_BIN_PATH%

start %KBE_BIN_PATH%/kbmachine.exe
start %KBE_BIN_PATH%/billingsystem.exe
#ping 127.0.0.1 -n 1
#start %KBE_BIN_PATH%/messagelog.exe
ping 127.0.0.1 -n 1
start %KBE_BIN_PATH%/dbmgr.exe
ping 127.0.0.1 -n 2
start %KBE_BIN_PATH%/baseappmgr.exe
ping 127.0.0.1 -n 1
start %KBE_BIN_PATH%/cellappmgr.exe
ping 127.0.0.1 -n 1
start %KBE_BIN_PATH%/baseapp.exe
ping 127.0.0.1 -n 1
start %KBE_BIN_PATH%/cellapp.exe
ping 127.0.0.1 -n 1
start %KBE_BIN_PATH%/loginapp.exe
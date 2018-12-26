@echo off
set mainfolder=%CD%
set serverfolder=WorldServer
set server_binary=NexusForever.WorldServer.exe

cd %mainfolder%\Server\%serverfolder%
%server_binary%
pause
exit
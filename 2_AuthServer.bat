@echo off
set mainfolder=%CD%
set serverfolder=AuthServer
set server_binary=NexusForever.AuthServer.exe

cd %mainfolder%\Server\%serverfolder%
%server_binary%
pause
exit
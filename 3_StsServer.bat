@echo off
set mainfolder=%CD%
set serverfolder=StsServer
set server_binary=NexusForever.StsServer.exe

cd %mainfolder%\Server\%serverfolder%
%server_binary%
pause
exit
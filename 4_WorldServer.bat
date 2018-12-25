@echo off
set mainfolder=%CD%
set serverfolder=WorldServer
set server_binary=NexusForever.WorldServer.dll

cd %mainfolder%\Server\%serverfolder%
dotnet %server_binary%
pause
exit
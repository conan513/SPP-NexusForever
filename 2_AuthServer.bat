@echo off
set mainfolder=%CD%
set serverfolder=AuthServer
set server_binary=NexusForever.AuthServer.dll

cd %mainfolder%\Server\%serverfolder%
dotnet %server_binary%
pause
exit
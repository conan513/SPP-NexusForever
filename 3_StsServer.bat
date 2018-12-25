@echo off
set mainfolder=%CD%
set serverfolder=StsServer
set server_binary=NexusForever.StsServer.dll

cd %mainfolder%\Server\%serverfolder%
dotnet %server_binary%
pause
exit
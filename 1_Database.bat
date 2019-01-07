@echo off
SET NAME=SingleCore Database Server
TITLE %NAME%
set mainfolder=%CD%

:start_database
cls
if not exist "%mainfolder%\Server\Database\bin\mysqld.exe" goto install_database
copy "%mainfolder%\tools\connection.cnf" "%mainfolder%\Server\Database"
start import_updates.bat
cd %mainfolder%\Server\Database
bin\mysqld --defaults-file=my-large.ini --console --standalone
exit

:install_database
cls
echo Installing database server...
echo.
cd "%mainfolder%\Server"
"%mainfolder%\Tools\7za.exe" e -y -spf "%mainfolder%\Tools\Database.7z"
goto start_database
@echo off
set mainfolder=%CD%
set characters=nexus_forever_character

echo Importing database updates...
ping -n 10 127.0.0.1>nul
for %%i in ("%mainfolder%\sql\updates\Character\*sql") do if %%i neq "%mainfolder%\sql\updates\Character\*sql" if %%i neq "%mainfolder%\sql\updates\Character\*sql" if %%i neq "%mainfolder%\sql\updates\Character\*sql" echo %%i & "%mainfolder%\Database\bin\mysql.exe" --defaults-extra-file="%mainfolder%\Server\Database\connection.cnf" --default-character-set=utf8 -f --local-infile %characters% --database=%characters% < %%i
exit
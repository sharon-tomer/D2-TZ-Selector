@echo off
echo Please select a datetime:
echo [Andi] 01-11-24 23:00:00
echo [Trav] 01-10-24 07:00:00
echo [Meph] 01-11-24 06:00:00
echo [Chaos] 01-11-24 08:00:00
echo [Baal] 01-11-24 00:00:00
echo [Moo] 01-11-24 21:00:00
echo [Auto] Synchronize with Internet time server

set /p choice="Enter your choice (Andi, Trav, Meph, Chaos, Baal, Moo, Auto): "

if /i "%choice%"=="Andi" set _datetime=01-11-24 23:00:00
if /i "%choice%"=="Trav" set _datetime=01-10-24 07:00:00
if /i "%choice%"=="Meph" set _datetime=01-11-24 06:00:00
if /i "%choice%"=="Chaos" set _datetime=01-11-24 08:00:00
if /i "%choice%"=="Baal" set _datetime=01-11-24 00:00:00
if /i "%choice%"=="Moo" set _datetime=01-11-24 21:00:00
if /i "%choice%"=="Auto" goto :synchronize

if not "%_datetime%"=="" (
    date %_datetime:~0,8%
    time %_datetime:~9,8%
)
goto :eof

:synchronize
w32tm /resync

:eof

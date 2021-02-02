@echo off

%~d0
cd %~dp0
set path=%path%;%~dp0\bin\

gn gen build

::del build\build\plugin.o /q >nul 2>&1

ninja -C "build" -j 5

:: copy out\*.dll ...

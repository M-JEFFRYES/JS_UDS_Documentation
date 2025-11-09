@echo off
set "batchFileDir=%~dp0"
echo %batchFileDir%
rem Remove trailing backslash if it exists
if "%batchFileDir:~-1%"=="\" (
    set "batchFileDir=!batchFileDir:~0,-1!"
)

rem Use the "for" loop to extract the parent directory
for %%A in ("%batchFileDir%\..") do set "parentDir=%%~dpA"

rem Get file paths
set "source_file=%parentDir%Document\main.pdf"
set "destination_file=%parentDir%Urodynamics without borders guide (Latest Version).pdf"

echo "%source_file%"
if not exist "%source_file%" (
    echo Source file "main.pdf" not found in the "Documents" directory.
    pause
    exit /b 1
)
copy "%source_file%" "%destination_file%"

exit /b 0
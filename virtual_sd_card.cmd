@echo off

title Wii Modpack v2.4 :: Virtual SD Card Test Environment

color 0e


::codebase v1.2

:: Setting default mount and unmount status
::set mstatus=0
::set umstatus=0

:selectmain
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Virtual SD Card
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
if %umstatus%==fail echo Virtual SD Card Could Not Be Removed! Please Try Again!
if %umstatus%==fail color 0c
if %umstatus%==success echo Virtual SD Card Could Has Been Successfully Removed!
if %umstatus%==success color 0a

if %mstatus%==fail echo Virtual SD Card Has Not Been Installed!
if %mstatus%==fail color 0c
if %mstatus%==success echo Virtual SD Card Has Been Sucessfully Installed!
if %mstatus%==success color 0a

:: Setting default mount and unmount status
::set mstatus=0
::set umstatus=0


echo.
echo Please select an action:
echo.
echo.
echo.
echo 1) Install Virtual SD Card
echo.
echo.
echo 2) Remove Virtual SD Card
echo.
echo.
echo 3) Return To Main Menu
echo.
echo.
echo.
echo.
set action=

choice /c 123 /n

if errorlevel 3 goto end
if errorlevel 2 goto unmount
if errorlevel 1 goto mount




:mount

set virtualsd=1

color 0e
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Virtual SD Card :: Mount :: Get Drive Letter
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please type the letter ONLY of the Virtual SD Card and press ENTER:
echo.
echo.
echo THIS MUST BE A LETTER NOT USED BY WINDOWS!
echo.
echo.
echo Example: X
echo.
echo.
echo.
set /p drive=

if exist %drive%:\ goto mount


cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Virtual SD Card :: Mount :: Set Target Folder
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please drag the folder you want to link to into this window and press ENTER:
echo.
echo.
echo THIS IS A FOLDER THAT YOUR NEW DRIVE LETTER WILL POINT TO.
echo.
echo.
echo YOU CAN ALSO TYPE IN A PATH MANUALLY AND IT WILL BE CREATED!
echo.
echo.
echo Example: c:\sdtest
echo.
echo.
::set /p folder=

set folder=c:\sdtest

if not exist "%folder%" md "%folder%"

subst "%drive%:" ""%folder%""


cls
if %errorlevel%==1 set mstatus=fail
if %errorlevel%==0 set mstatus=success

goto selectmain




:unmount
color 0e
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Virtual SD Card :: Unmount
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please type the letter ONLY of the Virtual SD Card and press ENTER:
echo.
echo.
echo THIS MUST BE A LETTER THAT IS CURRENTLY MOUNTED!
echo.
echo.
echo Example: X
echo.
echo.
echo.
set /p drive=

if not exist %drive%:\ goto unmount

subst /d "%drive%:"

cls
if %errorlevel%==1 set umstatus=fail
if %errorlevel%==0 set umstatus=success

set virtualsd=0

goto selectmain




:end

::subst /d "%drive%:"
::rmdir /s /q %folder%






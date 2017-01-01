@echo off

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w

color 0e

mode con lines=33


set pack=install\rar.exe a -ep -ep1 -y -m5
set unpack=install\rar.exe x -y

set recoveryfiles=recovery_files.rar



:sysmenu1
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Updates and Recovery :: Page 1
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please select your system menu version:
echo.
echo.
echo 1) System Menu v097 (2.0U)
echo.
echo 2) System Menu v193 (2.2U)
echo.
echo 3) System Menu v225 (3.0U)
echo.
echo 4) System Menu v257 (3.1U)
echo.
echo 5) System Menu v289 (3.2U)
echo.
echo 6) System Menu v353 (3.3U)
echo.
echo 7) System Menu v385 (3.4U)
echo.
echo.
echo.
echo 8) Next Page
echo.
echo 9) Return To Main Menu
echo.

choice /c 123456789 /n

if errorlevel 9 goto end
if errorlevel 8 goto sysmenu2
if errorlevel 7 goto 34u
if errorlevel 6 goto 33u
if errorlevel 5 goto 32u
if errorlevel 4 goto 31u
if errorlevel 3 goto 30u
if errorlevel 2 goto 22u
if errorlevel 1 goto 20u



:sysmenu2
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Updates and Recovery :: Page 2
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please select your system menu version:
echo.
echo.
echo 1) System Menu v417 (4.0U)
echo.
echo 2) System Menu v449 (4.1U)
echo.
echo 3) System Menu v481 (4.2U)
echo.
echo 4) System Menu v513 (4.3U)
echo.
echo.
echo.
echo 5) Previous Page
echo.
echo 6) Return To Main Menu
echo.

choice /c 123456 /n

if errorlevel 6 goto end
if errorlevel 5 goto sysmenu1
if errorlevel 4 goto 43u
if errorlevel 3 goto 42u
if errorlevel 2 goto 41u
if errorlevel 1 goto 40u




:: BEGIN SYSTEM MENU LIST


:20u
cls
title System Menu Loaded: v097 (2.0U)

set sysmenu=20u.rar



goto findsd




:22u
cls
title System Menu Loaded: v193 (2.2U)

set sysmenu=22u.rar



goto findsd




:30u
cls
title System Menu Loaded: v225 (3.0U)

set sysmenu=30u.rar



goto findsd




:31u
cls
title System Menu Loaded: v257 (3.1U)

set sysmenu=31u.rar



goto findsd




:32u
cls
title System Menu Loaded: v289 (3.2U)

set sysmenu=32u.rar



goto findsd




:33u
cls
title System Menu Loaded: v353 (3.3U)

set sysmenu=33u.rar



goto findsd




:34u
cls
title System Menu Loaded: v385 (3.4U)

set sysmenu=34u.rar


goto findsd




:40u
cls
title System Menu Loaded: v417 (4.0U)

set sysmenu=40u.rar


goto findsd



:41u
cls
title System Menu Loaded: v449 (4.1U)

set sysmenu=41u.rar


goto findsd



:42u
cls
title System Menu Loaded: v481 (4.2U)

set sysmenu=42u.rar


goto findsd



:43u
cls
title System Menu Loaded: v513 (4.3U)

set sysmenu=43u.rar


goto findsd


:: END SYSTEM MENU LIST






::Find SD Card Drive Letter
:findsd

cls
echo Please enter the letter ONLY of your SD Card and press ENTER:
echo.
echo.
echo.
echo.
set /p sd=



:: Formatting SD Card To FAT32
if %virtualsd%==0 call "format_sd.cmd"



:: Begin copying files to SD Card
:copy1

cd "%sd%:\"


cls
echo Copying Files to %sd%:\
echo.
echo.
echo.
echo.


:: Unpacking Recovery Files

%unpack% "recovery\%sysmenu%" "%sd%:\"

%unpack% "recovery\%recoveryfiles%" "%sd%:\"



cls
echo Recovery Files Have Finished Transferring!
echo.
echo.
echo Please REMOVE the SD Card and INSERT it into your Wii Console.
echo.
echo.
echo.
echo.
echo Press any key to exit....
echo.
echo.

pause>nul


:end
::exit



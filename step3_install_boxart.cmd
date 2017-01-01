@echo off

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w

color 0e


set pack=install\rar.exe a -ep -ep1 -y -m5
set unpack=install\rar.exe x -y


set boxartsrc=boxart
set boxartdest=usb-loader\covers



:: Wii Boxart
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Boxart
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Install Boxart (Approx Time: 5 - 20 Minutes) [Y/N]?
echo.
echo.
echo.
echo R) Return To Main Menu

choice /c ynr /n

if errorlevel 3 goto exitmain
if errorlevel 2 goto finish
if errorlevel 1 goto findsd

::Find SD Card Drive Letter
:findsd

if %auto%==1 goto autosd

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Find Drive Letter
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please enter the letter ONLY of your SD Card and press ENTER:
echo.
echo.
echo.
echo.
set /p sd=


:autosd

:: Enter SD Card Root
::%sd%:

:: Begin copying files to SD Card
:copy1

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Copy Files
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Copying Files to %sd%:\ 
echo.
echo.
echo.
echo.


%unpack% "%boxartsrc%\2d.rar" "%sd%:\%boxartdest%"
%unpack% "%boxartsrc%\3d.rar" "%sd%:\%boxartdest%"
%unpack% "%boxartsrc%\disc.rar" "%sd%:\%boxartdest%"
%unpack% "%boxartsrc%\full.rar" "%sd%:\%boxartdest%"

:: Gamecube Boxart
::%unpack% "%boxartsrc%\gc.rar" "%sd%:\%boxartdest%"





:finish

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Preparing For Next Step
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Step 3 Finished!
echo.
echo.
echo.
echo Please REMOVE the SD Card and INSERT it into your Wii Console.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
::echo Press any key to exit Step 1 and launch instructions....
echo.
echo.

::pause>nul


:: Launching Further Instructions
::help\step3.txt


:end

call "step4_install_xtras.cmd"

:exitmain

@echo off

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w

color 0e


set pack=install\rar.exe a -ep -ep1 -y -m5
set unpack=install\rar.exe x -y

set alt=xtra_alt_install.rar
set apps=xtra_apps.rar
set channels=xtra_channels.rar
::set emulators_channels=xtra_channels_emulators.rar
set emulators_channels=xtra_channels_emulators.split
set emulators=xtra_emulators.rar
set pc=xtra_pc.rar
set system=xtra_system.rar



::%unpack% "xtras\%alt%" "%sd%:\"


::%unpack% "xtras\%apps%" "%sd%:\"



:askEmu
::Emulators
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Extras :: Emulators
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Install All Available Emulators [Y/N]?
echo.
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



%unpack% "xtras\%emulators%" "%sd%:\"

%unpack% "xtras\%emulators_channels%" "%sd%:\"


::%unpack% "xtras\%pc%" "%sd%:\"


::%unpack% "xtras\%system%" "%sd%:\"




::App Channels
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Extras :: Channels
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Copy App Channels To SD Card [Y/N]?
echo.
echo.
echo.
echo.
echo R) Return To Main Menu

choice /c ynr /n

if errorlevel 3 goto exitmain
if errorlevel 2 goto finish
if errorlevel 1 echo.


%unpack% "xtras\%channels%" "%sd%:\"


:finish

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Preparing For Next Step
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Step 4 Finished!
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
::help\step4.txt



:end

call "step5_cleanup.cmd"

:exitmain


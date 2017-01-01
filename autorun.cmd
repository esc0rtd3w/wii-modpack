@echo off


mode con lines=33

set virtualsd=0
set drive=0

:: Setting default mount and unmount status
set mstatus=0
set umstatus=0


:mainwii
set auto=0


:: Setting Downgrade Success Flag to "0".
:: This will prevent a false downgrade selection
set dgsuccess=0

set downgrade=0

:: Setting format flag to "0" to prevent bannerbomb v2 from skipping format if not downgrading 4.3
set fmtdgbb=0


:: Set external confirmation file for downgrade flag
set dgConfirmFile="%temp%\dg43.confirm"


:: Clean any previous downgrade flag files
if exist %dgConfirmFile% del /f /q %dgConfirmFile%


color 0e

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Main Menu
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please select an option below:
echo.
echo.
echo 1) Complete Wii Mod (Automatically Save Destination SD Drive Letter)
echo.
echo 2) Complete Wii Mod (Always Ask For Destination SD Drive Letter)
echo.
echo.
echo 3) Install BootMii and Homebrew Channel Files To SD Card
echo.
echo 4) Install cIOS WAD Files and Default Apps To SD Card
echo.
echo 5) Install Box Art For Selected USB Loader Apps To SD Card
echo.
echo 6) Install Extras To SD Card (Wii Console Emulators, PC Apps, and More)
echo.
echo 7) Cleanup ALL Temp Files and No Longer Needed Files From SD Card
echo.
echo.
echo 8) Wii Update and Recovery Menu
echo.
echo 9) Test Write To Virtual SD Card (Mount/Unmount Drive Letters)
echo.

choice /c 123456789 /n

if errorlevel 9 goto opt9
if errorlevel 8 goto opt8
if errorlevel 7 goto opt7
if errorlevel 6 goto opt6
if errorlevel 5 goto opt5
if errorlevel 4 goto opt4
if errorlevel 3 goto opt3
if errorlevel 2 goto opt2
if errorlevel 1 goto opt1



:opt1

cls
set auto=1
call "step1_install_HBC.cmd"
goto mainwii

:opt2

cls
set auto=0
call "step1_install_HBC.cmd"
goto mainwii



:opt3

cls
set auto=0
call "step1_install_HBC.cmd"
goto mainwii



:opt4

cls
call "step2_install_WADs.cmd"
goto mainwii



:opt5

cls
call "step3_install_boxart.cmd"
goto mainwii



:opt6

cls
call "step4_install_xtras.cmd"
goto mainwii



:opt7

cls
call "step5_cleanup.cmd"
goto mainwii



:opt8

cls
call "recovery_only.cmd"
goto mainwii



:opt9

cls
call "virtual_sd_card.cmd"
goto mainwii



:end
exit







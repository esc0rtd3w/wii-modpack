@echo off

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w

color 0e


set dfile=del /f /q

set dfolder=rmdir /q /s



cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Clean Temp Files :: Confirmation
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Cleanup ALL Temp Files on SD Card (Recommended) [Y/N]?
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
%sd%:



:: Root Files

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Clean Temp Files :: Root
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Cleaning Up Root Files....

%dfile% "database.txt"
%dfile% "IOS60-64-v6174.wad"
%dfile% "IOS36-64-v3607.wad"
%dfile% "IOS37-64-v5662.wad"
%dfile% "IOS38-64-v4123.wad"
%dfile% "IOS53-64-v5662.wad"
%dfile% "IOS55-64-v5662.wad"
%dfile% "IOS56-64-v5661.wad"
%dfile% "IOS57-64-v5918.wad"
%dfile% "IOS58-64-v6175.wad"
%dfile% "IOS61-64-v5661.wad"


:: Root Folders

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Clean Temp Files :: Folders :: Root
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Cleaning Up Root Folders....

%dfolder% "nus"
%dfolder% "wad"
%dfolder% "wbfs"
%dfolder% "WiiBackupManager"



:: Apps Folder

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Clean Temp Files :: Folders :: Apps
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Cleaning Up App Folders....

%dfolder% "apps\AnyTitleDeleterMOD_v6b"
%dfolder% "apps\cIOSX_rev21-Installer"
%dfolder% "apps\DOP-Mii"
%dfolder% "apps\hackmii_installer_v0.8"
%dfolder% "apps\HomeBrew Channel Loader"
%dfolder% "apps\MMM"
%dfolder% "apps\mymenuify"
%dfolder% "apps\priiloader"
%dfolder% "apps\Wad Manager"
%dfolder% "apps\wiimc-channel-installer"



:: WAD Files

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Clean Temp Files :: WADs
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Cleaning Up WAD Files....





:: Hiding Boot Loader

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Clean Temp Files :: Misc
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Disabling Automatic BootMii....

ren "boot.dol" "__boot.dol"

ren "bootmii" "__bootmii"

md "wad"



:finish

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Finished
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Step 5 Finished!
echo.
echo.
echo.
echo Please REMOVE the SD Card and INSERT it into your Wii Console.
echo.
echo.
echo YOUR WII CONSOLE IS NOW COMPLETELY MODIFIED AND READY!
echo.
echo ENJOY ALL THE NEW THINGS THAT HAVE BEEN UNLOCKED :)
echo.
echo.
echo Press any key to exit....
echo.
echo.

pause>nul


:end

:: Cleanup any leftover virtual sd cards
if not %drive%==0 subst /d "%drive%:"

:: Launching SD Card Folder To View Root
explorer.exe %sd%:

:: Launching Further Instructions
::help\step5.txt

exit


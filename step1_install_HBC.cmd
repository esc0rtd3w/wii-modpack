@echo off

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w

:start

color 0e


set pack=install\rar.exe a -ep -ep1 -y -m5
set unpack=install\rar.exe x -y

set install1=install_1.rar

:: Checking for Downgrade Flag
if %dgsuccess%==1 goto exbb2

:: Setting 4.3 Flag
set downgrade=0

:: Setting Downgrade Success Flag to "0".
:: This will prevent a false downgrade selection
set dgsuccess=0

:: Set external confirmation file for downgrade flag
set dgConfirmFile="%temp%\dg43.confirm"


:: Clean any previous downgrade flag files
::if exist %dgConfirmFile% del /f /q %dgConfirmFile%


cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please select an exploit to use GAME / HACK (SYSTEM VERSION):
echo.
echo If a game is required, you must play the game at least once!
echo.
echo.
echo.
echo 1) Twilight Princess / Twilight Hack (2.0 - 3.4)
echo.
echo 2) SD Card Menu / Bannerbomb (3.0 - 4.2)
echo.
echo 3) Message Center / Letterbomb (4.3)
echo.
echo 4) Lego Batman / BatHaxx (4.3)
echo.
echo 5) Lego Indiana Jones / IndianaPwns (4.3)
echo.
echo 6) Lego Star Wars / Jabba The Haxx (4.3)
echo.
echo 7) Super Smash Bros Brawl / Super Smash Stack (4.3)
echo.
echo 8) Yu-Gi-Oh 5 Wheelie Breakers / Yu-Gi-OWNED (4.3)
echo.
echo.
echo 9) Return To Main Menu

choice /c 123456789 /n

if errorlevel 9 goto exitmain
if errorlevel 8 goto exy5wb
if errorlevel 7 goto exssbb
if errorlevel 6 goto exlsw
if errorlevel 5 goto exlij
if errorlevel 4 goto exlb
if errorlevel 3 goto ltrbomb
if errorlevel 2 goto bnrbomb
if errorlevel 1 goto extp





:: BEGIN EXPLOIT LIST


:extp

:: Setting 4.3 Flag
set downgrade=0

set exploitname=twp
set exploitfile=twilight_princess.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Twilight Hack
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: Legend of Zelda: Twilight Princess / Twilight Hack
echo.
echo Wii System Version: 2.0 - 3.4
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Copy Game Save From SD Card To Wii Console
echo.
echo 2) Start Game and Load Hacked Game Save
echo.
echo 3) Once loaded, walk backwards or talk to the man standing in front of you
echo.
echo 4) HackMii Installer Loads 
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul


goto findsd


:bnrbomb
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Bannerbomb
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please select the appropriate Bannerbomb Version from below:
echo.
echo YOU MUST SELECT THE PROPER EXPLOIT FOR YOUR WII CONSOLE
echo.
echo.
echo.
echo 1) SD Card Menu / Bannerbomb Version 1 (3.0 - 4.1)
echo.
echo 2) SD Card Menu / Bannerbomb Version 2 (4.0 - 4.2)
echo.
echo.
echo 3) Return To Previous Menu

choice /c 123 /n

if errorlevel 3 goto start
if errorlevel 2 goto exbb2
if errorlevel 1 goto exbb1

goto start


:exbb1

:: Setting 4.3 Flag
set downgrade=0

set exploitname=bb1
set exploitfile=bannerbomb_v1.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Bannerbomb :: v1
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: None (SD Card Menu) / Bannerbomb Version 1
echo.
echo Wii System Version: 3.0 - 4.1
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Go into Wii Options - Data Management - Channels - SD Card
echo.
echo 2) A message should appear asking to load "boot.dol/.elf"
echo.
echo 3) HackMii Installer Loads
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul

goto findsd




:exbb2

:: Setting 4.3 Flag
set downgrade=0

set exploitname=bb2
set exploitfile=bannerbomb_v2.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Bannerbomb :: v2
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: None (SD Card Menu) / Bannerbomb Version 2
echo.
echo Wii System Version: 4.0 - 4.2
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Go to the SD Card Menu on the main System Menu screen
echo.
echo 2) A message should appear asking to load "boot.dol/.elf"
echo.
echo 3) HackMii Installer Loads
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul

goto findsd




:exlb


:: Setting 4.3 Flag
set downgrade=1

set exploitname=lbm
set exploitfile=lego_batman.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: BatHaxx
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: Lego Batman / BatHaxx
echo.
echo Wii System Version: 4.3
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Copy Game Save From SD Card To Wii Console
echo.
echo 2) Start Game and Load Hacked Game Save
echo.
echo 3) Once loaded, take the elevator on the right side
echo.
echo 4) In the trophy room, go to the upper corner and go through the door
echo.
echo 5) Enter Wayne Manor. Choose the last enabled character in the lowest row
echo.
echo 6) HackMii Installer Loads
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul

goto findsd




:exlij

:: Setting 4.3 Flag
set downgrade=1

set exploitname=lij
set exploitfile=lego_indiana_jones.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: IndianaPwns
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: Lego Indiana Jones / IndianaPwns
echo.
echo Wii System Version: 4.3
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Copy Game Save From SD Card To Wii Console
echo.
echo 2) Start Game and Load Hacked Game Save
echo.
echo 3) Once loaded, walk down and to the right, in the first door
echo.
echo 4) Walk all the way down the hallway and through the door
echo.
echo 5) Approach the left character on the podium
echo.
echo 6) Choose the two silhouettes, with an arrow pointing between them
echo.
echo 7) HackMii Installer Loads
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul

goto findsd




:exlsw

:: Setting 4.3 Flag
set downgrade=1

set exploitname=lsw
set exploitfile=lego_star_wars_jabba.rar
::set exploitfile2=lego_star_wars_jodi.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Jabba The Haxx
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: Lego Star Wars / Jabba The Haxx
echo.
echo Wii System Version: 4.3
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Copy Game Save From SD Card To Wii Console
echo.
echo 2) Start Game and Load Hacked Game Save
echo.
echo 3) Once loaded, walk to the left, stand in front of jars of water
echo.
echo 4) If you see "press A to hack", then press A
echo.
echo 5) HackMii Installer Loads
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul

goto findsd




:exssbb

:: Setting 4.3 Flag
set downgrade=1

set exploitname=ssb
set exploitfile=super_smash_bros_brawl.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Super Smash Stack
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: Super Smash Bros Brawl / Super Smash Stack
echo.
echo Wii System Version: 4.3
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Load game with SD Card removed, make a save file if asked
echo.
echo 2) Go to the stage builder
echo.
echo 3) Delete all custom stages found, exit the stage builder 
echo.
echo 4) Exit all the way back to the main SSBB menu
echo.
echo 5) Insert SD Card, go back to the stage builder
echo.
echo 6) HackMii Installer Loads
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul

goto findsd




:exy5wb

:: Setting 4.3 Flag
set downgrade=1

set exploitname=ygo
set exploitfile=yugioh5_usa.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Yu-Gi-OWNED
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: Yu-Gi-Oh 5 Wheelie Breakers / Yu-Gi-OWNED
echo.
echo Wii System Version: 4.3
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Copy Game Save From SD Card To Wii Console
echo.
echo 2) Start Game and Load Hacked Game Save
echo.
echo 3) HackMii Installer Loads
echo.
echo.
echo Press any key to begin copying files to SD Card....

pause>nul

goto findsd



:ltrbomb

:: Setting 4.3 Flag
set downgrade=1

set exploitname=letterbomb
set exploitfile=letterbomb.rar

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Letterbomb
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Game/Exploit Loaded: Letterbomb
echo.
echo Wii System Version: 4.3
echo.
echo.
echo Instructions:
echo.
echo.
echo 1) Enter MAC Address Into The Window Following Format
echo.
echo 2) Enter Yesterdays Date Into The Window After That
echo.
echo 3) Enter Your Consoles Region Letter Into The Window After That
echo.
echo 4) Insert SD Card Into Wii Console
echo.
echo 5) Enter Messages Menu and Select Letterbomb From Previous Day
echo.
echo 6) HackMii Installer Loads
echo.
echo 7) Return to Homebrew Channel. Remove SD Card.
echo.
echo.
echo Press any key to create exploit and copy files to SD Card....

pause>nul

goto findsd


:: END EXPLOIT LIST



::Find SD Card Drive Letter
:findsd


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


:: Checking format flag to prevent bannerbomb v2 from asking again from downgrade
if %fmtdgbb%==1 goto copy1


:: Formatting SD Card To FAT32
if %virtualsd%==0 call "format_sd.cmd"

::pause

:: Enter SD Card Root
::%sd%:


:: Begin copying files to SD Card
:copy1

:: Check for Letterbomb
if %exploitname%==letterbomb goto lbombcpy
goto nrmlcopy


:nrmlcopy
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


:: Unpacking HackMii Installer

%unpack% "install\%install1%" "%sd%:\"



:: Unpacking Selected Exploit

%unpack% "exploits\%exploitfile%" "%sd%:\"


goto finish


:lbombcpy

%unpack% "exploits\%exploitfile%" "%temp%"

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Letterbomb :: Extract Files
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Extracting Files to %temp%\letterbomb
echo.
echo.
echo.
echo.


cls
echo Deleting old exploits....
echo.
echo.
if exist "C:\private" rd /s /q "C:\private"


:lbmac
set macaddress=dummy
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Letterbomb :: Build :: Set MAC Address
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
::echo Please Close Wilbrand GUI Once Exploit Is Created To Continue....
echo Please Enter The MAC Address of the Wii Console
echo.
echo.
echo Format: AABBCCDDEEFF
echo.
echo.
echo.
echo.

set /p macaddress=

if %macaddress%==dummy goto lbmac


:lbdate
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Letterbomb :: Build :: Set Date
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
set datewii=dummy
cls
echo Please Enter The Date For Yesterday (One Day Behind Today)
echo.
echo.
echo Current Date: %date%
echo.
echo.
echo.
echo Format: mm/dd/yyyy
echo.
echo.
echo.
echo.

set /p datewii=

if %datewii%==dummy goto lbdate


:lbregion
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Letterbomb :: Build :: Set Region
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
set sysregion=dummy
cls
echo Please Enter The Region For Your Wii Console and press ENTER:
echo.
echo.
echo Examples:
echo.
echo USA: U
echo.
echo JPN: J
echo.
echo EUR: E
echo.
echo KOR: K
echo.
echo.
echo.
echo.

set /p sysregion=

if %sysregion%==dummy goto lbregion

set sysmenu=4.3%sysregion%



cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Exploits :: Letterbomb :: Build :: Confirmation
echo -------------------------------------------------------------------------------
echo.
echo.
echo.

"%temp%\letterbomb\wilbrand.exe" %macaddress% %datewii% %sysmenu% %sd%:\


::Old GUI Code
::"%temp%\letterbomb\Wilbrand GUI.exe"

::Old GUI Code
::if not exist "C:\private" "%temp%\letterbomb\Wilbrand GUI.exe"


::echo %macaddress%
::echo %datewii%
::echo %sysmenu%
::echo %sd%:\


echo.
echo Please make sure above info looks correct and press any key to continue....
echo.
echo.
pause>nul



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

:: Unpacking HackMii Installer

%unpack% "install\%install1%" "%sd%:\"



:: Copying Selected Exploit

::rd /q /s "%sd%:\private"

::md "%sd%:\private"

xcopy /y /e /f "C:\private" "%sd%:\private\"

goto finish


:finish

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Preparing For Next Step
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Step 1 Finished!
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
help\step1_%exploitname%.txt


:end

:: Check for Downgrade flag and apply external fix
if %downgrade%==1 echo 1>%dgConfirmFile%

call "step2_install_WADs.cmd"

:exitmain


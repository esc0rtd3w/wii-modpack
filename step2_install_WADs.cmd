@echo off

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w

color 0e


set pack=install\rar.exe a -ep -ep1 -y -m5
set unpack=install\rar.exe x -y

::set install2=install_2.rar
set install2=install_2.split
set rev21=install_rev21.rar

set ios58=install_ios58.rar

set DarkWii=menus\DarkWii.rar

set bdc=backup_disc_channel.rar

set dgfiles=downgrade43.rar

set d2x_on=d2x_on.rar
set d2x_off=d2x_off.rar

:: Set external confirmation file for downgrade flag
set dgConfirmFile="%temp%\dg43.confirm"


:: Check for Downgrade Flag
::if %downgrade%==1 goto dgdecide
if exist %dgConfirmFile% goto dgdecide
if exist %dgConfirmFile% del /f /q %dgConfirmFile%

goto usbl


:: FIX THIS!!!
:dgdecide

::cls
::echo Downgrade Flag: %downgrade%
::echo.
::echo.
::echo.
::echo.
::echo Press any key to continue....
::echo.
::echo.
::pause>nul
if %virtualsd%==1 goto dgonlyv
goto dgonly

::goto end


:: USB Loader Selection
:usbl
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: WAD Install :: USB Loader
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Please select the version of USBLoaderGX you want to use:
echo.
echo.
echo.
echo 1) WiiFlow USB Loader (FAT32, ext3, NTFS, WBFS Supported)
echo.
echo.
echo 2) Configurable USB Loader (FAT32, ext3, NTFS, WBFS Supported)
echo.
echo.
echo 3) USBLoaderGX Version 1 (WBFS Support Only)
echo.
echo.
echo 4) USBLoaderGX Version 2 (FAT32, ext3, NTFS, WBFS Supported)
echo.
echo.
echo.
echo 5) Return To Main Menu
echo.

choice /c 12345 /n

if errorlevel 5 goto exitmain
if errorlevel 4 goto usbloader2
if errorlevel 3 goto usbloader1
if errorlevel 2 goto cfgusbloader
if errorlevel 1 goto wiiflow


:wiiflow

set usbloadver=install_wiiflow.rar

goto dvdr


:cfgusbloader

set usbloadver=install_cUSBLoader.rar

goto dvdr



:usbloader1

set usbloadver=install_usbloader1.rar

goto dvdr



:usbloader2

set usbloadver=install_usbloader2.rar

goto dvdr



:: Checking if DVD Drive is compatible with DVD-R Discs
:dvdr
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: WAD Install :: DVD-R Playback
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Does your Wii Console support DVD-R Playback? [Default=No]:
echo.
echo.
echo 1) No
echo.
echo.
echo 2) Yes
echo.
echo.
echo 3) Not Sure
echo.
echo.

choice /c 123 /n

if errorlevel 3 goto dvdrmaybe
if errorlevel 2 goto dvdryes
if errorlevel 1 goto dvdrno


:dvdrno

set neogamma=0

goto findsd



:dvdryes

set neogamma=1

goto findsd


:dvdrmaybe

set neogamma=1

goto findsd



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
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Clean Temp Files
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
:: Enter SD Card Root
::%sd%:


:: Remove Exploit Files and HackMii Installer
rmdir /s /q "%sd%:\private"
del /q /f "%sd%:\boot.elf"
del /q /f "%sd%:\bootmini.elf"


:: Move NAND into its own folder
md %sd%:\nand
move /y %sd%:\keys.bin %sd%:\nand
move /y %sd%:\nand.bin %sd%:\nand


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


:: Unpack Main Files
%unpack% "install\%install2%" "%sd%:\"

:d2xchk
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: cIOS :: d2x Files
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Do you want to install d2x Compatible cIOS files? [Y/N] [Default=Y]:
choice /c yn /n
if errorlevel 2 goto d2xoff
if errorlevel 1 goto d2xon
goto rev21

:d2xon
%unpack% "install\%d2x_on%" "%sd%:\"
goto rev21

:d2xoff
%unpack% "install\%d2x_off%" "%sd%:\"
goto rev21

:rev21

:: Unpack cIOS rev21
%unpack% "install\%rev21%" "%sd%:\"

:: DVD-R Support
if %neogamma%==0 goto copy2
if %neogamma%==1 %unpack% "install\%bdc%" "%sd%:\"


:: Unpack Dark Wii Theme for v4.2 System Menu Only
:copy2
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: System :: Themes
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Would you like to copy the Dark Wii Theme? [Y/N]:
echo.
echo.
echo.
echo WARNING! THIS IS FOR SYSTEM VERSION 4.2 ONLY!!!
echo.
echo.
echo IF YOU INSTALL ON ANY OTHER VERSION YOUR SETTINGS WILL NOT SHOW UP!!
echo.
echo.
echo.

choice /c yn /n

if errorlevel 2 goto usblinst

%unpack% "%DarkWii%" "%sd%:\"

goto usblinst


:usblinst
:: USBLoader Install
%unpack% "usb_loader\%usbloadver%" "%sd%:\"

goto finish


:dgonly
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: System :: Downgrade
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Would you like to downgrade from v4.3 to v4.2? [Y/N] (RECOMMENDED):
echo.
echo You MUST have the Homebrew Channel installed on your Wii before continuing!!!
echo.
echo.
echo WARNING!!!    YOUR SD CARD WILL BE FORMATTED!!!!!!!!
echo.
echo WARNING!!!    ALL EXISTING FILES WILL BE DELETED!!!!!!!!
echo.
echo WARNING!!!    YOUR SD CARD WILL BE FORMATTED!!!!!!!!
echo.
echo.
echo.

choice /c yn /n

if errorlevel 2 goto usbl

format /fs:fat32 /q /v:"" /y %sd%:

:: Unpack Downgrade Files
%unpack% "install\%dgfiles%" "%sd%:\"

goto exitdg


:dgonlyv
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: System :: Downgrade
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Would you like to downgrade from v4.3 to v4.2? [Y/N] (RECOMMENDED):
echo.
echo You MUST have the Homebrew Channel installed on your Wii before continuing!!!
echo.
echo.
echo.

choice /c yn /n

if errorlevel 2 goto usbl

:: Unpack Downgrade Files
%unpack% "install\%dgfiles%" "%sd%:\"

goto exitdg


:finish
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: Preparing For Next Step
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Step 2 Finished!
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
help\step2.txt


:end

call "step3_install_boxart.cmd"
goto exitmain


:exitdg
:: Launching Further Instructions
help\dg43.txt


:: Formatting SD Card To FAT32
if %virtualsd%==0 call "format_sd.cmd"



:skipfmt

:: Setting Bannerbomb v2.0 Exploit for Menu v4.2
set downgrade=0

:: Removing Downgrade Flag External File
if exist %dgConfirmFile% del /f /q %dgConfirmFile%

:: Setting Downgrade Success Flag to "1"
set dgsuccess=1

:: Setting format flag to prevent bannerbomb v2 from asking again from downgrade
set fmtdgbb=1

call "step1_install_HBC.cmd"


:exitmain


@echo off


color 0e

title Wii Modpack v2.4                                 esc0rtd3w 2017 : github.com/esc0rtd3w



:formatsd1

cls
echo Formatting SD Card to FAT32 File System
echo.
echo.
echo Required, unless already done!
echo.
echo.
echo Select Y or N and press the ENTER key....
echo.
echo.
echo.
format\fat32.exe "%sd%:\"


goto end



:formatsd2
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Format Confirmation
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Format SD Card to FAT32 File System? (RECOMMENDED) [Y/N]:
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

set copy1=0
if errorlevel 2 set copy1=1

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Formatting
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Formatting SD Card to FAT32 File System....
echo.
echo.
echo.
format /fs:fat32 /q /v:"" /y %sd%:


goto end



:formatsd3
cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Format Confirmation
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Format SD Card to FAT32 File System? (RECOMMENDED) [Y/N]:
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

set skipfmt=0
if errorlevel 2 set skipfmt=1

cls
echo -------------------------------------------------------------------------------
echo Wii Modding Script :: SD Card :: Formatting
echo -------------------------------------------------------------------------------
echo.
echo.
echo.
echo Formatting SD Card to FAT32 File System....
echo.
echo.
echo.
format /fs:fat32 /q /v:"" /y %sd%:

goto end

:end



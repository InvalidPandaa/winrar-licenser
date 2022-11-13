@echo off

REM -> The Variables for download url and path

SET downloadURL = "https://raw.githubusercontent.com/InvalidPandaa/winrar-licenser/main/WinRAR%20Licenser/rarreg.key"
SET downloadPath = "C:\Program Files\WinRAR\rarreg.key"

title WinRAR-Licenser I v1.0 I by InvalidPandaa

echo Requesting Admin Permissions...
@ping -n 1 localhost> nul
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)


:gui
cls


echo.
echo.
echo 		 _  _  __  __ _  ____   __   ____    __    __  ___  ____  __ _  ____  ____  ____ 
echo 		/ )( \(  )(  ( \(  _ \ / _\ (  _ \  (  )  (  )/ __)(  __)(  ( \/ ___)(  __)(  _ \
echo 		\ /\ / )( /    / )   //    \ )   /  / (_/\ )(( (__  ) _) /    /\___ \ ) _)  )   /
echo 		(_/\_)(__)\_)__)(__\_)\_/\_/(__\_)  \____/(__)\___)(____)\_)__)(____/(____)(__\_)
echo.
echo.
echo						(1) Install WinRAR-Licenser
echo						(2) Remove WinRAR-Licenser
echo						(3) Exit
echo.
echo.

set /p optMain=Please select an option: 
if '%optMain%' == '1' goto :install
if '%optMain%' == '2' goto :remove
if '%optMain%' == 'e' goto :exit

:install
cls

echo.
echo.
echo 		 _  _  __  __ _  ____   __   ____    __    __  ___  ____  __ _  ____  ____  ____ 
echo 		/ )( \(  )(  ( \(  _ \ / _\ (  _ \  (  )  (  )/ __)(  __)(  ( \/ ___)(  __)(  _ \
echo 		\ /\ / )( /    / )   //    \ )   /  / (_/\ )(( (__  ) _) /    /\___ \ ) _)  )   /
echo 		(_/\_)(__)\_)__)(__\_)\_/\_/(__\_)  \____/(__)\___)(____)\_)__)(____/(____)(__\_)
echo.
echo.
echo 	Downloading the required files...

bitsadmin /transfer "Download Key" /download /priority normal https://raw.githubusercontent.com/InvalidPandaa/winrar-licenser/main/WinRAR%20Licenser/rarreg.key "C:\Program Files\WinRAR\rarreg.key"


pause
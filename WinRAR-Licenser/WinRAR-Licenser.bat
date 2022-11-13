@echo off


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
if '%optMain%' == '3' goto :exit

goto gui

:install
cls

If exist "C:\Program Files\WinRAR\rarreg.key" (
	echo You have already a licensed WinRAR version!
	@ping -n 5 localhost> nul
	goto gui
)

echo.
echo.
echo 		 _  _  __  __ _  ____   __   ____    __    __  ___  ____  __ _  ____  ____  ____ 
echo 		/ )( \(  )(  ( \(  _ \ / _\ (  _ \  (  )  (  )/ __)(  __)(  ( \/ ___)(  __)(  _ \
echo 		\ /\ / )( /    / )   //    \ )   /  / (_/\ )(( (__  ) _) /    /\___ \ ) _)  )   /
echo 		(_/\_)(__)\_)__)(__\_)\_/\_/(__\_)  \____/(__)\___)(____)\_)__)(____/(____)(__\_)
echo.
echo.
echo 		Downloading the required files...

@ping -n 2 localhost> nul
bitsadmin /transfer "Download Key" /download /priority normal https://raw.githubusercontent.com/InvalidPandaa/winrar-licenser/main/WinRAR-Licenser/rarreg.key "C:\Program Files\WinRAR\rarreg.key"
cls
@ping -n 1 localhost> nul

echo.
echo.
echo 		 _  _  __  __ _  ____   __   ____    __    __  ___  ____  __ _  ____  ____  ____ 
echo 		/ )( \(  )(  ( \(  _ \ / _\ (  _ \  (  )  (  )/ __)(  __)(  ( \/ ___)(  __)(  _ \
echo 		\ /\ / )( /    / )   //    \ )   /  / (_/\ )(( (__  ) _) /    /\___ \ ) _)  )   /
echo 		(_/\_)(__)\_)__)(__\_)\_/\_/(__\_)  \____/(__)\___)(____)\_)__)(____/(____)(__\_)
echo.
echo.
echo 		The required files has been downloaded! WinRAR is now licensed!
@ping -n 5 localhost> nul
goto gui

:remove
cls

echo.
echo.
echo 		 _  _  __  __ _  ____   __   ____    __    __  ___  ____  __ _  ____  ____  ____ 
echo 		/ )( \(  )(  ( \(  _ \ / _\ (  _ \  (  )  (  )/ __)(  __)(  ( \/ ___)(  __)(  _ \
echo 		\ /\ / )( /    / )   //    \ )   /  / (_/\ )(( (__  ) _) /    /\___ \ ) _)  )   /
echo 		(_/\_)(__)\_)__)(__\_)\_/\_/(__\_)  \____/(__)\___)(____)\_)__)(____/(____)(__\_)
echo.
echo.
echo 		Removing the license...
del /F "C:\Program Files\WinRAR\rarreg.key"
	
cls
echo.
echo.
echo 		 _  _  __  __ _  ____   __   ____    __    __  ___  ____  __ _  ____  ____  ____ 
echo 		/ )( \(  )(  ( \(  _ \ / _\ (  _ \  (  )  (  )/ __)(  __)(  ( \/ ___)(  __)(  _ \
echo 		\ /\ / )( /    / )   //    \ )   /  / (_/\ )(( (__  ) _) /    /\___ \ ) _)  )   /
echo 		(_/\_)(__)\_)__)(__\_)\_/\_/(__\_)  \____/(__)\___)(____)\_)__)(____/(____)(__\_)
echo.
echo.
echo 		Successfully removed the license!
	
@ping -n 5 localhost> nul
goto gui


:exit
exit

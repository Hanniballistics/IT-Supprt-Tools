@ECHO OFF 
color a
:: This batch file reveals OS, hardware, and networking configuration.
TITLE North Coast: PC System Info
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"

:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
systeminfo | findstr /c:"Available Physical Memory"
systeminfo | find "Up Time"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================

systeminfo | findstr /c:"Domain"
ipconfig | findstr IPv4
ipconfig | findstr IPv6
PAUSE
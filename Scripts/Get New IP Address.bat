echo off 
TITLE North Coast: IP Address Resetting
color a
cls 
ipconfig /release 
ipconfig /renew 
ipconfig /registerdns 
exit
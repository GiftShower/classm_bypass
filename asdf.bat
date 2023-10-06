@echo off
:loop
mode 1000
sc config ClassM_Client_Service start=demend
sc stop ClassM_Client_Service
NET STOP ClassM_Client_Service
taskkill -F -T /PID SysCtrl.exe
taskkill -F -T /PID mvnc.exe
taskkill -F -T /PID ClassM_Client_Service.exe
goto loop
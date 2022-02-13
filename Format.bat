@echo off
cd "%~dp0"
mode con:cols=85 lines=50
set /A count=4
Title Screenshot ENG-Redhwan
FOR /F "tokens=1-3 delims=/ " %%i IN ("%date:~0,10%") DO SET d=%%i%%j%%k
FOR /F "tokens=1-3 delims=: " %%i IN ("%time:~0,8%")  DO SET t=%%i%%j%%k

SET log_dir=%d%_%t%

:RK
cls
echo.                        ******************************************
echo.                      ---                                         ---
echo.                     ---           By Eng-Redhwan Kathir            ---
echo.                      ---                                         ---
echo.                       --            Tell:774489117             --
echo.                        *****************************************
color C
echo.
echo                            [#] Waiting For Device ....
dd wait-for-device >NUL 2>&1
echo.                     
fastboot erase cache
fastboot erase userdata
fastboot reboot
echo.                             
echo.                               
pause
:exit
rem goto RK
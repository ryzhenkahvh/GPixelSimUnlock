@echo off
COLOR 0A
echo.
:CHOICE0
@echo type:
@echo 1) START UNLOCK
@echo 0) EXIT
set /p type=Make a choice: 
if %type% == 1 GOTO UNL
if %type% == 0 GOTO EXT

echo.
@echo Please Enter a valid number (1 or 0)
echo.
GOTO CHOICE0

:UNL
adb wait-for-device
adb shell cmd appops set com.google.android.apps.work.oobconfig WAKE_LOCK deny
adb shell cmd appops set com.google.android.apps.work.oobconfig RUN_IN_BACKGROUND deny
adb shell cmd appops set com.google.android.apps.work.oobconfig RUN_ANY_IN_BACKGROUND deny
adb shell cmd appops set com.google.android.apps.work.oobconfig START_FOREGROUND deny
adb shell cmd appops set com.google.android.apps.work.oobconfig ACCESS_RESTRICTED_SETTINGS deny
adb kill-server
echo.
COLOR 6F
echo SLAVA UKRAINI
GOTO CHOICE0

:EXT
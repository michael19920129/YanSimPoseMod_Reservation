@echo off
echo Backing up old version of Yandere Simulator that contains PoseMod...
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
echo.
echo Backup completed, now will launch launcher to update the game.
echo Close the launcher when download completed...
start /wait YandereSimulatorLauncher.exe
echo.
echo Updating files...
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
move .\YanSim_PoseMod .\YandereSimulator
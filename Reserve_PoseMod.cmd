@echo off
echo 備份PoseMod檔案...
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
echo.
echo 備份完成，現在將啟動遊戲啟動器來更新遊戲
echo 遊戲更新完成時，請將啟動器關閉以繼續...
start /wait YandereSimulatorLauncher.exe
echo.
echo 正在將更新與PoseMod檔案合併...
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
move .\YanSim_PoseMod .\YandereSimulator

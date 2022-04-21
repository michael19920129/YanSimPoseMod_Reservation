@echo off
echo 正在備份目前的遊戲檔案…
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
echo.
echo PoseMod已完成備份，現在將執行啟動器更新遊戲
echo 當遊戲完成下載後，請將啟動器關閉…
start /wait YandereSimulatorLauncher.exe
echo.
echo 正在更新遊戲檔案…
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
move .\YanSim_PoseMod .\YandereSimulator
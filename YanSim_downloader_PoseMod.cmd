@echo off
rem 更新/新下載YanSim遊戲並保留PoseMod V2.0
rem 相較初始版本的改動：
rem 1.直接從遊戲官網下載程式檔並解壓縮（分別需要curl、wget與tar這三個指令）
rem 不再需要透過官方啟動器（Launcher）以及備份舊版本
rem 2.承上，上述指令從Windows 10 1803版本起有內建；先前版本需使用其他類似的指令代替
rem 或者改用手工操作
rem 3.在解壓縮新版遊戲檔案以前發出兩次警告提示，以免誤操作造成損失

set yansim_dl=http://yanderesimulator.com/dl/latest.zip

if not exist .\latest.zip (
	echo 檢查遊戲檔連結是否可用…
	wget --spider %yansim_dl%
	IF ERRORLEVEL 8 GOTO ERROR
	goto get_update
	)
goto extract

:get_update
echo 現在開始下載新版遊戲程式檔
wget %yansim_dl%
IF NOT ERRORLEVEL 8 GOTO ERROR

:extract
echo.
echo 下載完成，即將開始解壓縮檔案
echo.
echo 警告！程式會自動將同名檔案覆蓋！
echo 如有對遊戲資源檔做修改（例如製作自創角色），在更新之後都會被復原成遊戲自帶的版本。
echo.
echo 如有的話，請先將有關檔案做個備份；確實備份之後，等候提示出現後，再按Enter繼續…
timeout /t 10 /nobreak > NUL
pause
echo.
echo 「最後一次提醒！」
echo 警告！程式會自動將同名檔案覆蓋！
echo 如有對遊戲資源檔做修改（例如製作自創角色），在更新之後「都會被復原成遊戲自帶的版本」。
echo.
echo 如有的話，請先將有關檔案做個備份；確實備份之後，等候提示出現後，再按Enter繼續…
timeout /t 10 /nobreak > NUL
pause
echo.
echo OK，那就開始吧！
echo 正在將新版遊戲檔案解壓縮並覆蓋舊版…
tar xvf latest.zip -C .\YandereSimulator
IF ERRORLEVEL 0 GOTO finish
goto ERROR

:finish
echo.
del /q latest.zip
echo 遊戲已成功完成更新，enjoy it！
goto endcmd

:ERROR
echo.
echo 檔案暫時無法下載（官網掛掉了），請改用MediaFire或MEGA的替代連結
echo 將下載之zip壓縮檔重新命名為"lastest.zip"，並放在與此指令檔相同之位置
echo 然後再執行此指令檔
goto endcmd

:endcmd
timeout /t 10 /nobreak > NUL
echo on
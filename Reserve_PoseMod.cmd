@echo off
echo ���b�ƥ��ثe���C���ɮסK
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
echo.
echo PoseMod�w�����ƥ��A�{�b�N����Ұʾ���s�C��
echo ��C�������U����A�бN�Ұʾ������K
start /wait YandereSimulatorLauncher.exe
echo.
echo ���b��s�C���ɮסK
xcopy .\YandereSimulator\*.* /e /i /c /y  .\YanSim_PoseMod
move .\YanSim_PoseMod .\YandereSimulator
@echo off
rem ��s/�s�U��YanSim�C���ëO�dPoseMod V2.0
rem �۸���l��������ʡG
rem 1.�����q�C���x���U���{���ɨø����Y�]���O�ݭncurl�Bwget�Ptar�o�T�ӫ��O�^
rem ���A�ݭn�z�L�x��Ұʾ��]Launcher�^�H�γƥ��ª���
rem 2.�ӤW�A�W�z���O�qWindows 10 1803�����_�����ءF���e�����ݨϥΨ�L���������O�N��
rem �Ϊ̧�Τ�u�ާ@
rem 3.�b�����Y�s���C���ɮץH�e�o�X�⦸ĵ�i���ܡA�H�K�~�ާ@�y���l��

set yansim_dl=http://yanderesimulator.com/dl/latest.zip

if not exist .\latest.zip (
	echo �ˬd�C���ɳs���O�_�i�ΡK
	wget --spider %yansim_dl%
	IF ERRORLEVEL 8 GOTO ERROR
	goto get_update
	)
goto extract

:get_update
echo �{�b�}�l�U���s���C���{����
wget %yansim_dl%
IF NOT ERRORLEVEL 8 GOTO ERROR

:extract
echo.
echo �U�������A�Y�N�}�l�����Y�ɮ�
echo.
echo ĵ�i�I�{���|�۰ʱN�P�W�ɮ��л\�I
echo �p����C���귽�ɰ��ק�]�Ҧp�s�@�۳Ш���^�A�b��s���᳣�|�Q�_�즨�C���۱a�������C
echo.
echo �p�����ܡA�Х��N�����ɮװ��ӳƥ��F�T��ƥ�����A���Դ��ܥX�{��A�A��Enter�~��K
timeout /t 10 /nobreak > NUL
pause
echo.
echo �u�̫�@�������I�v
echo ĵ�i�I�{���|�۰ʱN�P�W�ɮ��л\�I
echo �p����C���귽�ɰ��ק�]�Ҧp�s�@�۳Ш���^�A�b��s����u���|�Q�_�즨�C���۱a�������v�C
echo.
echo �p�����ܡA�Х��N�����ɮװ��ӳƥ��F�T��ƥ�����A���Դ��ܥX�{��A�A��Enter�~��K
timeout /t 10 /nobreak > NUL
pause
echo.
echo OK�A���N�}�l�a�I
echo ���b�N�s���C���ɮ׸����Y���л\�ª��K
tar xvf latest.zip -C .\YandereSimulator
IF ERRORLEVEL 0 GOTO finish
goto ERROR

:finish
echo.
del /q latest.zip
echo �C���w���\������s�Aenjoy it�I
goto endcmd

:ERROR
echo.
echo �ɮ׼ȮɵL�k�U���]�x�������F�^�A�Ч��MediaFire��MEGA�����N�s��
echo �N�U����zip���Y�ɭ��s�R�W��"lastest.zip"�A�é�b�P�����O�ɬۦP����m
echo �M��A���榹���O��
goto endcmd

:endcmd
timeout /t 10 /nobreak > NUL
echo on
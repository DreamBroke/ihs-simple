@echo off

echo\
@REM ���óɹ����ӡ��������
set printerHost=xx1688
echo  %printerHost%  ����������...

rem ʹ��ping�������ӡ���Ƿ�����
ping -n 1 %printerHost% > nul
if %errorlevel% neq 0 (
    echo  ������ %printerHost% �Ժ���
    pause
    exit
)

@REM net stop spooler & net start spooler

echo\
echo ������ %printerHost% �����ӡ������������
@REM �û���abc ����123456 /persistent:yes ���ñ���
net use \\%printerHost% /user:abc 123456 /persistent:yes

echo\
echo �������Ӵ�ӡ��������װ����
@REM  /in ������ʾ��װ��ӡ����������/n ����ָ����ӡ�����ƣ�
@REM /z ������ʾ����ӡ������ΪĬ�ϴ�ӡ����/q ������ʾ����ģʽִ��
rundll32 printui.dll,PrintUIEntry /y /in /n "\\%printerHost%\HP LaserJet MFP M232-M237 PCLmS" /q

@REM color 0a
@REM timeout /t 30
@REM color
echo\
pause
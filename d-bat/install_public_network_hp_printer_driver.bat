@echo off
set printerIP=192.168.0.252

echo ��������ӡ�� %printerIP% �Ƿ�����...
ping -n 1 %printerIP% > nul
if %errorlevel% neq 0 (
    echo ������ %printerIP% �Ժ���
    pause
    exit
)

rem ���������ӡ�� ͨ��
@REM rundll32 printui.dll,PrintUIEntry /if /b ""  /r "IP_%printerIP%" /m "Generic / Text Only"

@REM �Ѱ�װ���մ�ӡ����������������
@REM rundll32 printui.dll,PrintUIEntry /if /b ""  /r "IP_%printerIP%" /m "HP Universal Printing PCL 6"


:: ---------------- ��Ĭ��װ��ӡ������ -------------------------

@REM ����������ࡰһ����װ��ӡ�������ļ����ӵĹۺ�� https://www.52pojie.cn/thread-1776328-1-1.html

@REM ���ڻ��մ�ӡ��������֧�־�Ĭ��װ������ʹ�ñ��ݻ�ԭ��ʽ��̬��Ĭ��װ����������
@REM 1. ����ע��� 
@REM reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Monitors\Standard TCP/IP Port\Ports\IP_192.168.0.252" "C:\Users\nice\Documents\IP_192.168.0.252.reg"
@REM 2. ʹ��dism�����������������÷�����ж��ʧ�ܵ�Ч����ȥ��λ�������ӡ���ͺ�����
@REM dism /online /export-driver /destination:F:\backup\

@REM ��Ĭģʽ����ע���
regedit /s C:\Users\nice\Documents\IP_192.168.0.252.reg

@REM �������׵��÷�������ʼ��һ��Ҳͦ�������ִ��ʧ�ܡ�
@REM ��ʱ��ӡ��ɾ����һЩ�ļ�Ҳ������������
net stop spooler
net start spooler

@REM rundll32������ Windows DLL �ļ���
@REM printui.dll��Windows �Ĵ�ӡ���û�������� DLL �ļ���
@REM PrintUIEntry����ӡ���û�������ڵ㡣
@REM /if����װ�µĴ�ӡ����
@REM /b ""�����ô�ӡ������Ϊ���ַ�����ʹ���ڰ�װ�����û�����������
@REM /f F:\backup\hpcu215u\hpcu215u.inf��ָ����ӡ�������������λ�ú� .inf �ļ����ơ�
@REM /r "IP_%printerIP%"�����ô�ӡ���˿�Ϊ IP ��ַ�˿ڣ���ʹ�� %printerIP% ����ָ�� IP ��ַ�����������Ҫ�������ط����壬ͨ����ͨ��������ű����д��ݡ�
@REM /m "HP Universal Printing PCL 6"��ָ��Ҫ��װ�Ĵ�ӡ��������������ơ�

@REM ��װ��ӡ��
rundll32 printui.dll,PrintUIEntry /if /b "" /f F:\backup\hpcu215u\hpcu215u.inf /r "IP_%printerIP%" /m "HP Universal Printing PCL 6"

echo ���������ӡ������OK
pause

  
@REM ��ĸȱʧ�� ��û�е��� CRLF Ե�ʡ�
@REM ���� echo\
@REM �ο���Դ��https://www.52pojie.cn/thread-1768615-1-1.html

@REM  ��Ȩ�����������Ҽ����Թ���Ա����
@%1 C:\Windows\SysWOW64\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@cd /d "%~dp0"


@echo off

:Loop 
cls
echo\
echo ���������ѡ��:
echo [1] ������Ĭ��һֱ�Թ���ԱȨ������
echo [2] ȥ�������Թ���Ա����Ȩ��
echo [3] ����Ĭ�����г����Թ���ԱȨ������
echo [4] �ر����г���Ĭ�϶��Թ���ԱȨ��
echo [5] �����˳�
echo\
choice /c 12345

if %errorlevel% equ 1 (

    set /p soft_path=�뽫����·�����Ƶ��ն�: 
    reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v %soft_path%  /t REG_SZ /d "RUNASADMIN" /f
    echo OK���Թ���ԱȨ�����г�������ɡ�
    timeout /t 5
    GOTO LOOP

) else if %errorlevel% equ 2 (

    set /p soft_path=�뽫����·�����Ƶ��ն�: 
    reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v %soft_path%  /f
    timeout /t 5
    GOTO LOOP

)else if %errorlevel% equ 3 (

    reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA  /t REG_DWORD /d 0x00000001 /f
    echo OK���ѿ���Ĭ�����г����Թ���ԱȨ�����С�
    timeout /t 5
    GOTO LOOP

)else if %errorlevel% equ 4 (

    reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA  /t REG_DWORD /d 0x00000000 /f
    echo OK���ѹر����г���Ĭ�϶��Թ���ԱȨ�ޡ�
    timeout /t 5
    GOTO LOOP
) 

if %errorlevel% equ 5 (GOTO END) 

:END

echo �������˳�
:: "�Զ���Ȩ"
@echo off

:: ---------- �������пɴ���Ȩ���� ---------------
@REM %1 C:\Windows\SysWOW64\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@REM cd /d "%~dp0"
:: ---------- �������пɴ���Ȩ���� ---------------


echo "win10����ʹ�þͺã�win11ϵͳ������С���IE�޸����ߣ����лָ�IE11ͼ�꣬��ʹ�øù��߷��ٳ֡�"

@echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Enable Browser Extensions" /t REG_SZ /d "NO" /f
reg add "HKCU\Software\Microsoft\Edge\IEToEdge" /v "UpsellDisabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Edge\IEToEdge" /v "RedirectionMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Edge\IEToEdge" /v "QuietExpirationTime" /t REG_QWORD /d 0 /f

echo -----------------------------------------------------------------------------
echo "��Edge�ٳ�IE��������Ѵ�����ɣ�"

pause
del %0
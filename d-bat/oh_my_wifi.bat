@REM  ��Ȩ�����������Ҽ����Թ���Ա����
@REM %1 C:\Windows\SysWOW64\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@REM @cd /d "%~dp0"

@REM ��Ȩ�����������о�
@REM curl -L  https://ghproxy.com/https://github.com/hoochanlon/ihs-simple/raw/main/d-bat/oh_my_wifi.bat|cmd
@REM C:\Windows\SysWOW64\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 :: ^& echo curl -L https://ghproxy.com/https://github.com/hoochanlon/ihs-simple/raw/main/d-bat/oh_my_wifi.bat ^| cmd && pause","","runas",1)(window.close)&&exit
@REM �������
@ECHO/
@echo �û�ȡ����WiFi���룬�����о�ѧϰʹ��
@ECHO/
@echo WiFi�������б����£�
@ECHO/
@netsh wlan show profiles | for /f "tokens=2 delims=:" %%i in ('findstr "�û������ļ�"') do @echo %%i && netsh wlan show profiles name=%%i key=clear | findstr "�ؼ�����"
@ECHO/

@timeout /NOBREAK /T 180
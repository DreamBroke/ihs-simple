@REM  ��Ȩ�����������Ҽ����Թ���Ա����
%1 C:\Windows\SysWOW64\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@cd /d "%~dp0"
@REM �������
@ECHO/
@echo �û�ȡ����WiFi���룬�����о�ѧϰʹ��
@ECHO/
@echo WiFi�������б����£�
@ECHO/
@netsh wlan show profiles | for /f "tokens=2 delims=:" %%i in ('findstr "�û������ļ�"') do @echo %%i && netsh wlan show profiles name=%%i key=clear | findstr "�ؼ�����"
@ECHO/

@timeout /NOBREAK /T 180
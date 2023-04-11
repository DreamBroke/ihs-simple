@echo off

:: ----------------- ��⻷������ ------------

@REM ���û�������
if not defined %WiFi% > nul (setx WiFi "%userprofile%\show_wifi.bat")

:: ----------------- ��ȡ��ǰWiFi������ ---------------------

@REM �ų�BSSID���������񼯱�ʶ������Ϣ���и��ŵ�����SSID�����
setlocal enabledelayedexpansion
for /f "tokens=2 delims=:" %%i in ('netsh wlan show interfaces ^| findstr "SSID" ^| findstr /v "BSSID"') do (
    set now_wifi_ssid=%%i
    @REM �滻�ո�
    set now_wifi_ssid=!now_wifi_ssid: =!
)

for /f "tokens=2 delims=: " %%i in ('netsh wlan show profile name^="%now_wifi_ssid%" key^=clear ^| findstr "�ؼ�����"') do (
    set "now_wifi_password=%%i"
    set now_wifi_password=!now_wifi_password!
)

echo WiFi��%now_wifi_ssid%
echo WiFi���룺%now_wifi_password%

:: ----------------- ��ά�� ---------------------------------

@REM ��ά�����������Ƭ�򿪣�Windows�ն�(�ɰ�)�ַ�֧�����ޣ�Ч��������
@REM Windows11�����Դ����°��ն˿��У�
@REM https://github.com/microsoft/terminal

pip install qrcode > nul 2>&1
pip install pillow > nul 2>&1
pip install qrcode-terminal > nul 2>&1
set data= WiFi��%now_wifi_ssid% WiFi���룺%now_wifi_password%
python -c "import qrcode_terminal; qrcode_terminal.draw('%data%')"

::------------ �ƶ��ļ����û���Ŀ¼ ---------------

@REM �������ж��ļ�%userprofile%\show_wifi.bat�Ƿ����
if not exist "c:\%userprofile%\show_wifi.bat" > nul (
    move "%~dp0\%~nx0" "%userprofile%\%~nx0"
)

:: --------------- �ο����� ----------------------------------

@REM @REM �ο��ĵ������� һ

@REM @REM "tokens=2 delims=:" ����ֻ���� for ������ʹ�ã�tokens=2 ����:�� ֮��ĵڶ��ı�
@REM @REM  "%now_ssid: =%" �����пո��� nul
@REM netsh wlan show profile /? �����ĵ�
@REM netsh wlan show profile name="GIADA-GNXS" key=clear

@REM @REM [csdn -for /f����֮��Delims��Tokens�÷�&�ܽ�](https://blog.csdn.net/kagurawill/article/details/114982328)
@REM @REM [cnblogs -��No0000A4��DOS���cmd���������滻�ַ�������ȡ�ַ����������ַ�������ȡ�ַ�������](https://www.cnblogs.com/Chary/p/5825189.html)

@REM @REM �ο��ĵ������� ��

@REM WiFi��������Ĳ�������Ľ�� 00����һ��ȡֵ�������ڶ��γ���00
@REM �ҵ�����Ϊ�������ӳٱ������ű�֮�����Ӳ���˵����ô�࣬��ʵ������ʵʱ������ԣ������еĸ���Ҳʮ����Ҫ
@REM https://www.jb51.net/article/193245.htm

:: --------------- �ο����� ----------------------------------



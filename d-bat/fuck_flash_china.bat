
@echo "����ǰ����ͳһ���� C:\Windows\System32" 
@pushd C:\Windows\System32

@echo �������� chromium87�����Ժ�....

@set chromium87_url="https://bluepload.unstable.life/selif/chromev870428088.exe"
@set chromium87="Chrome_V87.0.4280.88.exe"
@powershell -c "(New-Object System.Net.WebClient).DownloadFile('%chromium87_url%', '%userprofile%/Downloads/%chromium87%')"

@echo ��������flash�����Ժ�....

@set cleanflash_url="https://bluepload.unstable.life/selif/cleanflash3400282installer1.exe"
@set cleanflash="cleanflash3400282installer1.exe"
@powershell -c "(New-Object System.Net.WebClient).DownloadFile('%cleanflash_url%', '%userprofile%/Downloads/%cleanflash%')"

@echo
echo flash������ȫ֧�־�Ĭ��װ������ȡ���Զ���װģʽ

%userprofile%\Downloads\Chrome_V87.0.4280.88.exe

start /wait %userprofile%\Downloads\cleanflash3400282installer1.exe /S

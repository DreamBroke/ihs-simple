@REM ��PE�������ע���Ĳ�ѯ��������·����ȫ��ʶ������
@REG LOAD HKLM\TempLookIp C:\Windows\System32\config\SYSTEM
@REM �ݹ��ѯ
@REG QUERY HKLM\TempLookIp\ControlSet001\services\Tcpip\Parameters\interfaces /s

@pause

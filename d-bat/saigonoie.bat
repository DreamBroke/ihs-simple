@REM ------------- ��Ȩ������ر�UAC---------------------------

@REM [csdn-��bat�������Թ���ԱȨ�����е�ʵ�ַ���](https://blog.csdn.net/NeiHan2020/article/details/124982175)
@REM ��bat����ʱ�����ȵ���vbs�ű���ͨ��vbs�ű����Թ���Ա��ݵ��ø�bat�� runas ���֣����˳�㶨λ�ű���ǰִ�л�����Ŀ¼��

@ECHO off

:: ---------- �������пɴ���Ȩ���� �������ڱ��ر��������ļ�ִ�У��ܵ����������ִ�У��б����� ---------------
@REM %1 C:\Windows\SysWOW64\mshta.exe vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@REM cd /d "%~dp0"
:: ---------- �������пɴ���Ȩ���� �������ڱ��ر��������ļ�ִ�У��ܵ����������ִ�У��б����� ---------------

@REM �ر�UAC��������Ч
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f

@REM ----------- ��������ͼ ----------------------------

@REM ��������վ�������������ͼ��
@REM [cnblogs-ע����޸�IE8��ȫ����ķ���](https://www.cnblogs.com/freeton/p/3675018.html)
@REM �ڹ��ڵĻ�����Ҫ��ʹ��IE�����������ȫ��ͳһ���óɼ�����ͼ��
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\BrowserEmulation" /v "AllSitesCompatibilityMode" /t REG_DWORD /d 1 /f

@REM -------- ��ҳ��������ٳ� --------------------------
@REM  ���µ�win11ϵͳ�Ѿ���IE����ҳ����GUI�Ƴ��ˡ�

@REM ������ҳ
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d www.baidu.com /f

@REM ��ֹ��ҳ���������޸ģ�ԭ����������û����ô�ߵ�Ȩ���޸���һ�
@REM reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v HomePage /d 1 /f >nul
@REM ��ָ�����ڽ�������� >nul �������κ���Ϣ��
@REM reg delete "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v HomePage /f >nul

@REM ��ֹ edge �ٳ� IE ����IEĬ�����õ�������չ��
@REM [[REG]�����`�� �ѩ`�ƥ��u�Υ֥饦���`�������S�ɤ��롹��쥸���ȥ���O�����뷽����IE11����](https://automationlabo.com/wat/?p=4213)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Enable Browser Extensions" /t REG_SZ /d "NO" /f

@REM ע����޸ģ������ر�IEĬ�����õ�������չ��(���°��win10/11ϵͳ���ǵùص�IEĬ�����õĵ�������չ...˫������)
@REM https://techcommunity.microsoft.com/t5/enterprise/ie-to-edge-87-redirection-issues/m-p/1941961
reg add "HKCU\Software\Microsoft\Edge\IEToEdge" /v "UpsellDisabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Edge\IEToEdge" /v "RedirectionMode" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Edge\IEToEdge" /v "QuietExpirationTime" /t REG_QWORD /d 0 /f

@REM ------------- ���������վ�� -----------------

@REM /v���������ǡ�http��������ζ�������������޸���Ϊ��http���ļ�ֵ�ԣ�/t ָ��type /d  ָ�����û��޸ĵ�ע������ֵ�� /f ǿ��
@REM ���� Ranges\Range100 �������֣���Ҫ���������߳��ļ�ֵע�ᣬ���˸о����� ZoneMap\Domains �ù���
@REM �����ַ��ָ��Ϊ������ս�㡣0x00000002Ϊ2��ʮ�����ơ�

@REM ������������վ��GUI����ɾ������IPվ���bug����ʹ��ʾ���е���һ����Ҳ����ˣ������������Ϊ��IE�������ص�ҵ��
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\192.168.0.1" /v http /t REG_DWORD /d 0x00000002 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\192.168.0.2" /v http /t REG_DWORD /d 0x00000002 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\192.168.0.3" /v https /t REG_DWORD /d 0x00000002 /f

@REM ����������վ���ǿ�������ɾ����IP�ľ�ֻ����ע���ɾ���ˡ�
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\baidu.com\www" /v http /t REG_DWORD /d 0x00000002 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\bing.com\www" /v https /t REG_DWORD /d 0x00000002 /f


@REM ----------------- IE�����ε�վ�����ã��������---------------------------

@REM ֱ�ӽ�������ս��İ�ȫ����������
@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "CurrentLevel" /t REG_DWORD /d 0x10000 /f 

@REM ֱ�ӽ�Intranet �ڲ����İ�ȫ����������
@REM 0 ���ؼ��������1 Intranet �ڲ����� 2 �����ε�վ������3 Internet ������4 �����Ƶ�վ������
@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1" /v "CurrentLevel" /t REG_DWORD /d 0x10000 /f 

@REM [51cto-ʹ�������������IE������վ��](https://blog.51cto.com/guozhengyuan/1393631)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "Flags" /t REG_DWORD /d 0x00047 /f

@REM ��IE���ò���Ӧ�õ������û��� ��win11��IE�ϳ��ֲ��ܼ��������վ���bug
@REM https://www.itprotoday.com/compute-engines/jsi-tip-5130-how-can-i-manage-internet-explorer-security-zones-registry
@REM reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v SECURITY_HKLM_ONLY /t REG_DWORD /d 1 /f

@REM �������ü�ģ����ģ�
:: https://admx.help/?Category=InternetExplorer&Policy=Microsoft.Policies.InternetExplorer::IZ_Policy_TurnOnProtectedMode_9&Language=zh-cn
:: https://admx.help/?Category=InternetExplorer&Policy=Microsoft.Policies.InternetExplorer::IZ_PolicyTrustedSitesZoneTemplate&Language=zh-cn

@REM ����ActiveX �ؼ��Զ���ʾ��0�����ã�3�����á�
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2201" /t REG_DWORD /d 0 /f

@REM 0�����ã�1�����ã�2����ʾ������ Java С����ű� 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1402" /t REG_DWORD /d 0 /f

@REM 0������; ����������ǩ���� ActiveX �ؼ� 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1001" /t REG_DWORD /d 0 /f

@REM 3�����ã���������δǩ���� ActiveX �ؼ�
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1004" /t REG_DWORD /d 1 /f

@REM ѡ��ֻ�ܸ����ĵ��ߣ������ǹ�����̫���ˣ���������ѡ�ͳһ���Ƚ����ҡ�
@REM ����.....

@REM ���ý���������׼������δ����ʾ�������ʹ�� ActiveX �ؼ�
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "120B" /t REG_DWORD /d 0 /f

@REM ����ʹ�õ���������ֹ����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1809" /t REG_DWORD /d 3 /f

@REM �������� Internet Explorer WebBrowser �ؼ��Ľű�
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1206" /t REG_DWORD /d 0 /f

@REM �������� META REFRESH�������ض���
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1608" /t REG_DWORD /d 0 /f

@REM �������� Scriptlet����ҳ��֤���õ���
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1209" /t REG_DWORD /d 0 /f

@REM ��������������ļ��ͽű���Ϊ
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2000" /t REG_DWORD /d 0 /f

@REM ������� XAML �ļ����ṩ�˶Զ�����3D�ڶ෽���֧�֡�
:: [�ٶȰٿ�-XAML](https://baike.baidu.com/item/XAML/6123952?fr=aladdin)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2402" /t REG_DWORD /d 0 /f

@REM ����������� XAML �����Ӧ�ó���
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2400" /t REG_DWORD /d 0 /f

@REM ����������� XPS �ļ�
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2401" /t REG_DWORD /d 0 /f

@REM ����������һ���������϶���ͬ���е����ݣ�**����**
@REM ��ֹԱ�������϶����´��ѡ�
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2708" /t REG_DWORD /d 3 /f

@REM ���������ڶ������֮���϶���ͬ���е����ݣ�**����**
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2709" /t REG_DWORD /d 3 /f

@REM ��������ҳ��ʹ�þ�ý�岥�Ż�������Ƶ�Ͷ�����**����**
@REM ��ֹԱ������Ƶ������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "120A" /t REG_DWORD /d 3 /f

@REM ������������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1604" /t REG_DWORD /d 0 /f

@REM ����װ������Ŀ�����������û��� Web ������Ϊ���汳�� **��ʾ** ��
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1800" /t REG_DWORD /d 1 /f

@REM �����Ϸ��ļ�����/ճ���ļ�
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1802" /t REG_DWORD /d 0 /f

@REM �����ļ�����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1803" /t REG_DWORD /d 0 /f

@REM �����ű������������ֹ���и�������ҳ���ϵĽű����롣
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1400" /t REG_DWORD /d 0 /f

@REM �����ɽű������Ĵ��ڣ����ܴ�С��λ������ 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2102" /t REG_DWORD /d 0 /f

@REM ������վʹ�ýű�������ʾ�����Ϣ
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2105" /t REG_DWORD /d 0 /f

@REM ������վ��û��״̬�����ַ���Ĵ���
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2104" /t REG_DWORD /d 0 /f

@REM ����ͨ�������Ƶ�Э��Ļ���ݷ����ҵĵ��ԣ�**��ʾ** 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2300" /t REG_DWORD /d 1 /f

@REM ����ͨ���ű��Ӽ�������м��С����ƻ�ճ������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1407" /t REG_DWORD /d 0 /f

@REM ����ͨ���ű�����״̬��
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2103" /t REG_DWORD /d 0 /f

@REM �ر� .NET Framework ��װ���� **����**
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2600" /t REG_DWORD /d 0 /f

@REM �ر��״����пؼ���ʾ
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1208" /t REG_DWORD /d 0 /f

@REM ���� MIME ̽�飬��Ҫ����ȷ���ļ����͡�
:: [Java��ȡ�ļ���Mime���͵ļ��ַ�ʽ�ܽ�](https://backend.devrank.cn/traffic-information/7082116610194065421)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2100" /t REG_DWORD /d 0 /f

@REM ���� SmartScreen ɸѡ��ɨ�裬**����**
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2301" /t REG_DWORD /d 3 /f

@REM ���ñ���ģʽ
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2500" /t REG_DWORD /d 3 /f

@REM ���ÿ�վ��ű�ɸѡ��**����**
@REM �����վ��ű�ע�롣
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1409" /t REG_DWORD /d 3 /f

@REM ����Internet Explorer ���־ɰ�ɸѡ���������ݵ�
:: https://learn.microsoft.com/en-us/archive/blogs/ie_cn/ie10-release-preview-dx
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "270B" /t REG_DWORD /d 0 /f

@REM ������IFRAME������Ӧ�ó�����ļ�
@REM FRAME��HTML��ǩ���������ĵ��е��ĵ������߸����Ŀ��(FRAME)��iframeԪ�ػᴴ����������һ���ĵ���������ܣ������ڿ�ܣ���
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1804" /t REG_DWORD /d 0 /f

@REM �ڲ�̫�ϸ�� Web �������е���վ���Ե�����������**��ʾ**
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2101" /t REG_DWORD /d 1 /f

@REM ���öԿ��ܲ���ȫ���ļ���ʾ��ȫ����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1806" /t REG_DWORD /d 0 /f

@REM ���öԱ��Ϊ�ɰ�ȫִ�нű��� ActiveX �ؼ�ִ�нű��������û���Ԥ�����Զ����нű�������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1405" /t REG_DWORD /d 0 /f

@REM ��û�б��Ϊ��ȫ�� ActiveX �ؼ����г�ʼ���ͽű����У�**��ʾ**
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1201" /t REG_DWORD /d 1 /f

@REM �û����ݳ־û�
@REM �û��������������ʷ��¼���ղؼС�XML �洢��ֱ���ڱ��浽���̵���ҳ�б�����Ϣ��
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1606" /t REG_DWORD /d 0 /f

@REM �����ύ�Ǽ��ܱ�����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1601" /t REG_DWORD /d 0 /f

@REM �����ļ����ص��Զ���ʾ
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2200" /t REG_DWORD /d 0 /f

:: ��ʾ������ݣ�**��ʾ** ��ȫ(https://)�Ͳ���ȫ����(http://)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1609" /t REG_DWORD /d 1 /f

@REM ���á�û��֤���ֻ��һ��֤��ʱ����ʾ���пͻ���֤��ѡ��
@REM �Կ�����վ�㣬�Զ�֤��ȷ��
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A04" /t REG_DWORD /d 0 /f

@REM �û�ͨ�� HTML �������ļ�ʱ����·����Ϣ��
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "160A" /t REG_DWORD /d 0 /f

@REM �Զ�ʹ�õ�ǰ�û����������Զ���¼
@REM �����ϵ�smb�ļ�����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1A00" /t REG_DWORD /d 0 /f

@REM ���ô˲������ã��� Internet Explorer �����鷴��������Բ鿴�Ƿ�ɰ�ȫ���� ActiveX �ؼ�ʵ����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "270C" /t REG_DWORD /d 0 /f

@REM �û����Կ���򿪴��ںͿ�ܣ������Կ������Ӧ�ó���
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1607" /t REG_DWORD /d 0 /f

@REM REG_DWORD ��Ĭ�Ͻ�����ʮ�����ƣ�������ֵ������ʮ���ơ������Ʒ�ʽ����ʾ��
@REM 196608 ʮ���ƣ����Ƶ��Ȩ�ޣ���ȫ�� - �� 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1E05" /t REG_DWORD /d 0x030000 /f

@REM �������� ActiveX �ؼ��Ͳ��
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1200" /t REG_DWORD /d 0 /f

@REM ����ִ��δǩ�����й������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2004" /t REG_DWORD /d 0 /f
@REM ����ִ��ǩ�����й������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2001" /t REG_DWORD /d 0 /f

@REM �û������������м���ʹ�� MSXML �� ADO ��������������վ�����ݵ�ҳ��
@REM �ڲ����ݿ����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1406" /t REG_DWORD /d 0 /f

@REM Java Ȩ�ޣ���ȫ�� - �ͣ�196608 ʮ����
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1C00" /t REG_DWORD /d 0x030000 /f

@REM �����ֲ��֣��磺 Default1408Local��Default140ATrusted��Default1605Internet��Default2302Restricted

:: ���Ȳ��ĵ�����:[csdn-�޸�ע������޸�IE���������ϻ���](https://blog.csdn.net/wangqiulin123456/article/details/17068649)
:: ΢��ٷ��ѽ��ɰ��IE�ĵ�����ɾ���ˣ����������ҵ�����˿�����Ա����������ĵ������Է�������ߡ�
:: ������΢��ʱ������Щʲô���ã�Ȼ����"�����ε�վ������ģ��"��飬����Щ���������˱�����ζ�Ķ���
:: https://learn.microsoft.com/en-us/openspecs/windows_protocols/ms-gppref/c05dc3bf-dcfc-4f46-8be2-8a78e46875a7

@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "140A" /t REG_DWORD /d 0 /f
@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1605" /t REG_DWORD /d 0 /f
@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1408" /t REG_DWORD /d 0 /f
@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2302" /t REG_DWORD /d 0 /f


@REM ------------ ��������ͼʾ����----------------
@REM %Temp% ��һ������Ŀ¼��˫��winRAR�������ļ�����������
@REM  [���˰���֪ʶ����-attrib -s -r -h��ʲô��˼��](https://iask.sina.com.cn/b/3124185.html)
@REM  attrib���ĵ����ļ���Ŀ¼�����ԣ�Rֻ������ -R���ֻ�����ԣ�H�����������ԣ�S����ϵͳ���ԡ�
@REM  del /f��ǿ��ɾ��ֻ���ļ���/s��ɾ��������Ŀ¼�е�ָ�����ļ���/q������ģʽ

@REM If exist "%Temp%\~import.reg" (
@REM  Attrib -R -S -H "%Temp%\~import.reg"
@REM  del /F /Q "%Temp%\~import.reg"
@REM If exist "%Temp%\~import.reg" (
@REM  Echo Could not delete file "%Temp%\~import.reg"
@REM  Pause
@REM )

@REM �� Internet Explorer\BrowserEmulation\ClearableListData\UserFilter ����ע�����÷���
@REM [IE�������������ͼ�������ݽ���](https://blog.csdn.net/thb_cn/article/details/125124565)
@REM ��������˵����ϸ�£��������ơ�ʮ�����Ʋ����ʺϴ�����ˣ���PASS
@REM �����������������׵���IE ��������ͼ�����޷������վ����ʾ����������һ����Ч�򡱵Ĵ���
:: [cnblogs-IE 11��������ͼ�����޷������վ����ʾ����������һ����Ч��](https://www.cnblogs.com/xiykj/p/13603024.html)

@REM > "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
@REM >> "%Temp%\~import.reg" ECHO.
@REM >> "%Temp%\~import.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\BrowserEmulation\ClearableListData]
@REM >> "%Temp%\~import.reg" ECHO "UserFilter"=hex:41,1f,00,00,53,08,ad,ba,01,00,00,00,36,00,00,00,01,00,00,00,\
@REM >> "%Temp%\~import.reg" ECHO   01,00,00,00,0c,00,00,00,d9,1c,6d,08,94,d9,d6,01,01,00,00,00,0c,00,31,00,39,\
@REM >> "%Temp%\~import.reg" ECHO   00,32,00,2e,00,31,00,36,00,38,00,2e,00,30,00,2e,00,33,00,33,00

@REM START /WAIT REGEDIT /S "%Temp%\~import.reg"
@REM DEL "%Temp%\~import.reg"


@REM ------- ���������վ��ʾ�� ------------------------

@REM ������վ�����ã���д�����Լ���Ҫ���õ���ַ����ַ Range�Ƿ�֧��Χ����˼��ÿ���һ��������Range1...2...3�ȵ�
@REM ��:Range��������ض���Χ�����ơ���ע�⣬����ǰ���ð���Ǳ���ģ���Ȼ���ַ�����ֵ������ʾ����ͬ����ϵ��
@REM REG_SZ �ַ������ͣ�REG_DWORD ��ֵ���ͣ��������ָ֧��������������
@REM 0 ���ؼ��������1 Intranet �ڲ����� 2 �����ε�վ������3 Internet ������4 �����Ƶ�վ������

@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range100" /v ":Range" /t REG_SZ /d 192.168.0.11 /f 
@REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range100" /v "http" /t REG_DWORD /d 2 /f

@REM -----------д�����漰���Ĺ���---------------------

@REM д�õ������������ Bat To Exe Converter�����exe�ļ�
@REM Windows������Ҫ�Ĳο���վ��https://admx.help
@REM ע����ߣ�https://registry-finder.com
@REM �������ߣ�https://www.voidtools.com/zh-cn/
@REM С���win11 IE�޸����ߣ�https://www.yrxitong.com/h-nd-963.html

ECHO "�ѹر�UAC���������Խ���Ч��"
pause

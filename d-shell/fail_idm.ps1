# *************ע�����Ϣ˵��******************

## HKLM���ø����������ؼ������ϵͳ��Ϣ������Ӳ���Ͳ���ϵͳ��Ϣ����ȫ���ݺͼ����ר�õĸ������������Ϣ
## HKU����Щ��Ϣ����ϵͳ��ǰ�û�ʹ�õ�ͼ�꣬����ĳ����飬��ʼ�˵��������Լ���ɫ������
## HkCU���ø���������ǰ��¼�û���������Ϣ�������������������˳����Լ��������õ�
## HKCC: Ӳ����������Ϣ
## ��ʵHKEY_LOCAL_MACHINE�� HKEY_USERS������������������ע�������������Ǵ�ĳ����֧ӳ������ģ��൱�ڿ�ݼ���ʽ���Ǳ�����

# ���ܼ��š�Internet Download Manager������ɾ���ɾ��㡣
# �� reg del DownloadManager���о�ɾ��ע���Ҳ���ǿ�������������һ��������ȷ
# ɾ��ע���������Ϣ���ⲿ�ֿ�����û�¶ԣ������������Ʊ����ƽ�һ����ȫɨһ�顣�����ʺϵ�����

# reg delete "HKLM\Software\DownloadManager" /f 2> $null
# reg delete "HKU\.DEFAULT\Software\Download Manager" /f 2>$null ���Ĭ������������
# reg delete "HKLM\SOFTWARE\Internet Download Manager" /f /reg:32 ��/reg:32�� 32λ�������

# HKCU���ø���������ǰ��¼�û���������Ϣ�������������������˳����Լ��������õȣ���ǰ�û���

# reg delete "HKCU\Software\DownloadManager" /f /v "MData" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "LName" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "FName" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "Email" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "Serial" 2> $null

# ����������������ص������ˣ�ɾ��ɨ�����м���֤����������Ϣ

# reg delete "HKCU\Software\DownloadManager" /f /v "scansk" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "tvfrdt" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "radxcnt" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "ptrk_scdt" 2> $null

# ɾ��������ص���Ϣ���Լ����°桢���پ�Ĭ���£�

# reg delete "HKCU\Software\DownloadManager" /f /v "LstCheck" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "LastCheckQU" 2> $null
# reg delete "HKCU\Software\DownloadManager" /f /v "CheckUpdtVM" 2> $null
#
# HKU����Щ��Ϣ����ϵͳ�û�ʹ�õ�ͼ�꣬����ĳ����飬��ʼ�˵��������Լ���ɫ������ȣ������û���
# �ⲿ�ֵľ���Ӧ������������ϵͳ�ϼ�¼�ļ�����Ϣ���Լ������Ŀ
# ��ȡ����sid
# $sid=whoami /user |Select-String -SimpleMatch "S-"|Write-Output
# reg delete "HKU\$sid\Software\DownloadManager" /f /v "MData"
# reg delete "HKU\$sid\Software\DownloadManager" /f /v "MData" 2> $null
#  �������ͬ��
#*********************************************

#****ר�У�CLSID Classes��Wow6432Node .DEFAULT��������***

# �ȵ�˵��GUID\��ȫ��Ψһ��ʾ����,��Windowsϵͳ��Ҳ��֮ΪClass ID����дΪCLSID��
# CLSID��һ��128λ���������Ϊ��ȷ����������ԣ������ظ��������㷨��Ҫ�Ǵ������������֣�
## 1. һ��������������ϵͳ���������кţ�����ÿһ��������MAC��ַ����һ������˲�����IDҲ�ͻ��в��졣
## 2. ����һ��������������ϵͳ�ĵ�ǰʱ�䡣
# Wow6432Node Wow32Node�������ڴ���32λ�����ע����Ϣ�õġ�
# �����64λWindows 7ϵͳ�����������ǿ��Կ��������ϰ�װ��32λ�����ע�����Ϣ��

#******************************************

# ****ע����������ߣ�Registry Finder ϵͳ������Windows11 Mac***
#               ���ҵ�ע��ֵ
# {07999AC3-058B-40BF-984F-69EB1E554CA7}
# {5312C54E-A385-46B7-B200-ABAF81B03935}
# {436D67E1-2FB3-4A6C-B3CD-FF8A41B0664D}
# {E6871B76-C3C8-44DD-B947-ABFFE144860D}
# {79873CC5-3951-43ED-BDF9-D8759474B6FD}

# �ۺ��Ʋ������������ģʽж�������׽��classid���Լ��ƽⰮ�����ռ������й���idm classid
# �ֻ�������һ���汾��Ϊ�˼��ݡ�
# ��Щclassic �����϶��Ƕ�������ʾ�����ݣ�Ҳû��˵�����ѣ�������Ϊ������ע����Ϣ��....
# δ�ҵ���class id
# {7B8E9164-324D-4A2E-A46D-0165FB2000EC}
# {5ED60779-4DE2-4E07-B862-974CA4FF2E9C}
# {6DDF00DB-1234-46EC-8356-27E7B2051192}
# {D5B91409-A8CA-4973-9A0B-59F713D25671}
# {9C9D53D4-A978-43FC-93E2-1C21B529E6D7}
# {E8CF4E59-B7A3-41F2-86C7-82B03334F22A}
# {84797876-C678-1780-A556-0CD06786780F}

#*******************************************
# ����һ������Ӽ�����Ϣ��ע�ỹ�ǲ��У�ʧЧ
# ���������ԭ���Ѳ�����ע������д��ȥ��ʧЧ
# ����������������ɱ�����hosts�������ã�ipҲû��
# �����ģ���������Ϊ���̻�.bat�����ࡢ�ظ���δ�Ż���ע��ɾ����Ŀ���ɹ�

# �ɵ㣬֮ǰ�ҵ��﷨�����ַ������档
# ֻ���£�������ע����Ϣ������

# �����壺δ�ҵ���class idע�͡�������ӵ���Ϣע�͵���ʧЧ��
# ������������ע�͹���ע����Ŀ���������ʧЧ��Ӣ���ɴ������ܹ��ڴ���û����֤������
# �����ߣ���ӷ���ǽ�����ڵ�����Ч��
# �����: �߼���ϣ�ȡ�������ļ��� "C:\Program Files (x86)\Internet Download Manager\IDMGrHlp.exe"

#**************��дע�뼤�����е�idm************

# ������û�У���ɱ��������н�����˵�����α���
taskkill /F /IM "IDM*" /T  2> $null
# taskkill /F /IM "IDMGrHlp.exe"  2> $null
# taskkill /F /IM "IEMonitor.exe"  2> $null
# taskkill /F /IM "IDMMsgHost.exe"  2> $null
# taskkill /F /IM "MediumILStart.exe"  2> $null
# taskkill /F /IM "MediumILStart.exe"  2> $null
# taskkill /F /IM "IDMIntegrator64.exe"  2> $null


# reg add "HKCU\Software\DownloadManager" /f /v "LName" /d "Inc." 2> $null    
# reg add "HKCU\Software\DownloadManager" /f /v "FName" /d "Tonec" 2> $null
# reg add "HKCU\Software\DownloadManager" /f /v "LstCheck" /d "19/01/38" 2> $null
# reg add "HKCU\Software\DownloadManager" /f /v "Email" /d "info@tonec.com" 2> $null
# reg add "HKCU\Software\DownloadManager" /f /v "Serial" /d "7WPV5-NHHF3-A2P39-LRJ74" 2> $null

# HKLM���ø����������ؼ������ϵͳ��Ϣ������Ӳ���Ͳ���ϵͳ��Ϣ����ȫ���ݺͼ����ר�õĸ������������Ϣ
reg delete "HKLM\Software\DownloadManager" /f   2> $null
reg delete "HKLM\Software\Download Manager" /f    2> $null
reg delete "HKLM\Software\DownloadManager" /f /reg:32    2> $null
reg delete "HKLM\Software\Download Manager" /f /reg:32    2> $null
reg delete "HKLM\SOFTWARE\Internet Download Manager" /f    2> $null
reg delete "HKLM\SOFTWARE\Internet Download Manager" /f /reg:32    2> $null
reg delete "HKU\.DEFAULT\Software\DownloadManager" /f    2> $null
reg delete "HKU\.DEFAULT\Software\Download Manager" /f    2> $null
reg delete "HKU\.DEFAULT\Software\DownloadManager" /f /reg:32    2> $null
reg delete "HKU\.DEFAULT\Software\Download Manager" /f /reg:32    2> $null

## HkCU���ø���������ǰ��¼�û���������Ϣ�������������������˳����Լ��������õ�
reg delete "HKCU\Software\DownloadManager" /f /v "MData"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "LName"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "FName"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "Email"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "Serial"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "scansk"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "tvfrdt"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "radxcnt"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "LstCheck"    2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "ptrk_scdt"   2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "LastCheckQU" 2> $null
reg delete "HKCU\Software\DownloadManager" /f /v "CheckUpdtVM" 2> $null


$sid=whoami /user| Select-String -SimpleMatch "-S"|Write-Output

reg delete "HKU\$sid\Software\DownloadManager" /f /v "MData" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "LName" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "FName" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "Email" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "Serial" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "scansk" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "tvfrdt" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "radxcnt" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "LstCheck" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "ptrk_scdt" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "LastCheckQU" 2> $null
reg delete "HKU\$sid\Software\DownloadManager" /f /v "CheckUpdtVM" 2> $null


# д��������ɾ����Щ�����ע��class id
function Idm-Reg-Del 
{
reg delete "HKEY_CURRENT_USER\Software\Classes\Wow6432Node\CLSID\$idm_classid" /f 2> $null
reg delete "HKEY_LOCAL_MACHINE\Software\Classes\Wow6432Node\CLSID\$idm_classid" /f 2> $null
reg delete "HKEY_USERS\.DEFAULT\Software\Classes\CLSID\$idm_classid" /f 2> $null
reg delete "HKEY_USERS\.DEFAULT\Software\Classes\Wow6432Node\CLSID\$idm_classid" /f 2> $null
}

$idm_classid="{07999AC3-058B-40BF-984F-69EB1E554CA7}";Idm-Reg-Del 
$idm_classid="{5312C54E-A385-46B7-B200-ABAF81B03935}";Idm-Reg-Del
$idm_classid="{436D67E1-2FB3-4A6C-B3CD-FF8A41B0664D}";Idm-Reg-Del
$idm_classid="{E6871B76-C3C8-44DD-B947-ABFFE144860D}";Idm-Reg-Del
$idm_classid="{79873CC5-3951-43ED-BDF9-D8759474B6FD}";Idm-Reg-Del

$idm_classid="{7B8E9164-324D-4A2E-A46D-0165FB2000EC}";Idm-Reg-Del
$idm_classid="{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}";Idm-Reg-Del
$idm_classid="{6DDF00DB-1234-46EC-8356-27E7B2051192}";Idm-Reg-Del
$idm_classid="{D5B91409-A8CA-4973-9A0B-59F713D25671}";Idm-Reg-Del
$idm_classid="{9C9D53D4-A978-43FC-93E2-1C21B529E6D7";Idm-Reg-Del
$idm_classid="{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}";Idm-Reg-Del
$idm_classid="{84797876-C678-1780-A556-0CD06786780F}";Idm-Reg-Del

# Write-Output "��������д��ע����Ϣ��"
# netsh interface set interface "��̫��" disabled 
# Start-Sleep -s 3

# ��ʼд��ע����Ϣ
# �����ԣ����ϵ��̻�������Ȼ����࣬�����ظ�������Ч�������һ����ʶ����ֻ����ж���������
#�������ע����Ϣ��ɾ��������ӣ������ǲ���Ϊ�������������֮���������µ�ע����Ϣ����������û��Ҫ��
reg add "HKCU\Software\DownloadManager" /f /v "LName" /d "Inc." 2> $null    
reg add "HKCU\Software\DownloadManager" /f /v "FName" /d "Tonec" 2> $null
reg add "HKCU\Software\DownloadManager" /f /v "LstCheck" /d "19/01/38" 2> $null
reg add "HKCU\Software\DownloadManager" /f /v "Email" /d "info@tonec.com" 2> $null
reg add "HKCU\Software\DownloadManager" /f /v "Serial" /d "7WPV5-NHHF3-A2P39-LRJ74" 2> $null


# ban ip
# netsh advfirewall firewall add rule name="����IDM��֤���IP��ַ" dir=out  action=block enable=yes profile=any localip=any remoteip="169.55.0.227","169.55.0.224","50.22.78.28","50.97.82.44","69.41.163.149","174.127.73.85" interfacetype=any
# ban ��֤�������
netsh advfirewall firewall add rule name="����-����IDM��֤����" dir=out program="C:\Program Files (x86)\Internet Download Manager\IDMGrHlp.exe" action=block

Remove-Item -Path "C:\Program Files (x86)\Internet Download Manager\IDMGrHlp.exe" -Recurse -Force
New-Item "C:\Program Files (x86)\Internet Download Manager\IDMGrHlp.exe"  -type file  -force


# Write-Output "
# 127.0.0.1 *.registeridm.com
# 127.0.0.1 *.tonec.com
# 127.0.0.1 *register.internetdownloadmanager.com
# 127.0.0.1 *register.idm.com
# 127.0.0.1 *reg.idm.com
# 127.0.0.1 reg.internetdownloadmanager.com
# " >> C:\Windows\System32\drivers\etc\hosts


# Write-Output "�������磬������idm������֤��"
# netsh interface set interface "��̫��" enable

Write-Output "��ע�����кŵ������Ϣ���߼�����ԡ�"





#*******�ο�************

# ������

# [csdn-CMD �����](https://blog.csdn.net/xiaoruofan/article/details/126263734)
# [�����Windows10��ʹ��PowerShell��ֹIP����վ](https://www.xiaoyuanjiu.com/100298.html)
# [���д���-��ֹĳЩ����/�ⲿip��ַ���ӵ�internet(���������ļ���windows������ǽ)](http://ask.sov5.cn/q/A2ohMJN7dq) 
# [���÷���ǽ������ֹidm��֤](https://blog.csdn.net/q412717840/article/details/109743287)
# [cnblogs-IDM HOSTS����ע�� ���ε���ַ](https://www.cnblogs.com/Magiclala/p/16111334.html)
# [souhu-����IDM�����°汾��ʾ�ķ���](https://www.sohu.com/a/132104086_612933)
# [cnblogs-���������ȡϵͳ�е�ǰ�˻���SID](https://www.cnblogs.com/GuominQiu/articles/1871063.html)
# [cnblogs-wmic �����÷���ʵ��](https://jiuaidu.com/jianzhan/908099/)
# [qa.1r1g-ִ������ʱ��κ���PowerShell�е��ض�����](https://qa.1r1g.com/sf/ask/3818470141/)

# ע���

# [csdn-����RegDeleteKey�޷�ɾ��ע�����](https://blog.csdn.net/yiyefangzhou24/article/details/6134536)
# [csdn-ע���HKCR, HKCU, HKLM, HKU, HKCC��ע����г��õ�5����������](https://blog.csdn.net/up_upup/article/details/108679443)
# [cnblogs-Ӧ����Ӧ-Windows���ֲ�����¼����](https://www.cnblogs.com/autopwn/p/15701716.html)
# [cnblogs����װʱ��дע���](https://www.cnblogs.com/Leo_wl/archive/2012/10/19/2731740.html)
# [ժ��ٿ�-clsid](https://www.zhaibian.com/baike/26933812114132084113.html)
# [����ͤ-Win7ע�������Wow6432Node��ʲô?](https://www.beihaiting.com/a/ZSK/JZS/2013/0410/1869.html)

# �ַ�������
# [csdn-for /f����֮��Delims��Tokens�÷�&�ܽ�](https://blog.csdn.net/kagurawill/article/details/114982328)
# [�ٶ�֪��-ִ��DOS�������˵��ʱ��Ӧ��%%a,����ְ�æ�����](https://zhidao.baidu.com/question/1548324309453385987.html)
# [cnblogs-�������еı����Ͳ�����һ��](https://www.cnblogs.com/siwuxie095/p/6351210.html)
# [cnblogs-Powershell ����findstr](https://www.cnblogs.com/thescentedpath/p/findstr.html)
# [csdn-powershell �ļ�/�ļ��в���](https://blog.csdn.net/winterye12/article/details/105918774)

# �ݸ�

# netsh advfirewall firewall add rule name="����-����IDM������" dir=out program="C:\Program Files (x86)\Internet Download Manager\IDMan.exe" action=block
# netsh advfirewall firewall del rule name="����-����IDM������"

# netsh interface set interface "��̫��" disabled 
# netsh advfirewall firewall add rule name="����-����IDM��֤����" dir=out program="C:\Program Files (x86)\Internet Download Manager\IDMGrHlp.exe" action=block
# netsh advfirewall firewall add rule name="����IDM��֤���IP��ַ" dir=out  action=block enable=yes profile=any localip=any remoteip="169.55.0.227","169.55.0.224","50.22.78.28","50.97.82.44","69.41.163.149","174.echo 127.73.85" interfacetype=any

#  �������ض���֤������������˫�����£���С���������������ʧЧ�ļ��ʡ�
# echo 127.0.0.1 *.registeridm.com >> C:\Windows\System32\drivers\etc\hosts

# ���ڵ����� %i��%%i �������ļ��á�
# ��ȡ�����ϵ�SID:��wmic userAccount where "Name='%userName%'" get sid /value
# ��For /f�������������ı�����ȡ�ַ����� delims�����з��ַ�������tokens������ȡ�ַ�������ʱ�����sid�����ͳɴ���sid������

# forѭ������������������֧�����飬����Ƕ�׳����˻ᣬ��̫�У��Ѹ�
# �����ظ��ԵĴ����װ�ɺ�����Ҳû��...goto�ɡ���ʼ��classid������goto��װ��
# �ѻ���powershell

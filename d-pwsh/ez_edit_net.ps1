# ˵��
# 1. һ����˵��������IP���ó�IP��ַ��ͨ���󲿷ֲ������ǹ̶��ģ�����ʡ�����ֻ�޸�һ��IP����
# 2. �����hosts��CMD����Ա�򿪼��±���д������... notepad C:\Windows\System32\drivers\etc\hosts
# 3. ������ʹ�ã�nslookup�������������ܵ�Ӱ�죬�Ʋ�Ϊ��������תԭ��
# 4. nslookupͨ��������Զ��dns���������������IPv6�ĵ�ַ��
# 5. ÿһ�����Ĵ��붼������ȥ�ã�����ps1���е�����Ч����д��dns.sb����������

#***************���Ի�������̬IP���ü�����*********************

# 1. �����дIP��DNS֮ǰ��ʷ��Ϣ
netsh interface ip show config > ipbak.txt
## 1.2 ��ӡ��Ҫ��ʾ
echo "cmd���� ipbak.txt �鿴������Ϣ����������Ͱ��del ipbak.txt"
# 2. �޸�IP���������롢����
$input_ip = Read-Host "����IP��ַ";netsh interface ip set address "��̫��" static $input_ip 255.255.255.0  192.168.1.1
# 3. ����DNS������ӡOK
Set-DnsClientServerAddress -InterfaceAlias "��̫��" -ServerAddresses ("114.114.114.114","8.8.8.8");echo "OK"

#------------------------------------------------------------

#*****************��̬IP��DNS���ü�����****************

netsh interface ip set address "��̫��" dhcp
netsh interface ip set dnsservers "��̫��" source=dhcp

#------------------------------------------------------------



#*******************����վ��dnsд������************************
# ��չ��������� nslookup -ty=ptr 1.1.1.1

# 1. ��nslookup������ַ�У���ȡ��������dns��¼��ע���ı���dns.sb��һ��dns������
nslookup dns.sb|Select-Object -Index 4 >dns-w.txt
# 2. ��ȡdns-w.txt�ı����ݣ���������ɸѡ��IP��ַ��$matches[0]ȡֵ
(Get-Content dns-w.txt) -match '\d+\.\d+\.\d+\.\d+'; $get_dns_num = $matches[0]
# ����dns�����������������ȥ
Set-DnsClientServerAddress -InterfaceAlias "��̫��" -ServerAddresses ($get_dns_num)
# ˳��ѽ�����¼�ı�ɾ������ӡok
del dns-w.txt;echo "ok"

#------------------------------------------------------------

# �ο�������ݸ�

## ��̬IP���òο���

### [��netsh�鿴������IP��ַ��DNS��ַ������ǽ](https://blog.51cto.com/guochunyang/5851385)
### [�����Windows��ʹ��Powershell Grep��Select-String Cmdlet Grep�ı��ļ���](https://blog.csdn.net/cunjiu9486/article/details/109074646)
### [PowerShell���IP��ַ](https://blog.csdn.net/qq_41863100/article/details/120360662)
### [cnblogs-�޸�ip](https://www.cnblogs.com/awpatp/p/4549119.html)
### [���Է��å�⡿PowerShell�ˤ��IP���ɥ쥹���O�����Ӊ��](https://qiita.com/Kirito1617/items/aed439bcb66c63489337)
### [powershell - ʹ��Powershell�ڶϿ����ӵ����������þ�̬IP���Ƿ���ԣ�](https://www.coder.work/article/7399792)

## ����վ��dnsд�������ο���

### [��֮��-Powershell���˹ܵ����](https://www.shuzhiduo.com/A/MAzAb2xMJ9/)
### [nhooo-PowerShell��ʹ��������ʽƥ���ַ���ʵ��](https://www.nhooo.com/note/qacidn.html)
### [csdn-����������ʽ���ܣ�����ƥ��/�ַ�ƥ��/����ƥ�䣩](https://blog.csdn.net/zx77588023/article/details/107116196/)
### [csdn-nslookup �����������](https://blog.csdn.net/weixin_42426841/article/details/115364502)

## �����Բο���

### [���ڿ��õ� IPv6 ���� DNS �ͼ��� DNS](https://www.cccitu.com/2205359.html)
### [csdn-�޷�����XXX����ʶ��Ϊ cmdlet���������ű��ļ�������г�������ơ� ���������Ľ������](https://blog.csdn.net/sxeric/article/details/122403591)


## �ն�������.�ݸ�1

### �ӡ�ipconfig /all���У�ƥ��ؼ��֣�������ַ���
### $show_ip = ipconfig /all|Select-String "IPV4","��������","Ĭ������"|out-string
### ���IP���ã�����DNS1��2ȫ������
### Write-Output $show_ip;get-DnsClientServerAddress -InterfaceAlias "��̫��" -AddressFamily "IPv4"
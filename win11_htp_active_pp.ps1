echo " "
echo "win11��ͥ����Զ�������רҵ�棬win11 Pro�������汾ϵͳ��ֱ������Windows/Office����ؼ������"
echo "ע�⣺�ڼ�ͥ�������������ڼ䣬���Ի��Զ��������������������Ҫ�ٴ�����ָ������"
echo " "
# ��ȡϵͳ�汾����ת�ַ�����
$winv=""+(gwmi win32_operatingsystem |% caption)
$win_v_home="Microsoft Windows 11 ��ͥ��"
$up_key = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String("VgBLADcASgBHAC0ATgBQAEgAVABNAC0AQwA5ADcASgBNAC0AOQBNAFAARwBUAC0AMwBWADYANgBUAA=="))
if($winv -eq $win_v_home){
# sc config���ÿ���������LicenseManager=����ע�����wuauserv=Windows Update ����
$x="sc config LicenseManager start= auto & net start LicenseManager"
$y="sc config wuauserv start= auto & net start wuauserv"
$z="changepk.exe /productkey"+$up_key
# ͨ���ܵ���������CMD
$x,$y,$z|cmd
# ���ÿ�������ִ�� powershell
set-location HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce
new-itemproperty . MyKey -propertytype String -value "Powershell c:\code.ps1" -force
# ��ʱ����
# Start-Sleep -Seconds 3

}else{
# ɾ������������ע���� mykey
reg query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce | findstr "MyKey"
if ($? -eq "True"){reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /v MyKey /f}

# curl ��ȡԶ�̽ű�ͨ���ܵ����������������µĳ������С�
irm https://massgrave.dev/get | iex
}


#------------------------------------------------------------------------------------------
#
# �ؼ����ֲο���
#
## Powershell ��ӿ��������https://blog.csdn.net/zhouyingge1104/article/details/122454953
## powershell ����ֻ����һ�Σ�https://www.it1352.com/2339670.html
## powershell ȥ�����������https://blog.csdn.net/weixin_34270606/article/details/93126549
## powershell set-location https://www.yiibai.com/code/detail/15308
## �ƻ���������powershell�ű���α��ⴰ�����֣���https://zhidao.baidu.com/question/928430296880486339.html
## powershell�Թ���ԱȨ�����У� https://www.yiibai.com/powershell/powershell-run-as-administrator.html
## powershell����&&�Ĳ�����https://www.codenong.com/48812879/
#
# ����ע�ͣ�����һ���������� 
# [System.Text.Decoding]::Unicode.GetString([System.Convert]::FromBase64String("")) 
#------------------------------------------------------------------------------------------
#
# �µķ���
## �����ٴ�ʱ�Թ���Ա������У�ɾ���ű������������Ѿ�������©�������о��������ˡ�
## ������⣺������������ü���������ܸ㶨���򵥿��еĻ�������ϵͳ�ɾ�Σ���ˡ�
## ���������ǻ��ס�ġ�
#
# �����ο�
## ���̿��ƣ�http://xahlee.info/powershell/powershell_flow_control.html
# ��ȡϵͳ�汾���ο���https://qa.1r1g.com/sf/ask/513113121/
## �ҵ��˻�ȡϵͳ�汾���ַ�����ʵ���������Ͳ��þ�̬���� $global:i = 1;i++; �����ˡ�
# cmd SC����ο��� 
## https://www.cnblogs.com/wiseblog/articles/14932469.html
# powershell��cmd�л����ο��ο���
## https://www.codenong.com/24940243/
#
#------------------------------------------------------------------------------------------




# irm https://massgrave.dev/get | iex

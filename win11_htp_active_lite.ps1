# GB2312
echo " "
echo "win11��ͥ����Զ�������רҵ�棬win11 Pro�������汾ϵͳ��ֱ������Windows/Office����ؼ������"
echo "ע�⣺�ڼ�ͥ�������������ڼ䣬���Ի��Զ��������������������Ҫ�ٴ�����ָ������"
echo " "
# [System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("asdasd"));
# ��ȡϵͳ�汾��ת�ַ�����
$winv=""+(gwmi win32_operatingsystem |% caption)
$win_v_home="Microsoft Windows 11 ��ͥ��"
# �������
$up_key = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String("VgBLADcASgBHAC0ATgBQAEgAVABNAC0AQwA5ADcASgBNAC0AOQBNAFAARwBUAC0AMwBWADYANgBUAA=="))
if($winv -eq $win_v_home){
# sc config���ÿ���������LicenseManager=����ע�����wuauserv=Windows Update ����
$x="sc config LicenseManager start= auto & net start LicenseManager"
$y="sc config wuauserv start= auto & net start wuauserv"
$z="changepk.exe /productkey "+$up_key
# ͨ���ܵ���������CMD
$x,$y,$z|cmd
}
# curl ��ȡԶ�̽ű�ͨ���ܵ���������������
irm https://massgrave.dev/get | iex
# ɾ����ǰ�ű�
remove-item $MyInvocation.MyCommand.Path -force

#----------------------------------------------------------------------------------------
#
#
# �ο�����
# http://xahlee.info/powershell/powershell_flow_control.html
# ��ȡϵͳ�汾���ο���https://qa.1r1g.com/sf/ask/513113121/
## �ҵ��˻�ȡϵͳ�汾�ķ������Ͳ��þ�̬���� $global:i = 1;i++; �����ˡ�
# cmd SC����ο��� 
## https://www.cnblogs.com/wiseblog/articles/14932469.html
# powershell��cmd�л����ο��ο���
## https://www.codenong.com/24940243/
#
#------------------------------------------------------------------------------------------


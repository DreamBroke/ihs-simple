# ����power shell�ű�����
# Set-ExecutionPolicy RemoteSigned -A 

# ����smbӳ�䵽�����������������˺ü���Ĵ��봦������ҲûAPI�����ˡ�

# �ر�����
powercfg /H off 

# �ر�UAC
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force

#����smb1
Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -A -N 

# �����ͼ�꣬�ҵĵ��ԣ�����վ
"rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,0" | cmd

# Restart-Computer # ��������

#---------
# �ο�
# [net use ����ʹ�ý̳�](https://blog.csdn.net/wcyyyyyyy/article/details/121533071)
# [���ʹ��Windows PowerShell����UAC��](https://qa.1r1g.com/sf/ask/670057391/)
# [����Ա����-����������ҵĵ���ͼ�굽����](https://www.wangt.cc/2020/11/����������ҵĵ���ͼ�굽����/)
# [windows7ϵͳ������ɾ������ͼ�꣬���ҵĵ��ԣ������ھӣ��ҵ��ĵ����������](https://zhidao.baidu.com/question/1884005585197150228.html)
# [cnblogs-PowerShell��ӻ��޸�ע�����������ű�](https://www.cnblogs.com/bonelee/p/16033759.html)
# [��ũ��԰-����ע���ʹ��PowerShell����ű��޸ĵ�.reg�ļ���](https://www.codenong.com/6289085/)
# [bbsmax-Powershellѧϰ֮��-�ļ��й�������ӳ��](https://www.bbsmax.com/A/8Bz8pP1Ozx/)
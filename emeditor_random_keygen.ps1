# ҡ����1��6�����ѡһ�� emeditor key��
$emeditor_v21_str;$getkey;$i = Get-Random 1,6
$emeditor_v21_str = switch ($i){
1 {"RABNAEEAWgBNAC0AVwBIAFkANQAyAC0AQQBYADIAMgAyAC0AWgBRAEoAWABOAC0ANwA5AEoAWABIAA=="}
2 {"RABTAEIAWgBHAC0AQgBGADIAWABIAC0ATQA5ADIAMgAyAC0ARAA1AE0AOABMAC0AUQBDAEMAWABIAA=="}
3 {"RABNAEEAWgBFAC0AVgBLAFoASgBWAC0AMgA4AFoAWgBaAC0ANABUADcAQQBKAC0ANwBIAEgANQA1AA=="}
4 {"RABQAEEAWgA2AC0AUwBIADIAVQBQAC0AUwA3AFoAWgBaAC0AWAA0ADcAVABVAC0ARgBVAEwAMgBYAA=="}
5 {"RABTAEgAWgBBAC0AUQBKADMARwBXAC0AWQBVAFoAWgBaAC0AUwBWAEYAWgAyAC0ANgBEAEIAVQBFAA=="}
6 {"RABNAEEAWgBNAC0AWgBNADUANQA2AC0ASwA2AFoAWgBaAC0AOQA5AEwAVwA4AC0AVwBWADUAQgBUAA=="}
}
$getkey = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($emeditor_v21_str))
Set-Clipboard -Value $getkey # Get-Clipboard
Write-Output "ע�����������һ�������к�ճ����ȥ�����ˡ����к��Ѹ��Ƶ�ճ���壺" $getkey

<# 

���룺GB2312��Mac����powershellע�⻻��UTF8

�ο����ӣ�

https://www.educba.com/powershell-base64/
https://www.52pojie.cn/thread-658917-1-1.html
https://www.52pojie.cn/forum.php?mod=viewthread&tid=578165
https://www.cnblogs.com/estherlty/p/15771219.html
https://www.bilibili.com/read/cv19068695
https://www.baidu.com/s?wd=emeditor
https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-clipboard
https://learn.microsoft.com/zh-cn/powershell/scripting/learn/deep-dives/everything-about-switch

���ص�ַ��

* http://files.emeditor.com/emed32_14.8.1.exe ��xp��win7��server2008��
* https://support.emeditor.com/en/downloads/latest/installer/64 

| DUANG�� �µ� KEY | ���߰� һȺ������|
|:---------------------------------------------------------:|
|DMAZM-WHY52-AX222-ZQJXN-79JXH|DSBZG-BF2XH-M9222-D5M8L-QCCXH|

#>
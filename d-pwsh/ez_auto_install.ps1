# ˵��
# �Ը��PDF�Ķ���ͬ���Ĵ����ʽ���򣬾�Ĭ�������ã�����������
echo "��ʾ������Ҫ�Զ���װ�����������������Ŀ¼�ļ��м��ɡ�"

# foreach����Ŀ¼
$rawPath = "C:${Env:\HOMEPATH}\Downloads\";
$allFile = Get-ChildItem -Path $rawPath;
foreach ($file in $allFile)
{
# ת���ļ�·���ַ�����
$softname="C:${Env:\HOMEPATH}\Downloads\"+$file.name
# Write-Host $softname
Start-Process -Wait -FilePath $softname -ArgumentList '/S /SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /FORCE' -PassThru
}
echo "ok"
# [cnblogs-powershell ����Ŀ¼](https://www.cnblogs.com/068XS228/p/15466163.html)
# [cnblogs-Windows�����Ĭ��װ ](https://www.cnblogs.com/toor/p/4198061.html)
# [csdn-�����Windows PowerShell�л�ȡ��ǰ���û�����](https://blog.csdn.net/CHCH998/article/details/107726143)
# [cnblogs-���GitHub�ķ����ٶ�](https://www.cnblogs.com/lemonguess/p/15143645.html)
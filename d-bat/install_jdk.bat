echo "����java�����Զ���װ"
@echo off
:: IF NOT EXIST C:\Users\%USERNAME%\Downloads\java.msi (curl -o C:\Users\%USERNAME%\Downloads\java.msi https://download.oracle.com/java/20/latest/jdk-20_windows-x64_bin.msi)
curl -o C:\Users\%USERNAME%\Downloads\java.msi https://download.oracle.com/java/20/latest/jdk-20_windows-x64_bin.msi

@REM ��һ�룬��Ĭ��װjava.msi��/S /SP- /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /FORCE
TIMEOUT /T 1&&start /wait C:\Users\%USERNAME%\Downloads\java.msi /quiet /passive

@REM ::----- ����java���� -------------------

@REM ���û�������

@REM JAVAHOME jdk-20 ȡֵ
:: https://download.oracle.com/java/20/latest/jdk-20_windows-x64_bin.msi
setx  JAVA_HOME "C:\Program Files\Java\jdk-20;"

@REM PATH 
setx  PATH "%%JAVA_HOME%%\bin;"

echo "java�����������óɹ�"

@REM :------ �����ע�� ---------------------------

@REM %%asd%% ��ֹת��

@REM CLASSPATH �ο�
:: https://blog.csdn.net/weixin_44144786/article/details/119350075
:: setx CLASSPATH ".;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;" 

@REM java �ֹ����òο�
:: https://github.com/dunwu/linux-tutorial/blob/master/docs/linux/soft/jdk-install.md

@REM  ����⹤�� iconv
:: curl http://example.com/script.bat | iconv -f utf-8 -t gbk | cmd.exe /c -

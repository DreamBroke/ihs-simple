@echo off
@REM ----- ���������� --------------

@REM ���� exiftool.zip
IF NOT EXIST "C:\Users\%USERNAME%\Downloads\exiftool.zip" curl -o C:\Users\%USERNAME%\Downloads\exiftool.zip https://exiftool.org/exiftool-12.59.zip 

@REM  ���Ҳ�������Ŀ¼��β��¼�������Ǵ浵���ˣ�����https://qa.1r1g.com/sf/ask/1467228241/
@REM  �ж�λ���Ƿ���ڣ���ѹ����������
IF NOT EXIST C:\Users\%USERNAME%\Tools\exiftool.exe ^
powershell -c "Expand-Archive C:/Users/${env:UserName}/Downloads/exiftool.zip C:/Users/${env:UserName}/Tools/ -Force"&&ren C:\Users\%USERNAME%\Tools\exiftool(-k).exe exiftool.exe > nul

@REM echo �ļ�����λ�ã�C:/Users/%USERNAME%/Tools 
echo "exiftool���������ã������"

@REM ----- ʹ��ʾ�� --------------
:LOOP

@REM 1. ����ϵͳ�ն�Ĭ�ϱ���Ŀ¼��ͬ
@REM 2. ����ͼƬ��ʾ

set /p data=�뽫ͼƬ��Ŀ¼·�����Ƶ��նˣ������� exit ���˳���ǰ����: 

IF "%data%"=="exit" GOTO END

IF EXIST %data%\ (

    @REM %%~nxf %nameonly% %extonly% %filename%
    for %%f in ("%data%\*.jpg" "%data%\*.png" "%data%\*.jpeg") do (
        echo ɾ���ļ� "%%~nxf" �е� ICC_PROFILE...
        C:\Users\%USERNAME%\Tools\exiftool.exe -overwrite_original -icc_profile= %%f > nul
    )

)

IF EXIST %data% (C:\Users\%USERNAME%\Tools\exiftool.exe -overwrite_original -icc_profile= %data%) else (echo "��Ϣ���󣬲�����ͼƬ����" )

GOTO LOOP
:END

echo ͼƬ����������˳�



@REM -------- ���Դ��루win11���þɰ���Ƭ�鿴���� ------------

@REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jpg" /t reg_sz /d "PhotoViewer.FileAssoc.Tiff" /f
@REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jpeg" /t reg_sz /d "PhotoViewer.FileAssoc.Tiff" /f
@REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".png" /t reg_sz /d "PhotoViewer.FileAssoc.Tiff" /f

@echo off

if "%1"=="" goto USAGE
if "%2"=="" goto USAGE

copy %2 out.xml.gz
bin\gzip -d out.xml.gz

if "%1"=="/w" goto MACTOWIN
if "%1"=="/m" goto WINTOMAC

IF EXIST out.als (
        del /F out.als
    ) 



:MACTOWIN
echo Mac to windows
bin\fart out.xml 1450726194 1395742323
bin\gzip out.xml
ren out.xml.gz out.als
goto END


:WINTOMAC
echo Windows to Mac
bin\fart out.xml 1395742323 1450726194 
bin\gzip out.xml
ren out.xml.gz out.als
goto END

:USAGE

echo USAGE:
echo From Mac to Windos:  synth1mac2pc /w filename.als
echo From Windos to Mac:  synth1mac2pc /m filename.als
echo
echo You will get the converted file in: out.als

:END
echo Finished

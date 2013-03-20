copy %1 out.xml.gz
bin\gzip -d out.xml.gz
bin\fart out.xml 1450726194 1395742323
bin\gzip out.xml
ren out.xml.gz out.als
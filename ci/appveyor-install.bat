mkdir build
copy sample.bas build
cd build
appveyor DownloadFile http://7800.8bitdev.org/images/1/18/BB.1.1d.reveng40.zip
7z e BB.1.1d.reveng40.zip -y

REM Leaving the 'build' directory so the upcoming batch files do not make 
REM assumptions about the current working directory.
cd ..

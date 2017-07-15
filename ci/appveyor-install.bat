mkdir build
copy sample.bas build
cd build
appveyor DownloadFile http://7800.8bitdev.org/images/1/18/BB.1.1d.reveng40.zip
7z e BB.1.1d.reveng40.zip -y

make clean
/mnt/WesternDigital/mxe/usr/bin/i686-w64-mingw32.static-qmake-qt5
export PATH=/mnt/WesternDigital/mxe/usr/bin:$PATH
make
echo Done
make clean
wine ./release/PathFinding.exe
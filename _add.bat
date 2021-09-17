echo off
rem chcp 1251 
set ts=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set ts=%ts: =0%
echo on

C:\Program Files\WinRAR\rar.exe a -m5 -r test05_"%ts%" test05

git add .\*.*
git commit -m "%ts%"

rem git add .\*.txt
rem git status
rem git add .\*.cdw .\*.frw .\*.kdw .\*.spw .\*.a3d .\*.t3d .\*.m3d .\*.cdt .\*.frt .\*.kdt .\*.spt .\*.a3t .\*.m3t .\*.dwg .\*.dxf
rem git status

git push origin master

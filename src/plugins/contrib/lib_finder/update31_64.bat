@echo off
mkdir ..\..\..\devel31_64\share\urusstudio\lib_finder > nul 2>&1
mkdir ..\..\..\output31_64\share\urusstudio\lib_finder > nul 2>&1
copy /Y lib_finder\*.xml ..\..\..\devel31_64\share\urusstudio\lib_finder > nul 2>&1
copy /Y lib_finder\*.xml ..\..\..\output31_64\share\urusstudio\lib_finder > nul 2>&1
zip -j9 ..\..\..\devel31_64\share\urusstudio\lib_finder.zip manifest.xml

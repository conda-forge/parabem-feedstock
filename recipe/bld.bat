mkdir build
cd build

cmake -G "Ninja" ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH=%LIBRARY_PREFIX% ^
      -D CMAKE_BUILD_TYPE=Release ^
      ..

if errorlevel 1 exit 1
ninja install
if errorlevel 1 exit 1

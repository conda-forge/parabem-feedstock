cmake -G "Ninja" -B build -S . ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH=%LIBRARY_PREFIX% ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D BUILD_WITH_MPI:BOOL=OFF

if errorlevel 1 exit 1
ninja install
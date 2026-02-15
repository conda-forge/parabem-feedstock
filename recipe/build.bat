cmake -G "Ninja" -B build -S . ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH="%PREFIX%\Library" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D Python_EXECUTABLE:FILEPATH="%PYTHON%" ^
      -D PYTHON_EXECUTABLE:FILEPATH="%PYTHON%" ^
      -D BUILD_WITH_MPI:BOOL=OFF

if errorlevel 1 exit 1
ninja -C build install
if errorlevel 1 exit 1

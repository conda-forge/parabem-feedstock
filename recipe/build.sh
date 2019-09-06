mkdir -p build
cd build
cmake -G "Ninja" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=${PREFIX} \
      -D CMAKE_BUILD_TYPE:STRING=Release \
      ..

ninja install

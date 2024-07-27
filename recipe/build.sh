cmake -G "Ninja" -B build -S . \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=${PREFIX} \
      -D CMAKE_BUILD_TYPE:STRING="Release" \

ninja install
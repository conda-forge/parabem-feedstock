set -ex

cmake -G "Ninja" -B build -S . \
      -D CMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
      -D CMAKE_BUILD_TYPE:STRING=Release \
      -D Python_EXECUTABLE:FILEPATH="${PYTHON}" \
      -D PYTHON_EXECUTABLE:FILEPATH="${PYTHON}" \
      -D Python3_EXECUTABLE:FILEPATH="${PYTHON}" \
      -D Python_SITEARCH:PATH="${SP_DIR}" \
      -D Python_SITELIB:PATH="${SP_DIR}"

cmake --build build --target install --config Release
echo "Building the PACKAGE ..."
# Cleanup Previuos build
rm -rf build

# build the binaries
mkdir build
cd build
cmake .. --log-level=ERROR
cmake --build .

# Install output in out directory
cmake --install . --prefix ../out

# Create Debian Package
cpack -B ../out

# Cleanup intermediate files
cd ..
rm -rf out/_CPack_Packages
rm -rf build

mv out build
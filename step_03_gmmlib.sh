git clone https://github.com/intel/gmmlib
cd gmmlib
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
cd ..
cd ..


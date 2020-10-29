git clone https://github.com/Intel-Media-SDK/MediaSDK msdk
cd msdk
rm -rf build
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_SAMPLES=OFF -DBUILD_TUTORIALS=OFF  -DENABLE_X11_DRI3=ON ..
make -j$(nproc)
sudo make install
cd ..
cd ..


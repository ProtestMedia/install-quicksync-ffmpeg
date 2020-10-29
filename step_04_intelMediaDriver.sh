git clone https://github.com/intel/media-driver
mkdir build_media
cd build_media
cmake ../media-driver \
-DMEDIA_VERSION="2.0.0" \
-DBS_DIR_GMMLIB=$PWD/../gmmlib/Source/GmmLib/ \
-DBS_DIR_COMMON=$PWD/../gmmlib/Source/Common/ \
-DBS_DIR_INC=$PWD/../gmmlib/Source/inc/ \
-DBS_DIR_MEDIA=$PWD/../media-driver \
-DINSTALL_DRIVER_SYSCONF=OFF
make -j$(nproc)
sudo make install
sudo usermod -a -G video $USER
cd ..

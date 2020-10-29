git clone https://github.com/FFmpeg/FFmpeg
cd FFmpeg
./configure --pkg-config-flags=--static --enable-libmfx --enable-vaapi --cpu=native --enable-gpl --enable-openssl --enable-nonfree --extra-libs='-lpthread -lm -lz -ldl'
make -j$(nproc)
sudo make install
cd ..


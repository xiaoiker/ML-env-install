#Install FFmpeg
wget https://www.ffmpeg.org/releases/ffmpeg-2.8.12.tar.gz
tar -xzvf ffmepg-2.8.12.tar.gz
cd ffmpeg-2.8.12
./configure --enable-shared --enable-gpl --enable-swscale --prefix=$HOME/local
make
make install
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$HOME/local/lib/pkgconfig
cd ..

#Activate python 2.7

# Active cuda


#Install opencv
wget https://github.com/opencv/opencv/archive/2.4.13.tar.gz
tar -xzvf 2.4.13.tar.gz
cd opencv-2.4.13
mkdir build
cd build
# specify g++ for cuda
# specify gpu type
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=$HOME/local -D BUILD_opencv_gpu=OFF -DCUDA_HOST_COMPILER=/usr/bin/g++ -D CUDA_GENERATION=Kepler ..
make -j32
make install
cd ..
cd ..

# if you want to install opencv3 by a user ID you can just using pip
pip install opencv-python== #find out which versions can be installed by this way,
pip install opencv-python==3.4.0 # for version 3.4.0

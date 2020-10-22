echo "Build Script for building OpenCV-4"

sudo apt update -y

sudo apt install build-essential gcc-arm-linux-gnueabihf cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python3-dev python3-numpy python3-py python3-pytest libomp-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev 

sudo apt install caffe-cpu libgoogle-glog-dev protobuf-compiler tesseract-ocr -y

echo "Sucessfully installed requirement's"

echo "Start Building"

mkdir build-system

cd build-system

wget https://github.com/opencv/opencv/archive/4.4.0.tar.gz

tar xvf 4.4.0.tar.gz

rm -rvf 4.4.0.tar.gz

wget https://github.com/opencv/opencv_contrib/archive/4.4.0.tar.gz

tar xvf 4.4.0.tar.gz

cd opencv-4.4.0/

mkdir -p build

cd build

cmake -D CMAKE_TOOLCHAIN_FILE=../platforms/linux/aarch64-gnu.toolchain.cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D ENABLE_VFPV3=ON -D ENABLE_NEON=ON-D OPENCV_GENERATE_PKGCONFIG=ON -D BUILD_DOCS=ON -D BUILD_EXAMPLES=ON -D WITH_OPENMP=ON -D WITH_CUDA=OFF -D OPENCV_ENABLE_NONFREE=ON -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-4.4.0/modules -D ENABLE_PRECOMPILED_HEADERS=OFF -D BUILD_opencv_java=OFF -D BUILD_opencv_python3=ON -DWITH_OPENCL=ON -DWITH_GTK=ON ../

make

echo "Building Opencv is sucessfull"

cd ../../

echo "Compressing Files"

tar -cJvf opencv.tar.xz opencv-4.4.0/

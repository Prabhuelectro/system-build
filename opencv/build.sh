echo "Build Script for building OpenCV-4"

echo "Installing requirement's"

sudo apt update -y

sudo apt install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev sudo apt install caffe-cpu libgoogle-glog-dev protobuf-compiler tesseract-ocr -y

echo "Sucessfully installed requirement's"

echo "Start Building"

mkdir build-system

cd build-system

git clone https://github.com/opencv/opencv.git

git clone https://github.com/opencv/opencv_contrib.git

cd opencv

mkdir -pv build

cd build

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_GENERATE_PKGCONFIG=ON -D BUILD_DOCS=ON -D BUILD_EXAMPLES=ON -D WITH_OPENMP=ON -D WITH_CUDA=OFF -D OPENCV_ENABLE_NONFREE=ON -D ENABLE_AVX=ON -D BUILD_PERF_TESTS=OFF -D ENABLE_SSE=ON -D ENABLE_SSE2=ON -D ENABLE_SSSE3=ON -D ENABLE_SSE41=ON -D ENABLE_SSE42=ON -D ENABLE_POPCNT=ON  -D BUILD_TESTS=OFF -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D ENABLE_PRECOMPILED_HEADERS=OFF -D ENABLE_AVX=ON -D ENABLE_AVX2=OFF -D BUILD_opencv_java=OFF -D BUILD_opencv_python=OFF ..

make

echo "Building Opencv is sucessfull"

cd ..

echo "Compressing Files"

tar -cJvf opencv-4.tar.xz build/

echo "Sucessfully completed compresing"

echo "Upload file to Github Actions Artifact"

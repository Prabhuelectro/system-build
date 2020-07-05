sudo apt update -y

sudo apt install gcc git build-essential wget cpio unzip rsync bc -y

mkdir -pv linux-build/

cd linux-build/

wget https://git.buildroot.net/buildroot/snapshot/buildroot-2020.02.3.tar.gz

tar xvf buildroot-2020.02.3.tar.gz

cd ../

cp -v rpi-64 linux-build/buildroot-2020.02.3/.config

cp -v linux linux-build/buildroot-2020.02.3/board/raspberrypi

cd linux-build/buildroot-2020.02.3/

make 

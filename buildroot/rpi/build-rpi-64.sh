sudo apt update -y

sudo apt install gcc git build-essential wget cpio unzip rsync bc gcc-aarch64-linux-gnu openssh-client -y

mkdir -pv linux-build/

cd linux-build/

git clone -b 2020.05.x git://git.busybox.net/buildroot

cd buildroot/

cp ../../rpi3-64 .config

make 

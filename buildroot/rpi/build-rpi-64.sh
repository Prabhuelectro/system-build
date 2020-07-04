sudo apt update -y

sudo apt install gcc git build-essential wget cpio unzip rsync bc gcc-aarch64-linux-gnu openssh-client -y

mkdir -pv linux-build/

cd linux-build/

wget https://git.buildroot.net/buildroot/snapshot/buildroot-2020.02.3.tar.gz

cd buildroot/

cp ../../rpi3 .config

make 

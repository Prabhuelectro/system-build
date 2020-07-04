sudo apt update -y

sudo apt install gcc git build-essential wget cpio unzip rsync bc -y

mkdir -pv linux-build/

cd linux-build/

wget https://git.buildroot.net/buildroot/snapshot/buildroot-2020.02.3.tar.gz

tar xvf buildroot-2020.02.3.tar.gz

cd buildroot/

cp ../../rpi-64 .config

make 

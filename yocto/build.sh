echo "Yocto Building script"

echo "Updating APT"

sudo apt update -y

echo "Installing requirements"

sudo apt install build-essential chrpath diffstat gawk libncurses5-dev texinfo git wget curl 

echo "Start fetching repos"

mkdir -pv yocto/

cd yocto/

git clone -b dunfell git://git.yoctoproject.org/poky.git poky-dunfell

git clone -b dunfell git://git.openembedded.org/meta-openembedded

git clone -b dunfell https://github.com/meta-qt5/meta-qt5

git clone -b dunfell git://git.yoctoproject.org/meta-raspberrypi

git clone -b dunfell git://git.yoctoproject.org/meta-security.git

git clone -b dunfell https://github.com/jumpnow/meta-jumpnow


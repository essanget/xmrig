sudo apt-get update
sudo apt-get install cpulimit
cpulimit -e xmrig -l 15 &
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
make
./xmrig -o pool.bmnr.pw:4444 -u 5114865 -p app -k --av=2 --donate-level=1

sudo apt install tcpdump
sudo apt install dos2unix
cp heart /usr/bin
cd /usr/bin/
sudo chmod 500 heart
cd /usr/share
git clone https://github.com/rotherda/HEART
cd HEART
dos2unix heart.sh

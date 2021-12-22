sudo apt install tcpdump
sudo apt dos2unix
cp heart /usr/bin
cd /usr/bin/
sudo chmod 777 heart
cd /usr/share
git clone https://github.com/rotherda/HEART
cd HEART
dos2unix heart.sh

echo curl -F document=@"/var/log/alert.txt" https://api.telegram.org/bot5096290815:AAEY15l7FQGF5C35drLoA2nS60RU-yYz1h8/sendDocument?chat_id=-1001711865343

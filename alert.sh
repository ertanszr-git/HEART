#!/usr/bin/env bash
while true; do
	timeout 300s tcpdump -nnSX port 80 | grep HTTP/1.1.4* | grep HTTP/1.1.5* > /var/log/http.txt
	log=/var/log/http.txt
	if [ -n $log ]; then
		zaman=$(date)
		echo $zaman 404 Found >> /var/log/alert.txt
		continue
	else
		continue
	fi
	
done

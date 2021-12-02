#!/usr/bin/env bash
while true; do
	timeout 300s tcpdump -nnSX port 80 | grep HTTP/1.1.404 > /var/log/http.txt
	log=/var/log/http.txt
	if [ -n $log ]; then
		zaman=$(date)
		echo $zaman 404 Bulundu >> /var/log/alert.txt
		continue
	else
		continue
	fi
	
done

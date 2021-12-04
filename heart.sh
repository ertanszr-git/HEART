#!/bin/bash
while true; do
	timeout 60s tcpdump -nnSX port 80 | grep HTTP/1.1.404 > /var/log/http.txt
	log=/var/log/http.txt
	if [ -n $log ]; then
		zaman=$(date)
		echo $zaman ERROR FOUND >> /var/log/alert.txt
		continue
	else
		continue
	fi
	
done

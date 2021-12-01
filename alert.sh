#!/usr/bin/env bash

while true; do
	tcpdump -nnSX port 80 | grep HTTP/1.1.404 > /var/log/http.txt
	log=/var/log/http.txt
	#if kısmının 5 dkda bir tetiklenmesi lazım.
	if [ -n $log ]; then
		zaman=$(date)
		echo $zaman 404 Bulundu >> /home/kali/alert.txt
	else
		continue
	fi
done

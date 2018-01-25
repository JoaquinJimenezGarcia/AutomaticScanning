#!/bin/bash

echo "Open ports: " > ./Results/$2.txt
sudo nmap -sS -O $1 >> ./Results/$2.txt

echo "==============================================" >> ./Results/$2.txt

echo "Default credentials: " >> ./Results/$2.txt
acccheck -t $1 -U /usr/share/dirb/wordlists/others/names.txt -P /usr/share/dirb/wordlists/big.txt >> ./Results/$2.txt

echo "==============================================" >> ./Results/$2.txt

echo "Scanning WebServer: " >> ./Results/$2.txt
nikto -h $1 >> ./Results/$2.txt

echo "==============================================" >> ./Results/$2.txt




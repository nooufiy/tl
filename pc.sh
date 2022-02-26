#!/bin/bash

# prxcek
# src:proxyr*ck'com/blog/how-to-test-proxies-using-bash-and-curl-with-multi-threaded-async-requests/
# ==================================================================================================

# sample list file txt
# 209.205.211.251:2000
# 209.205.211.251:2001
# 209.205.211.251:2002
# 209.205.211.251:2003


#HTTP protocol:
for proxy in `cat usa.txt`
do 
   (curl -s --max-time 10 -x $proxy -U YOURUSER:YOURPASS ip-api.com/json;echo) & 
done | grep country | wc -l


#HTTPS Protocols
for proxy in `cat usa.txt`
do 
   (curl -s --max-time 10 -x https://$proxy -U YOURUSER:YOURPASS ip-api.com/json;echo) & 
done | grep country | wc -l


#SOCKS4 Protocol
for proxy in `cat usa.txt`
do 
   (curl -s --max-time 10 --socks4 $proxy ip-api.com/json;echo) & 
done | grep country | wc -l


#SOCKS4a Protocol
for proxy in `cat usa.txt`
do 
   (curl -s --max-time 10 --socks4a $proxy -U YOURUSER:YOURPASS ip-api.com/json;echo) & 
done | grep country | wc -l


#SOCKS5 Protocol
for proxy in `cat usa.txt`
do 
   (curl -s --max-time 10 --socks5 $proxy -U YOURUSER:YOURPASS ip-api.com/json;echo) & 
done | grep country | wc -l


#Example output:
#sbook:~$ bash test_usa.sh
#      19


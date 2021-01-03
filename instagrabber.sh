#!/bin/bash

rm -rf profile_pic_url_hd.jpg resp url
read -p "Username : " username
curl -s -A 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Brave Chrome/87.0.4280.101 Safari/537.36' 'https://www.instagram.com/'$username'/' > resp
cat resp | tr ',' '\n' | grep -i 'profile_pic_url_hd' | cut -d '"' -f4 > /tmp/url &&  sed 's/\\u0026/,/g' /tmp/url | tr ',' '&' | tr -d '\\' > url
line="$(cat url)"
# wget -q --user-agent='Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Brave Chrome/87.0.4280.101 Safari/537.36' $line -O profile_pic_url_hd.jpg > /dev/null 2>&1
curl -s -A 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Brave Chrome/87.0.4280.101 Safari/537.36' $line > profile_pic_url_hd.jpg
eog profile_pic_url_hd.jpg
rm -rf resp url
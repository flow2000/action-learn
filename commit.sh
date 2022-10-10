#!/bin/sh
set -e
echo '当前系统时间：'$(date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '德国(de-DE)时间：'$(TZ=UTC-2 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '英国 (en-GB)时间：'$(TZ=UTC-1 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '加拿大(en-CA)时间：'$(TZ=UTC+5 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '印度(en-IN)时间：'$(TZ=UTC-5:30 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '美国(en-US)时间：'$(TZ=UTC+5 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '法国(fr-FR)时间：'$(TZ=UTC-2 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '意大利(it-IT)时间：'$(TZ=UTC-2 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '日本(ja-JP)时间：'$(TZ=UTC-9 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
echo '中国(zh-CN)时间：'$(TZ=UTC-8 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
cat time.txt
if test -z "$(git status -s)"; then
  echo 'no commit'
  exit 1;
else
  echo '当前系统时间：'$(date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '德国(de-DE)时间：'$(TZ=UTC-2 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '英国 (en-GB)时间：'$(TZ=UTC-1 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '加拿大(en-CA)时间：'$(TZ=UTC+5 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '印度(en-IN)时间：'$(TZ=UTC-5:30 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '美国(en-US)时间：'$(TZ=UTC+5 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '法国(fr-FR)时间：'$(TZ=UTC-2 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '意大利(it-IT)时间：'$(TZ=UTC-2 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '日本(ja-JP)时间：'$(TZ=UTC-9 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  echo '中国(zh-CN)时间：'$(TZ=UTC-8 date +%Y-%m-%d" "%H:%M:%S) >> time.txt
  cat time.txt
  git config --local user.email "1982989137@qq.com"
  git config --local user.name "flow2000"
  git pull origin master
  git add data/*
  git commit -m "update bing json"
  exit 0;
fi

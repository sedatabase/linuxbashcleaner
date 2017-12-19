#!/bin/bash
clear
find /home/* -name backup-*.tar.gz -type f -ls -exec rm -f {} \;
find /home/*/logs -name *.gz -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.tar.gz -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.gz -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.zip -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.rar -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.mp3 -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.mp4 -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.flv -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.avi -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.wmv -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.dat -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.exe -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.bat -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.psd -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.cdr -type f -ls -exec rm -f {} \;
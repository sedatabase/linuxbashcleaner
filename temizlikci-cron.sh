#!/bin/bash
clear
find /home/* -name backup-*.tar.gz -type f -ls -exec rm -f {} \;
find /home/* -name *.gz -type f -ls -exec rm -f {} \;
find /home/* -name *.tar.gz -type f -ls -exec rm -f {} \;
find /home/* -name *.gz -type f -ls -exec rm -f {} \;
find /home/* -name *.zip -type f -ls -exec rm -f {} \;
find /home/* -name *.rar -type f -ls -exec rm -f {} \;
find /home/* -name *.mp3 -type f -ls -exec rm -f {} \;
find /home/* -name *.mp4 -type f -ls -exec rm -f {} \;
find /home/* -name *.flv -type f -ls -exec rm -f {} \;
find /home/* -name *.avi -type f -ls -exec rm -f {} \;
find /home/* -name *.wmv -type f -ls -exec rm -f {} \;
find /home/* -name *.dat -type f -ls -exec rm -f {} \;
find /home/* -name *.exe -type f -ls -exec rm -f {} \;
find /home/* -name *.bat -type f -ls -exec rm -f {} \;
find /home/* -name *.psd -type f -ls -exec rm -f {} \;
find /home/* -name *.cdr -type f -ls -exec rm -f {} \;
find /home/* -name *.wpress -type f -ls -exec rm -f {} \;

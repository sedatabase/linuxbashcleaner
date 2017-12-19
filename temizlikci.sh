#!/bin/bash
clear
echo -e "\033[31m###################### Web Server Temizleyici #####################"
echo "######################### Pear Technology #########################"
echo -e "\033[35m#-----------------------------------------------------------------#"
echo "# (0) Bash Scripti Güncelle                                       #"
echo "# (1) Yedek Dosyalarını Temizle                                   #"
echo "# (2) Log Dosyalarını Temizle                                     #"
echo "# (3) Sıkıştırılmış Dosyaları Temizle                             #"
echo "# (4) Ses ve Video Dosyalarını Temizle                            #"
echo "# (5) Program Dosyalarını Temizle                                 #"
echo -e "\033[33m#-----------------------------------------------------------------#"
echo "# (10) Tüm Gereksiz Dosyaları Temizle                             #"
echo "# (11) Tüm Gereksiz Dosyaları Hergün Otomatik Temizle             #"
echo "# (12) Otomatik Silinen Dosyaların Loglarını Görüntüle            #"
echo "#-----------------------------------------------------------------#"
echo -e "\033[34m# (20) Disk Bilgilerini Görüntüle                                 #"
echo "# (21) CPU Bilgilerini Görüntüle                                  #"
echo "# (22) Ram Bilgilerini Görüntüle                                  #"
echo "# (23) Hosting Hesaplarının Anlık Kaynak Tüketimini Görüntüle     #"
echo "###################################################################"
echo -e "\033[32m"
echo Seçiminizi Giriniz :
read secenek
case $secenek in
0)
clear
echo "Bash script güncelleniyor, lütfen bekleyiniz..."
sleep 3
cd /root
rm -rf temizlikci.sh
rm -rf temizlikci-cron.sh
rm -rf temizlikci.log
wget https://raw.github.com/sdtyldz/linuxbashcleaner/master/temizlikci.sh
wget https://raw.github.com/sdtyldz/linuxbashcleaner/master/temizlikci-cron.sh
touch temizlikci.log
chmod +x /root/temizlikci.sh
chmod +x /root/temizlikci-cron.sh
chmod +x /root/temizlikci.log
sh temizlikci.sh
;;
1)
clear
echo "Yedek dosyaları temizleniyor, lütfen bekleyiniz..."
sleep 3
find /home/* -name backup-*.tar.gz -type f -ls -exec rm -f {} \;
echo "Yedek dosyaları temizlenmiştir."
;;
2)
clear
echo "Log dosyaları temizleniyor, lütfen bekleyiniz..."
sleep 3
find /home/*/logs -name *.gz -type f -ls -exec rm -f {} \;
echo "Log dosyaları temizlenmiştir."
;;
3)
clear
echo "Sıkıştırılmış dosyalar temizleniyor, lütfen bekleyiniz..."
sleep 3
find /home/*/public_html -name *.tar.gz -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.gz -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.zip -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.rar -type f -ls -exec rm -f {} \;
echo "Sıkıştırılmış dosyalar temizlenmiştir."
;;
4)
clear
echo "Ses ve video dosyaları temizleniyor, lütfen bekleyiniz..."
sleep 3
find /home/*/public_html -name *.mp3 -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.mp4 -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.flv -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.avi -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.wmv -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.dat -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.swf -type f -ls -exec rm -f {} \;
echo "Ses ve video dosyaları temizlenmiştir."
;;
5)
clear
echo "Program dosyaları temizleniyor, lütfen bekleyiniz..."
sleep 3
find /home/*/public_html -name *.exe -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.bat -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.psd -type f -ls -exec rm -f {} \;
find /home/*/public_html -name *.cdr -type f -ls -exec rm -f {} \;
echo "Program dosyaları temizlenmiştir."
;;
10)
clear
echo "Tüm gereksiz dosyalar temizleniyor, bu işlem uzun sürebilir lütfen bekleyiniz..."
sleep 3
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
find /home/*/public_html -name *.swf -type f -ls -exec rm -f {} \;
echo "Tüm gereksiz dosyalar temizlenmiştir."
;;
11)
clear
echo "Cron bash script başlatılıyor, lütfen bekleyiniz..."
sleep 3
(crontab -l ; echo "0 0 * * * sh /root/temizlikci-cron.sh > /root/temizlikci.log 2>&1" ) | crontab -
echo "Crontab ayarlanmıştır, lütfen bu işlemi tekrarlamayın."
;;
12)
clear
echo "Loglar alınıyor, lütfen bekleyiniz..."
sleep 3
tail /root/temizlikci.log
;;
20)
clear
echo "Disk bilgileri alınıyor, lütfen bekleyiniz..."
sleep 3
df -h
;;
21)
clear
echo "CPU bilgileri alınıyor, lütfen bekleyiniz..."
sleep 3
cat /proc/cpuinfo
;;
22)
clear
echo "Ram bilgileri alınıyor, lutfen bekleyiniz..."
sleep 3
cat /proc/meminfo
;;
23)
clear
echo "Anlık kaynak tüketimi alınıyor, lütfen bekleyiniz..."
sleep 3
top
;;
*)
echo "Hatali bir numara girdiniz."
esac

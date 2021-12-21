Merhaba, tüm hosting firmaları kabul eder ki en büyük sorunlardan biri de sağlanılan hostingin dosya deposu, kişisel arşiv olarak kullanılmasıdır.
Bir çok müşteri ve müşteri adayları ne yazık ki hosting hesaplarında sadece web sitesi dosyalarının barınması gerektiğini bilmiyor/algılayamıyor, biz firmalar da harddisklerin şişmemesi için sürekli gereksiz dosyaları temizlemekle uğraşıyoruz.
İşte tam da bunun için bir bash script yazdım, betiği sunucunuza çekiyor ve çalıştırıyorsunuz. Tüm sunucuyu tarayarak gereksiz ne kadar dosya varsa siliyor.

- Script sadece cPanel / CentOS Web Server platformunda stabil şekilde çalışabilmektedir. 

<img src="http://image.prntscr.com/image/ad3a7597d5574059936033c486484b45.png">

<b>Nasıl Kurulur & Çalışır;</b><br>
Aşağıdaki komutları CentOS SSH ekranına girmeniz yeterlidir.

```
cd /root
wget https://raw.github.com/sedatabase/linuxbashcleaner/master/temizlikci.sh
sh temizlikci.sh
```

<b>Neleri Siler;</b><br>
cPanel arayüzünden alınan .tar.gz formatlı yedekleri, serverın tuttuğu .gz formatlı logları ve .tar.gz, .gz, .zip, .rar, .mp3, .mp4, .flv, .avi, .wmv, .dat, .exe, .bat, .psd, .cdr uzantılı tüm dosyaları temizler.

- Kullanımda tarafımdan herhangi bir sorumluluk kabul edilmemektedir, ana sunucumuzda kullanıp bir soruna rastlamasak da temkinli olmakta fayda var.

Saygılarımla,<br>
Sedat YILDIZ

Merhaba, tüm hosting firmaları kabul eder ki en büyük sorunlardan biri de sağlanılan hostingin dosya deposu, kişisel arşiv olarak kullanılmasıdır.
Bir çok müşteri ve müşteri adayları ne yazık ki hosting hesaplarında sadece web sitesi dosyalarının barınması gerektiğini bilmiyor/algılayamıyor, biz firmalar da harddisklerin şişmemesi için sürekli gereksiz dosyaları temizlemekle uğraşıyoruz.
İşte tam da bunun için bir bash script yazdım, betiği sunucunuza çekiyor ve çalıştırıyorsunuz. Tüm sunucuyu tarayarak gereksiz ne kadar dosya varsa siliyor.

- Script sadece cPanel / CentOS Web Server platformunda detaylı olarak test edilmiştir. 

<img src="https://i.ibb.co/y8TFkXs/temizlikci.png">

<b>Nasıl Kurulur & Çalışır;</b><br>
Aşağıdaki komutları CentOS SSH ekranına girmeniz yeterlidir.

```
cd /root
wget https://raw.github.com/sedatabase/linuxbashcleaner/master/temizlikci.sh
sh temizlikci.sh
```

<b>Neleri Siler;</b><br>
cPanel arayüzünden alınan .tar.gz formatlı yedekleri, serverın tuttuğu .gz formatlı logları ve .tar.gz, .gz, .zip, .rar, .mp3, .mp4, .flv, .avi, .wmv, .dat, .exe, .bat, .psd, .cdr, .wpress uzantılı tüm dosyaları temizler.

- Kullanımda tarafımdan herhangi bir sorumluluk kabul edilmemektedir, ana sunucumuzda kullanıp bir soruna rastlamasak da temkinli olmakta fayda var.

Saygılarımla,<br>
Sedat YILDIZ

<hr>

```
<b>Güncellemeler:</b><br><br>
<b>Ocak 2024:</b> cPanel haricinde tüm kontrol panelleri için uyumlu hale getirildi.<br>
<b>Aralık 2021:</b> Cron ile günlük otomatik temizleyici eklendi.<br>
<b>Haziran 2019:</b> Seçilebilir çoklu temizleme özelliği eklendi.<br>
<b>Aralık 2017:</b> Script wget ile çekilecek şekilde düzenlendi.<br>
```

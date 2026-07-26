<h1>Lab 19 ARP dan Static ARP</h1>

<h3>ARP (Address Resolution Protocol)</h3>
ARP (Address Resolution Protocol) adalah protokol yang digunakan untuk mencari MAC Address dari sebuah IP Address. Misalnya komputer ingin mengirim data ke IP 192.168.10.2, komputer belum tahu MAC Address perangkat tersebut. Nah, ARP akan mencari tahu MAC Address yang sesuai dengan IP itu supaya data bisa dikirim. Jadi, bisa dibilang ARP adalah penghubung antara IP Address dan MAC Address. By default ARP pada MikroTik di setting pada enabled <b>ARP=enabled</b>, yang mana ketika ada suatu perangkat terhubung ke router akan otomatis ditambahkan di tabel ARP. Jadi siapa saja boleh masuk tanpa harus kita tambahkan terlebih dahulu. Nah maka dari itu pada kesempatan kali ini saya akan menjelaskan bagaimana mengamankan jaringan dengan menggunakn metode static ARP atau ARP Reply only.

<h3>ARP Reply-Only</h3>
Berbeda dengan ARP=enabled yang otomatis menambahkan perangkat yang terhubung ke dalam tabel ARP, ARP Reply-Only kita harus memasukan manual mulai dari IP Address hingga MAC Address. Jadi dengan mode ini ibarat kita harus mendaftarkan perangkat kita terlebih dahulu ke dalam router melalui IP Address dan MAC Address yang kita miliki. Ketika ada yang mencoba masuk ke jaringan kita tanpa terdaftar pada ARP tabel maka perangkat tersebut tidak akan dapat terhubung ke dalam jaringan kita. Berikut cara konfigurasinya:
<ol>
  <li>Masuk ke menu interfaces, lalu pilih interface mana yang akan kita buat menjadi ARP Reply-Only. Pilih interfaces yang terhubung ke jaringan LAN</li>
  <li>Ubah modenya menjadi Reply-only</li>
  <li>Klik add (+)</li>
  <li>Isi IP Address sesuai keinginan asal masih satu segmen dengan IP interface ini. Untu MAC Addressnya isi dengan MAC Address pc kalian, cara cek nya bisa menggunakan cmd dengan perintah ipconfig /all. Interfacenya tujukan pada interface yang sudah kita aktifkan Reply-Only nya tadi.</li>
  <li>Klik apply lalu ok</li>
  <li>Kita test menggunakan IP yang sudah didaftarkan</li>
  <li>Test menggunakan IP yang belum didaftarkan</li>
</ol>

<h3>DHCP + ARP</h3>
Selain itu ARP Reply-Only juga kita bisa combokan dengan DHCP juga. Jadi ketika ada perangkat yang terhubung menggunakan DHCP maka akan otomatis ditambahkan ke tabel ARP. Tetapi ketika ada yang mencoba terhubung menggunakan IP static maka tidak akan bisa karena harus didaftarkan terlebih dahulu ke dalam ARP tabel. Berikut caranya:
<ol>
  <li>Aktifkan ARP Reply-only</li>
  <li>Masuk ke menu IP > DHCP Server. pastikan kalian sudah membuatnya</li>
  <li>Buka DHCP nya, lalu pada bagian bawah centang bagian <b>Add ARP For Leases</b></li>
  <li>Klik Apply lalu ok</li>
  <li>Test menggunakan DHCP</li>
  <li>Test menggunakan IP static</li>
</ol>

<hr>
<h3>Kesimpulan</h3>
ARP berfungsi menghubungkan IP Address dengan MAC Address agar proses komunikasi dalam jaringan dapat berjalan dengan baik. Sedangkan Static ARP digunakan untuk memastikan setiap IP Address hanya digunakan oleh MAC Address yang sudah ditentukan.

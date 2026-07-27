<h1>Lab 17 DHCP-DNS</h1>

<h2>DHCP</h2>
DHCP (Dynamic Host Configuration Protocol) adalah layanan yang berfungsi memberikan konfigurasi jaringan secara otomatis, seperti IP Address, Gateway, DNS Server, dan informasi jaringan lainnya. Dengan DHCP, klien tidak perlu repot menyeting IP Address, Gateway, DNS, dan informasi jaringan lainnya karena ini akan didapatkan secara otomatis dari DHCP. Adapun fungsi lain dari dhcp yaitu mencegah adanya dua IP dalam satu jaringan yang sama (konflik IP). DHCP dibagi menjadi dua jenis, yaitu DHCP Client dan DHCP Server.
<h3>DHCP Client</h3>
DHCP Client digunakan agar MikroTik dapat menerima konfigurasi jaringan secara otomatis dari perangkat lain, seperti modem, router utama, atau ISP.
Dengan DHCP Client, MikroTik akan memperoleh: IP Address, Gateway, DNS Server dan informasi jaringan lainnya, secara otomatis tanpa perlu dikonfigurasi secara manual.
<h4>Cara konfigurasi DHCP Client</h4>
<ol>
  <li>Masuk ke menu ip > DHCP Client</li>

  <img width="959" height="505" alt="Screenshot 2026-07-27 175017-" src="https://github.com/user-attachments/assets/0f2ba6f6-739f-486b-8c19-c732450e91b5" />

  <li>Klik Add (+) pilih:<br>
  - Interface: wlan1 (sesuaikan dengan interface yang terhubung langsung dengan sumber internet)</li>

  <img width="335" height="281" alt="Screenshot 2026-07-27 175035" src="https://github.com/user-attachments/assets/ff09b534-b7f6-45a2-8234-818a79bc7773" />

  <li>Centang pada:<br>
  - Add Default Route<br>
  - Use Peer DNS<br>
  - Use Peer NTP<br>
  Klik Apply lalu OK.</li>

  <img width="335" height="281" alt="Screenshot 2026-07-27 175035" src="https://github.com/user-attachments/assets/60e9dea2-adf2-4c92-b53a-bd4c864f0551" />

  <li>Tunggu hingga stasnya bound</li>

 <img width="352" height="281" alt="Screenshot 2026-07-27 175050" src="https://github.com/user-attachments/assets/23151d09-a09c-4ef7-b385-768ebd0dcc34" />
 
  Dengan konfigurasi ini, MikroTik akan memperoleh IP Address, Gateway, dan DNS secara otomatis.
</ol>

<h3>DHCP Server</h3>
Jika DHCP Client menerima informasi jaringan secara otomatis maka DHCP Server adalah protokol yang membagikan informasi jaringan tersebut. Jadi DHCP Server adalah protokol yang membagikan alamat IP, subnet mask, dan data jaringan lain secara otomatis kepada perangkat lain atau client. Tanpa layanan ini, kita harus memasukkan nomor IP satu per satu ke tiap komputer. 
<h4>Cara konfigurasi DHCP Server</h4>
<ol>
  <li>Masuk ke menu ip > DHCP Server</li>

  <img width="959" height="496" alt="Screenshot 2026-07-27 180115" src="https://github.com/user-attachments/assets/6f859772-75c8-4011-babf-221d9c754940" />

  <li>Klik DHCP Setup.</li>

  <img width="730" height="279" alt="Screenshot 2026-07-27 180140" src="https://github.com/user-attachments/assets/b5b55af3-a2b3-4375-9a6c-5c2de9adf0e7" />

<li> Pilih interface yang akan digunakan untuk DHCP Server. Di sini saya menggunakan ether2. Pastikan di ether2 ini kalian sudah menambahkan ip yaa. Klik next terus sampai selesai</li>

<img width="198" height="106" alt="Screenshot 2026-07-27 180225" src="https://github.com/user-attachments/assets/83d06c56-a2f4-4fdd-8256-74393d05d8fd" />

<img width="196" height="105" alt="Screenshot 2026-07-27 180245" src="https://github.com/user-attachments/assets/aeda1483-22c4-400c-9162-c8a6d328434c" />

<img width="194" height="103" alt="Screenshot 2026-07-27 180305" src="https://github.com/user-attachments/assets/eb8859db-e228-4bb7-b6cd-032727c5ee7b" />

<img width="197" height="107" alt="Screenshot 2026-07-27 180319" src="https://github.com/user-attachments/assets/514b3136-baa2-48ec-801c-9b0732950420" />

<img width="197" height="107" alt="Screenshot 2026-07-27 181219" src="https://github.com/user-attachments/assets/872b65bf-d7f9-40ba-89aa-2064e3f8488e" />

<img width="199" height="107" alt="Screenshot 2026-07-27 180402" src="https://github.com/user-attachments/assets/c648de2a-ccfa-4934-8f52-88f17975bdfb" />

<li>DHCP Server berhasil dibuat</li>

<img width="730" height="281" alt="Screenshot 2026-07-27 180417" src="https://github.com/user-attachments/assets/88077092-3802-4a7b-a6ae-8ceab518a1f2" />

</ol>

<h3>Cara Kerja DHCP (D.O.R.A)</h3>
Proses komunikasi antara client dan server umumnya dikenal dengan singkatan DORA:
<ol>
  <li>Discover: Perangkat client menyebarkan sinyal (broadcast) mencari server.</li>
  <li>Offer: Server menerima permintaan dan menawarkan alamat IP yang tersedia.</li>
  <li>Request: Client membalas dan meminta alamat IP yang ditawarkan tadi.</li>
  <li>Acknowledgment: Server memberikan alamat IP tersebut beserta durasi pemakaiannya</li>
</ol>

<h2>DNS</h2>
DNS (Domain Name System) adalah layanan yang mengubah nama domain menjadi IP Address. Sebagai contoh, ketika kita membuka: <b>www.google.com</b> Router akan meminta bantuan DNS untuk mencari alamat IP dari server Google. Tanpa DNS, kita hanya bisa mengakses website menggunakan alamat IP. Jadi ibaratnya DNS itu adalah sebuah kontak di telepon kita, misal ketika  kita akan menelpon teman kita, kita tinggal lakukan saja pencarian nama pada kontak kita tanpa harus mengingat nomor teleponnya. Kurang lebih seperti itu juga DNS bekerja.
<h4>konfigurasi DNS pada MikroTik</h4>
<ol>
  <li>Masuk ke menu: IP > DNS</li>

  <img width="959" height="502" alt="Screenshot 2026-07-27 181631" src="https://github.com/user-attachments/assets/02ec196e-f53a-49e4-9f98-6ca8848b6386" />

  <li>Masukan DNS Server, di sini saya akan memasukan dns google dan cloudflare karena ini biasa yang sering digunakan. disesuaikan saja ya</li>

  <img width="323" height="317" alt="Screenshot 2026-07-27 181712" src="https://github.com/user-attachments/assets/1dbdccf0-7bb2-4ba8-9493-43e3252d16ca" />

  <li>Kemudian centang: Allow Remote Requests. Allow Remote Requests</li>

  <img width="326" height="333" alt="Screenshot 2026-07-27 181734" src="https://github.com/user-attachments/assets/e6085349-ab39-450f-94f1-17d8ad2fb8f8" />

</ol>

<hr>
<h3>Kesimpulan</h3>
DHCP merupakan suatu protokol yang berfungsi memberikan konfigurasi jaringan secara otomatis kepada perangkat yang terhubung. DHCP terdiri dari dua jenis, yaitu DHCP Client yang digunakan untuk menerima konfigurasi jaringan, dan DHCP Server yang digunakan untuk membagikan konfigurasi kepada client. Selain itu, DNS berfungsi menerjemahkan nama domain menjadi alamat IP sehingga perangkat dapat mengakses website dengan lebih mudah tanpa harus menghafal alamat IP dari tiap tiap website.


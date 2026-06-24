Default Configuration adalah konfigurasi awal yang otomatis dibuat ketika router pertama kali digunakan atau setelah di-reset dengan pengaturan bawaan.
Konfigurasi ini dibuat agar router dapat langsung digunakan sebagai gateway internet sederhana tanpa harus melakukan konfigurasi dari nol.

Saat menggunakan mikrotik default configurtion lalu akses via winbox, akan menampilkan keterangan konfigurasi default dari pabrik seperti pada gambar berikut

<img width="1366" height="768" alt="default" src="https://github.com/user-attachments/assets/b6be0bc9-1dd8-4357-8a8b-f3440b7a3d23" />

Pada gambar di atas, diperlihatkan beberapa konfigurasi default mikrotik, Berikut ini konfigurasi default mikrotik diantaranya:

1. Interface

Interface merupakan jalur komunikasi yang dimiliki router untuk menghubungkan perangkat lain.
Secara default:
ether1 digunakan sebagai WAN (DHCP Client + Firewall NAT)
ether2 sampai ether5 dan juga wlan1 digunakan sebagai LAN (di masukan bridge)

<img width="1366" height="768" alt="interfaces" src="https://github.com/user-attachments/assets/97a595fa-c3bd-423e-bd89-eab37324a83e" />


2. Bridge

Bridge adalah fitur yang digunakan untuk menggabungkan beberapa interface menjadi satu jaringan logis.
Secara default MikroTik membuat bridge bernama "bridge"

<img width="864" height="92" alt="Screenshot 2026-06-24 145829" src="https://github.com/user-attachments/assets/b6689597-ed31-4050-954e-e872aa75b5fd" />

Kemudian memasukkan ether2, ether3, ether4, ether5, dan wlan1 ke dalam bridge tersebut.

<img width="865" height="199" alt="Screenshot 2026-06-24 144629" src="https://github.com/user-attachments/assets/8ac17b55-8132-47db-a31b-1efae67d3fad" />


Mengapa Bridge Dibutuhkan?
Tanpa bridge, setiap port ethernet akan dianggap sebagai jaringan yang berbeda.
Contoh:
ether2 = jaringan A
ether3 = jaringan B
ether4 = jaringan C

Dengan bridge:
ether2, ether3, ether4, ether5, wlan1 menjadi satu jaringan yang sama.

3. IP Address

Secara default MikroTik memberikan IP
192.168.88.1/24 pada interface bridge.

<img width="338" height="348" alt="address" src="https://github.com/user-attachments/assets/004d09e4-56bb-4f3e-9426-2e69b0e04a7a" />

4. DHCP Server

DHCP Server bertugas membagikan IP Address secara otomatis kepada client.
Saat laptop atau smartphone terhubung ke router, perangkat tersebut akan meminta IP kepada DHCP Server.

<img width="278" height="398" alt="Screenshot 2026-06-24 150806" src="https://github.com/user-attachments/assets/0b93dd83-7ca2-401a-933e-b82370b36af6" />

adapun default dari dhcp poolnya adalah:
192.168.88.10-192.168.88.254

5. DHCP Client

Untuk default configuration DHCP Client dipasang pada ether1
Fungsinya untuk meminta IP Address dari modem atau ISP secara otomatis tanpa harus mengisi manual

<img width="464" height="159" alt="DHCPclient" src="https://github.com/user-attachments/assets/cd6d7d72-9558-4e46-98b6-d5e5cb2a727f" />

selain itu juga default konfigurasi dari DHCP Client mengaktifkan:

Use Peer DNS = Yes
Digunakan agar MikroTik otomatis menerima dan menggunakan DNS yang diberikan oleh ISP.
Gunanya supaya router dapat menerjemahkan nama domain (misalnya google.com) tanpa perlu mengatur DNS secara manual.

Use Peer NTP = Yes
Digunakan agar MikroTik otomatis menerima informasi server NTP dari ISP.
Gunanya untuk menyinkronkan waktu pada router sehingga log, scheduler, dan fitur lainnya dapat berjalan dengan waktu yang akurat.

Add Default Route = Yes
Digunakan agar MikroTik otomatis membuat default route berdasarkan gateway yang diberikan ISP.
Gunanya supaya router mengetahui jalur menuju internet tanpa perlu menambahkan route secara manual.


6. Firewall NAT

NAT merupakan salah satu konfigurasi terpenting karena tanpa NAT, perangkat LAN tidak akan dapat mengakses internet meskipun router sudah terkoneksi ke ISP.
Secara default MikroTik membuat rule:
action=masquerade
chain=srcnat

<img width="907" height="150" alt="firewallNAT" src="https://github.com/user-attachments/assets/d38a0049-a8ef-4202-a9bb-45d79966647c" />


7. Firewall Filter Rule

Pada default konfigurasi mikrotik remote tidak bisa dilakukan pada ether1, karena adanya firewall filter rule yang membatasi. ether1 hanya bisa digunakan sebagai sumber internet tidak bisa digunakan untuk meremote.

<img width="901" height="374" alt="firewallFR" src="https://github.com/user-attachments/assets/64549531-21e4-4aa8-bba0-1801ea3b8bcb" />

8. Wireless

Secara default configuration, interface wireless sudah siap digunakan sebagai acces point

<img width="402" height="368" alt="Screenshot 2026-06-24 155850" src="https://github.com/user-attachments/assets/2a14668d-bc84-4aa8-8c15-401b3cd3c04b" />



Default Configuration pada MikroTik merupakan konfigurasi bawaan yang dibuat secara otomatis agar router dapat langsung digunakan sebagai perangkat jaringan tanpa perlu konfigurasi dari awal. Konfigurasi ini mencakup konfigurasi interface, bridge, IP address, DHCP Client, DHCP Server, DNS, firewall. Dengan adanya Default Configuration, proses instalasi dan penggunaan router menjadi lebih mudah, cepat, serta aman bagi pengguna yang baru mulai mengelola jaringan.







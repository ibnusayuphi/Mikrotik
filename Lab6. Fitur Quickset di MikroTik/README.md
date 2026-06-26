<h1>Lab6. Fitur Quickset di MikroTik</h1>

QuickSet merupakan fitur yang disediakan oleh MikroTik untuk mempermudah proses konfigurasi dasar router melalui satu halaman konfigurasi. Dengan menggunakan QuickSet, pengguna tidak perlu membuka menu satu per satu karena beberapa pengaturan penting sudah disediakan dalam satu tampilan. Fitur ini sangat membantu ketika ingin melakukan konfigurasi dasar seperti menghubungkan router ke internet, mengatur jaringan LAN, maupun mengaktifkan jaringan wireless.

<b>Mode pada quickset</b><br>

1. Home AP<br>
Mode Home AP digunakan ketika MikroTik berfungsi sebagai router utama sekaligus Access Point. Pada mode ini, router dapat menerima koneksi internet dari ISP, kemudian membagikannya kepada perangkat lain melalui kabel LAN maupun jaringan WiFi.
Mode ini paling sering digunakan pada jaringan rumah maupun laboratorium karena seluruh konfigurasi dasar seperti NAT, DHCP Server, DNS, dan Wireless dapat dibuat secara otomatis.

2. CPE (Client)<br>
Mode CPE digunakan ketika MikroTik berperan sebagai perangkat penerima sinyal wireless dari Access Point lain.
Dengan mode ini, MikroTik akan terhubung ke jaringan WiFi yang sudah ada, kemudian dapat meneruskan koneksi tersebut ke perangkat lain melalui port LAN.
Mode ini sering digunakan pada jaringan point-to-point atau ketika ingin mengambil koneksi internet dari jaringan wireless.

3. PTP Bridge AP<br>
Mode ini digunakan ketika MikroTik berfungsi sebagai Access Point pada koneksi Point to Point Bridge.
Mode ini biasanya digunakan untuk menghubungkan dua lokasi menggunakan jaringan wireless sehingga kedua lokasi berada dalam satu segmen jaringan.

4. PTP Bridge CPE<br>
Mode ini merupakan pasangan dari PTP Bridge AP.
Pada mode ini, MikroTik bertugas menerima koneksi wireless dari perangkat AP sehingga kedua perangkat dapat saling terhubung dalam satu jaringan.

5. WISP AP<br>
Mode WISP AP digunakan ketika MikroTik menerima internet melalui wireless, kemudian membagikannya kembali kepada perangkat lain baik melalui kabel maupun wireless.
Mode ini sering digunakan oleh penyedia layanan internet berbasis wireless (Wireless Internet Service Provider).

6. CAP (Controlled Access Point)<br>
Mode CAP (Controlled Access Point) digunakan ketika MikroTik akan dikelola oleh CAPsMAN (Controlled Access Point System Manager).
Pada mode ini, konfigurasi wireless seperti SSID, password, channel, hingga keamanan tidak dilakukan langsung pada Access Point, melainkan dikirim dari server CAPsMAN.

7. Home Mesh<br>
Home Mesh adalah mode pada QuickSet yang digunakan untuk membuat beberapa Access Point MikroTik menjadi satu jaringan WiFi. Saat mode ini dipilih, router akan otomatis mengaktifkan CAPsMAN sebagai pusat pengelola, sehingga konfigurasi seperti SSID dan password dapat dibagikan ke Access Point lain.<br>

<br>
<hr>
<h3>Praktik menggunakan quickset</h3>
Untuk praktik kali ini kita akan menggunakan topologi berikut:

untuk topologi di atas akan menggunakan quickset mode home ap.<br>

<b>Ubah terlebih dahulu mode pada quickset</b><br>

<img width="959" height="538" alt="Screenshot 2026-06-26 152032" src="https://github.com/user-attachments/assets/63d78c2e-f564-46ac-b5b3-437cd42429a0" />




<b>Konfigurasi Internet</b><br>
Pilih metode koneksi automatic, karena kita akan menjadi dhcp client

<img width="448" height="140" alt="Screenshot 2026-06-26 152642" src="https://github.com/user-attachments/assets/2e0be2d9-6673-4f38-8a6a-e68312457881" />


<b>Konfigurasi local network</b><br>
Kita masukan ip yang akan kita gunakan untuk jaringan lokal<br>
aktifkan juga pada NAT dan DHCP server agar klien mendapat ip otomatis dari server


<img width="440" height="143" alt="Screenshot 2026-06-26 152656" src="https://github.com/user-attachments/assets/9cd6110e-b493-4325-9bcf-5af0574a3535" />


<b>Test koneksi dari Mikrotik ke internet</b>

<img width="473" height="209" alt="Screenshot 2026-06-26 100049" src="https://github.com/user-attachments/assets/caf43b7f-20c7-402e-b93c-ab02d7e55342" />


<b>Test koneksi dari klien</b>
pastikan sudah mendapat ip dari server

<img width="506" height="179" alt="Screenshot 2026-06-25 220905" src="https://github.com/user-attachments/assets/02b58977-3448-4630-8e53-3f26c91e32af" />


<hr>

Selanjutnya kita akan mencoba fitur quickset dengan topologi yang berbeda, yaitu seperti berikut:<br>

masih menggunakan mode yang sama yaitu home ap<br>
<b>Konfigurasi internet</b><br>
nahh untuk kali ini kita akan gunakan ip static, isi sesuai seperti topologi


<img width="443" height="167" alt="Screenshot 2026-06-26 150734" src="https://github.com/user-attachments/assets/bd6f8f1c-da1a-40c1-b0a3-57d9e09a250b" />


<b>Konfigurasi local network</b><br>
Kita masukan ip yang akan kita gunakan untuk jaringan lokal<br>
aktifkan juga pada NAT dan DHCP server agar klien mendapat ip otomatis dari server

<img width="442" height="158" alt="Screenshot 2026-06-26 155001" src="https://github.com/user-attachments/assets/07221398-0ac0-4395-8d15-ab8ed137a563" />


<b>Test koneksi dari mikrotik ke internet</b>

<img width="469" height="136" alt="Screenshot 2026-06-26 155306" src="https://github.com/user-attachments/assets/abd47d85-6acd-4798-ac39-1c5b45800f18" />



<b>Test koneksi dari klien ke internet</b>

<img width="425" height="182" alt="Screenshot 2026-06-26 155357" src="https://github.com/user-attachments/assets/1ae55de3-00c1-4ba4-ace0-ec78da4c7857" />






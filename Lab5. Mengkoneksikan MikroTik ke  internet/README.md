<h1>Lab5. Mengkoneksikan MikroTik ke internet</h1>

Untuk lab kali ini kita akan menggunakan topologi berikut:

<h3>1. Sumber internet IP dynamic</h3>
   Pertama tama kita akan ubah nama interface yang akan kita gunakan agar memudahkan kita saat konfigurasi<br>
   - ether1 kita ubah jadi ether1-WAN(terkoneksi ke internet)<br>
   - ether2 kita ubah jadi ether2-LAN(terkoneksi dengan pc klien)

<img width="959" height="424" alt="Screenshot 2026-06-25 214703" src="https://github.com/user-attachments/assets/62072af4-b1ed-4317-9c84-d3994aae747e" />

<br>

<b>Selanjutnya kita akan konfigurasi DHCP client pada ether1</b>
   - interface: ether1-WAN
   - Use Peer DNS: yes
   - Use Peer NTP: yes
   - Add Default Route: yes

<img width="433" height="346" alt="Screenshot 2026-06-25 214846" src="https://github.com/user-attachments/assets/d5c8ac2f-443d-4364-ae87-9dafdb247151" />


   Tunggu hingga statusnya bound, itu berarti kita sudah mendapatkan ip dari server.

<br>

<b> Kita coba test koneksi dari MikroTik ke internet menggunakan ping</b>

<img width="471" height="142" alt="Screenshot 2026-06-25 215509" src="https://github.com/user-attachments/assets/0a2bf897-f068-4d60-ace2-2d7ecd66d38a" />


 oke sudah terkoneksi ya
 
<br>

<b> Selanjutnya kita akan menambahkan ip untuk LAN</b>
   - Address: 192.168.100.1/24
   - Interface: ether2-LAN

<img width="217" height="165" alt="Screenshot 2026-06-25 221720" src="https://github.com/user-attachments/assets/c91979b5-6a9f-48b7-b241-16ed3556ce7c" />


<br>

<b>Agar klien dapat terhubung ke internet kita akan melakukan konfigurasi Firewall NAT</b><br>
ip > firewall > nat<br>
   - chain: srcnat<br>
   - out interface: ether1-WAN<br>
   - action: masquerade

<img width="478" height="428" alt="Screenshot 2026-06-25 220606" src="https://github.com/user-attachments/assets/25abd451-8977-4090-84d8-f88e3f1f27dd" />


   nahh gunanya firewall nat di sini untuk mengubah ip private klien menjadi ip public yang bisa mengakses internet

<br>

   <b>Lalu kita setting ip pada sisi klien, gunakan ip yang satu segmen dengan ip ether2 yang kita tambahkan tadi</b>
   - address: 192.168.100.2
   - subnet mask: 255.255.255.0
   isikan juga dnsnya
  - Preferred DNS: 8.8.8.8 
  - Alternate DNS: 8.8.4.4
  
<img width="300" height="338" alt="Screenshot 2026-06-25 215922" src="https://github.com/user-attachments/assets/a18de05f-b18f-471c-acbb-75cb2b9cb067" />

Fungsi dari kita menambahkan dns yaitu memungkinkan perangkat mengakses website menggunakan nama domain, bukan harus mengetik alamat IP


<b>Test ping dari sisi klien</b>
ping 8.8.8.8 dan ping google.com

<img width="470" height="186" alt="Screenshot 2026-06-25 220747" src="https://github.com/user-attachments/assets/38b271d2-7298-4e8f-bf34-e7a77dd58822" />
<img width="506" height="179" alt="Screenshot 2026-06-25 220905" src="https://github.com/user-attachments/assets/217e12ea-b2c2-4d2b-8d0d-c3711d0f2ff2" />

oke sudah terkoneksi ya, itu artinya kita sudah berhasil mengkoneksikan MikroTik ke internet.

<br>
<br>
<h3>2. Sumber internet IP statis</h3>
Pada praktikum ini, koneksi internet akan menggunakan metode Static IP, sehingga seluruh konfigurasi harus dilakukan secara manual. Berbeda dengan praktik di atas yang mendapatkan konfigurasi secara otomatis, pada Static IP kita harus harus mengisi sendiri IP Address, Gateway, dan DNS sesuai dengan informasi yang diberikan oleh ISP.
Kita akan gunakan topologi berikut:


<b>Seperti pada praktik di atas pertama kita akan mengubah terlebih dahulu nama interfacenya</b>
- ether1 > ether1-WAN
- ether2 > ether2-LAN

<img width="959" height="424" alt="Screenshot 2026-06-25 214703" src="https://github.com/user-attachments/assets/62072af4-b1ed-4317-9c84-d3994aae747e" />



<b>Menambahkan IP address</b>
ip > address
- address: 192.168.137.2/24 (ini disesuaikan dengan ip yang diberikan oleh isp)
- interface: ether1

<img width="265" height="262" alt="Screenshot 2026-06-26 095727" src="https://github.com/user-attachments/assets/d5dad070-2524-478b-b7ab-290e9c424585" />


  Jika IP berada pada jaringan yang berbeda, maka MikroTik tidak akan dapat terhubung ke gateway.

<b>Menambahkan default route</b><br>
ip > Routes<br>
Dst. Address: 0.0.0.0/0<br>
Gateway: 192.168.137.1

<img width="298" height="349" alt="Screenshot 2026-06-26 095805" src="https://github.com/user-attachments/assets/3b51dba7-54e8-4321-9ca9-13d1cbcb5fad" />


Kenapa Dst Address-nya 0.0.0.0/0, bukan IP Google atau IP lain?
Karena 0.0.0.0/0 adalah representasi dari semua jaringan.Jadi ketika router menerima paket data dan tidak menemukan tujuan tersebut di jaringan lokal, router akan menggunakan Default Route sebagai jalur keluarnya.

<b>Menambahkan DNS</b><br>
ip > dns<br>
servers: 8.8.8.8<br>
         1.1.1.1<br>
centang pada Allow Remote Requests

<img width="323" height="317" alt="Screenshot 2026-06-26 095851" src="https://github.com/user-attachments/assets/6de55656-2e3f-42f7-b4d0-68ada774a3e4" />



DNS digunakan untuk menerjemahkan nama domain menjadi alamat IP.Tanpa DNS, router masih dapat melakukan ping ke alamat IP, namun tidak dapat mengakses website menggunakan nama domain. Oleh karena itu, DNS diperlukan agar pengguna dapat mengakses internet menggunakan nama domain.

<b>Test koneksi dari MikroTik ke Internet</b><br>
ping 8.8.8.8<br>
ping google.com<br>

<img width="473" height="209" alt="Screenshot 2026-06-26 100049" src="https://github.com/user-attachments/assets/2f42ddfb-bfad-4a99-836f-785bc9578777" />


yapp sudah berhasil terkoneksi


<b>Selanjutnya kita akan menambahkan ip untuk LAN</b>
   - Address: 192.168.100.1/24
   - Interface: ether2-LAN

<img width="217" height="165" alt="Screenshot 2026-06-25 221720" src="https://github.com/user-attachments/assets/c91979b5-6a9f-48b7-b241-16ed3556ce7c" />


<br>

<b>Agar klien dapat terhubung ke internet kita akan melakukan konfigurasi Firewall NAT</b><br>
ip > firewall > nat<br>
   - chain: srcnat<br>
   - out interface: ether1-WAN<br>
   - action: masquerade

<img width="478" height="428" alt="Screenshot 2026-06-25 220606" src="https://github.com/user-attachments/assets/25abd451-8977-4090-84d8-f88e3f1f27dd" />


   nahh gunanya firewall nat di sini untuk mengubah ip private klien menjadi ip public yang bisa mengakses internet

<br>

   <b>Lalu kita setting ip pada sisi klien, gunakan ip yang satu segmen dengan ip ether2 yang kita tambahkan tadi</b>
   - address: 192.168.100.2
   - subnet mask: 255.255.255.0
   isikan juga dnsnya
  - Preferred DNS: 8.8.8.8
  - Alternate DNS: 8.8.4.4
  
<img width="300" height="338" alt="Screenshot 2026-06-25 215922" src="https://github.com/user-attachments/assets/a18de05f-b18f-471c-acbb-75cb2b9cb067" />

Fungsi dari kita menambahkan dns yaitu memungkinkan perangkat mengakses website menggunakan nama domain, bukan harus mengetik alamat IP


<b>Test ping dari sisi klien</b>
ping 8.8.8.8 dan ping google.com

<img width="470" height="186" alt="Screenshot 2026-06-25 220747" src="https://github.com/user-attachments/assets/38b271d2-7298-4e8f-bf34-e7a77dd58822" />
<img width="506" height="179" alt="Screenshot 2026-06-25 220905" src="https://github.com/user-attachments/assets/217e12ea-b2c2-4d2b-8d0d-c3711d0f2ff2" />

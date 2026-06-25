<h1>Lab5. Mengkoneksikan MikroTik ke internet</h1>

Untuk lab kali ini kita akan menggunakan topologi berikut:

<b>1. Sumber internet IP dynamic</b>
   Pertama tama kita akan ubah nama interface yang akan kita gunakan agar memudahkan kita saat konfigurasi
   - ether1 kita ubah jadi ether1-WAN(terkoneksi ke internet)
   - ether2 kita ubah jadi ether2-LAN(terkoneksi dengan pc klien)

<img width="959" height="424" alt="Screenshot 2026-06-25 214703" src="https://github.com/user-attachments/assets/62072af4-b1ed-4317-9c84-d3994aae747e" />

<br>

<b>2. Selanjutnya kita akan konfigurasi DHCP client pada ether1</b>
   - interface: ether1-WAN
   - Use Peer DNS: yes
   - Use Peer NTP: yes
   - Add Default Route: yes

<img width="433" height="346" alt="Screenshot 2026-06-25 214846" src="https://github.com/user-attachments/assets/d5c8ac2f-443d-4364-ae87-9dafdb247151" />


   Tunggu hingga statusnya bound, itu berarti kita sudah mendapatkan ip dari server.

<br>
<b>3. Kita coba test koneksi dari MikroTik ke internet menggunakan ping</b>

<img width="471" height="142" alt="Screenshot 2026-06-25 215509" src="https://github.com/user-attachments/assets/0a2bf897-f068-4d60-ace2-2d7ecd66d38a" />


 oke sudah terkoneksi ya
 
<br>
<b>4. Selanjutnya kita akan menambahkan ip untuk LAN</b>
   - Address: 192.168.100.1/24
   - Interface: ether2-LAN

<img width="217" height="165" alt="Screenshot 2026-06-25 221720" src="https://github.com/user-attachments/assets/c91979b5-6a9f-48b7-b241-16ed3556ce7c" />


<br>

<b>5. Selanjutnya agar klien dapat terhubung ke internet kita akan melakukan konfigurasi Firewall NAT</b>
   - chain: srcnat
   - out interface: ether1-WAN
   - action: masquerade

<img width="478" height="428" alt="Screenshot 2026-06-25 220606" src="https://github.com/user-attachments/assets/25abd451-8977-4090-84d8-f88e3f1f27dd" />


   nahh gunanya firewall nat di sini untuk mengubah ip private klien menjadi ip public yang bisa mengakses internet

<br>
   <b>6. Lalu kita setting ip pada sisi klien, gunakan ip yang satu segmen dengan ip ether2 yang kita tambahkan tadi</b>
   - address: 192.168.100.2
   - subnet mask: 255.255.255.0
  - isikan juga dnsnya
  - Preferred DNS: 8.8.8.8 kita pake ip google ya
  - Alternate DNS: 8.8.4.4
  
<img width="300" height="338" alt="Screenshot 2026-06-25 215922" src="https://github.com/user-attachments/assets/a18de05f-b18f-471c-acbb-75cb2b9cb067" />


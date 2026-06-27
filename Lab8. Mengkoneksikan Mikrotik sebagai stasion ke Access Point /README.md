<h1>Lab8. Mengkoneksikan Mikrotik sebagai stasion ke Access Point </h1>

Pada lab ini saya akan mempelajari cara menghubungkan MikroTik sebagai Station ke sebuah Access Point sehingga MikroTik dapat menerima koneksi jaringan melalui media wireless.
Mode Station pada MikroTik adalah konfigurasi yang membuat perangkat berfungsi sebagai wireless client (penerima) untuk menangkap sinyal dari Access Point. Oke langsung saja kita praktik dengan menggunakan topologi berikut:

<img width="506" height="194" alt="Screenshot 2026-06-27 184259" src="https://github.com/user-attachments/assets/e1b9d98a-8afc-4b99-84c9-89ca2d692cce" />

<h2>Langkah Konfigurasi</h2>
<b>1. Aktifkan wireless</b>
Masuk ke menu:<br>
Wireless > pilih Wlan1 > Lalu enable(klik tanda centang di pojok kiri atas)

<img width="959" height="248" alt="Screenshot 2026-06-27 195106" src="https://github.com/user-attachments/assets/66fb0011-d845-45f9-883e-6b2d82211313" />


<b>2. Membuat security profile</b><br>
Masuk ke menu:<br>
Wireless > Security Profiles<br>
Buat profile baru dengan klik tanda +<br>
WPA Pre-Shared Key : Semangat45<br>
WPA2 Pre-Shared Key : Semangat45<br>

<img width="316" height="298" alt="Screenshot 2026-06-27 193708" src="https://github.com/user-attachments/assets/defb27ff-fdc9-4caf-9946-03e3275416cb" />



<b>3. Mengubah mode wireless dan menambahkan security profile</b><br>
Masih di menu wireless, buka wlan1 kemudian ubah modenya menjadi station dan ubah security profilenya dari default jadi belajar, yang sudah kita buat tadi

<img width="406" height="369" alt="Screenshot 2026-06-27 193808" src="https://github.com/user-attachments/assets/464a76f2-1675-40ee-b1aa-bb068953a024" />



<b>4. Scan Access Point </b><br>
Klik scanner, pilih SSID yang akan dihubungkan kemudian klik connect

<img width="868" height="278" alt="Screenshot 2026-06-27 193942" src="https://github.com/user-attachments/assets/cdfecee2-9741-4780-aa01-0f7549086219" />

<img width="415" height="342" alt="Screenshot 2026-06-27 194017" src="https://github.com/user-attachments/assets/b2f1217c-e32d-43e6-bd90-3993edb21cfb" />



pastikan statusnya sudah R atau running, itu berarti kita sudah berhasil menghubungkan MikroTik kita dengan access point


<b>5. Membuat DHCP Client</b><br>
ip > DHCP Client

<img width="337" height="283" alt="Screenshot 2026-06-27 194228" src="https://github.com/user-attachments/assets/8384e616-0346-401c-ad61-2d7f60c828cb" />


Pastikan statusnya berubah menjadi bound

<b>6. Test koneksi dari MikroTik</b><br>
ping google.com

<img width="468" height="184" alt="Screenshot 2026-06-27 194329" src="https://github.com/user-attachments/assets/66dc7c6d-fdb2-46c4-a854-b21991a07576" />


oke sudah berhasil itu artinya kita sudah berhasil menghubungkan Mikrotik ke internet melalui Access point menggunakan mode station

<b>7. Menambahkan IP untuk LAN</b><br>
IP > Address<br>
address: 192.168.20.1/24<br>
interface: ether2

<img width="216" height="166" alt="Screenshot 2026-06-27 194419" src="https://github.com/user-attachments/assets/dc27d558-af46-44d1-8385-ac6b570b80d9" />


<b>8. Menambahkan NAT</b><br>
Agar klien dapat terhubung ke internet kita akan melakukan konfigurasi NAT<br>
ip > firewall > NAT<br>
   - chain: srcnat<br>
   - out interface: wlan1<br>
   - action: masquerade

<img width="285" height="430" alt="Screenshot 2026-06-27 194451" src="https://github.com/user-attachments/assets/5c65d36d-6402-4c74-8013-cbd49044a4ec" />

<img width="285" height="427" alt="Screenshot 2026-06-27 194506" src="https://github.com/user-attachments/assets/a32dd28f-a3ad-4fc2-847a-e5fb67738159" />




<b>9. Setting ip pada sisi klien</b><br>
gunakan ip yang satu segmen dengan ip ether2 yang kita tambahkan tadi<br>
   - address: 192.168.20.2
   - subnet mask: 255.255.255.0
   - gateway: 192.168.20.1
  - Preferred DNS: 8.8.8.8
  - Alternate DNS: 8.8.4.4

<img width="301" height="340" alt="Screenshot 2026-06-27 200555" src="https://github.com/user-attachments/assets/b8f05d95-4990-40ec-8d30-a1c9625204c0" />



<b>10. Test koneksi pada klien</b><br>
Selanjutnya kita akan test koneksi pada sisi klien<br>
ping youtube.com<br>

<img width="425" height="182" alt="Screenshot 2026-06-26 155357" src="https://github.com/user-attachments/assets/a141b9c4-89a1-4a72-9f47-73c8fd16c112" />


dan yapp sudah terkoneksi. Itu artinya kita sudah berhasil menghubungkan Mikrotik ke internet melalui Access point menggunakan mode station<br>

<hr>
<h3>Kesimpulan</h3>
Dari praktikum ini saya memahami bahwa mode Station digunakan agar MikroTik dapat menerima koneksi jaringan dari Access Point melalui wireless. Dengan mode ini, MikroTik berfungsi sebagai client.


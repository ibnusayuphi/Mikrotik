<h1>Lab 18 DHCP Server dan Static Leases</h1>
Pada lab sebelumnya kita sudah membahas DHCP Server nahh pada kesempatan kali ini kita akan membahas Static Leases, ini juga masih berhubungan sebenarnya dengan DHCP Server.
<h2>Static Leases</h2>
Static Lease adalah fitur pada DHCP Server yang digunakan untuk mengikat sebuah MAC Address dengan IP Address tertentu. Artinya, meskipun perangkat menggunakan DHCP, perangkat tersebut akan selalu mendapatkan IP Address yang sama setiap kali terhubung ke jaringan. Berikut adalah cara membuat static leases pada MikroTik:
<h3> 1. Membuat static leases dari perangkat yang sudah terhubung</h3>
<ol>
  <li>Pastikan kalian sudah membuat DHCP Server sebelumnya. Buka menu: IP > DHCP Server > leases. Pada menu leases juga kita bisa melihat perangkat siapa saja yang terhubung dengan router kita.<br>
  Sebelum kita buat static terdapat flag D yang berarti dynamic.</li>

  <img width="959" height="496" alt="Screenshot 2026-07-27 180115" src="https://github.com/user-attachments/assets/fd7e7d90-6954-4dea-aef3-cdf060cfc9b2" />

<img width="731" height="281" alt="Screenshot 2026-07-27 183542" src="https://github.com/user-attachments/assets/e17b3f15-f534-4a4b-8bfe-d09b3fde065c" />

  <li>klik perangkat yang akan kita buat jadi static leases kemudian klik <b>make static</b> klik Apply lalu ok</li>

  <img width="727" height="283" alt="Screenshot 2026-07-27 183630" src="https://github.com/user-attachments/assets/4e2cd6e7-21d8-4652-8074-a35e49b21f39" />

  <li>Maka jika sudah dibuat static flag D akan hilang, karena kita sudah berhasil membuatnya menjadi static.</li>

  <img width="732" height="281" alt="Screenshot 2026-07-27 183645" src="https://github.com/user-attachments/assets/eb57b641-92f3-45e6-932f-6a51a3819d3c" />

</ol>

<h3> 2. Menambahkan static leases manual</h3>
<ol>
  <li>Pastikan kalian sudah membuat DHCP Server sebelumnya. Masuk ke menu IP > DHCP Server > Leases</li>

<img width="959" height="496" alt="Screenshot 2026-07-27 180115" src="https://github.com/user-attachments/assets/fd7e7d90-6954-4dea-aef3-cdf060cfc9b2" />

<img width="731" height="281" alt="Screenshot 2026-07-27 183542" src="https://github.com/user-attachments/assets/e17b3f15-f534-4a4b-8bfe-d09b3fde065c" />

  <li>Klik add (+). Kemudian isi IP address sesuai keinginan asal masih berada dalam rentang DHCP pool, isikan juga MAC Address dengan MAC Address perangkat yang ingin kalian tambahkan. Untuk lengkapnya seperti ini.</li>

  <img width="303" height="366" alt="Screenshot 2026-07-27 185442" src="https://github.com/user-attachments/assets/96118e6c-adfa-4e6e-8086-77f6b875646d" />

  <li>Kemudian klik Apply lalu ok</li>
  <li>Kita coba hubungkan menggunakan perangkat yang tadi sudah kita tambahkan MAC Addressnya, lalu kita cek IP nya.</li>

  <img width="270" height="334" alt="Screenshot 2026-07-27 185633" src="https://github.com/user-attachments/assets/fb6a8994-1421-45dd-856f-fda9410dee3f" />

</ol>


Selain itu static leases ini juga bisa digunakan untuk limitasi bandwidth juga. Berikut caranya:
<h3>Limitasi bandwidth menggunakan static leases</h3>
<ol>
  <li>Masuk ke menu: IP > DHCP Server > leases</li>
  <li>Klik pada MAC Address perangkat yang mau dibuat limitasi bandwidth.</li>
  <li>Isikan kolom rate limit sesuai kebutuhan. Di sini saya isi dengan 1M/2M (artinya limit download 1 Mbps dan limit upload 2 Mbps). Klik Apply lalu ok</li>
</ol>

<hr>
<h3>Kesimpulan</h3>
Static Lease adalah fitur pada DHCP Server yang digunakan supaya suatu perangkat selalu mendapatkan IP Address yang sama. Tujuannya agar kita tidak perlu setting manual tapi dapat ip yang tetap. Ini biasanya digunakan pada printer, server, CCTV, maupun access point.

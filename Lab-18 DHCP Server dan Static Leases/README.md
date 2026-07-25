<h1>Lab 18 DHCP Server dan Static Leases</h1>
Pada lab sebelumnya kita sudah membahas DHCP Server nahh pada kesempatan kali ini kita akan membahas Static Leases, ini juga masih berhubungan sebenarnya dengan DHCP Server.
<h2>Static Leases</h2>
Static Lease adalah fitur pada DHCP Server yang digunakan untuk mengikat sebuah MAC Address dengan IP Address tertentu. Artinya, meskipun perangkat menggunakan DHCP, perangkat tersebut akan selalu mendapatkan IP Address yang sama setiap kali terhubung ke jaringan. Berikut adalah cara membuat static leases pada MikroTik:
<h3> 1. Membuat static leases dari perangkat yang sudah terhubung</h3>
<ol>
  <li>Buka menu: IP > DHCP Server > leases<br>
  Sebelum kita buat static terdapat flag D yang berarti dynamic.</li>
  <li>klik perangkat yang akan kita buat jadi static leases</li>
  <li>Klik <b>make static</b> klik Apply lalu ok</li>
</ol>

<h3> 2. Menambahkan static leases manual</h3>
<ol>
  <li>Masuk ke menu IP > DHCP Server > Leases</li>
  <li>Klik add (+)</li>
  <li>Kemudian isi IP address sesuai keinginan, isikan juga MAC Address dengan MAC Address yang ingin kalian tambahkan. Untuk lengkapnya seperti ini. Kemudian klik Apply lalu ok</li>
</ol>


Selain itu static leases ini juga bisa digunakan untuk limitasi bandwidth juga. Berikut caranya

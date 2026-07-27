<img width="350" height="314" alt="Screenshot 2026-07-27 191734" src="https://github.com/user-attachments/assets/e466b5da-0bec-4083-a526-523a8b10c75e" /><h1>Lab 20 Bridging</h1>

<h3>Bridge pada MikroTik</h3>
Bridge adalah fitur pada MikroTik yang digunakan untuk menggabungkan beberapa interface menjadi satu jaringan. Misalkan kita memasukan interface ether1 dan ether2 ke dalam bridge yang sama, bisa diartikan interface itu sudah tidak ada namun adanya bridge yang berisikan interface tersebut. Bridge juga bisa diibaratkan sebagai grup lah gampangnya. Jadi misal kita menambahkan IP lalu di arahkan pada interface bridge, maka yang mendapatkan konfigurasi tersebut adalah semua interface yang ada pada bridge tersebut, dalam contoh ini yaitu ether1 dan ether2.

<h3>Cara konfigurasi</h3>
<h4>1. Membuat Bridge</h4>
<ul>
  <li>Masuk ke menu <b>Bridge</b> Kemudian klik add (+)</li>

  <img width="959" height="474" alt="Screenshot 2026-07-27 191710" src="https://github.com/user-attachments/assets/81a3e78f-c5aa-4875-aef3-7bc580239a2c" />

  <li>Isi nama Bridge, misalnya bridge-LAN</li>

  <img width="350" height="314" alt="Screenshot 2026-07-27 191734" src="https://github.com/user-attachments/assets/96099663-3819-417c-9e5d-8f2e512a6244" />

  <li>Klik Apply lalu ok</li>
</ul>

<h4>2. Menambahkan port ke bridge</h4>
<ul>
  <li>Masuk ke menu Bridge > Ports</li>

  <img width="959" height="463" alt="Screenshot 2026-07-27 191752" src="https://github.com/user-attachments/assets/74e9f7dc-0c97-403b-8189-2736bde2b16f" />

  <li>Klik add (+) Pilih:<br>Interface: ether2<br>Bridge: bridge-LAN</li>

  <img width="344" height="259" alt="Screenshot 2026-07-27 191828" src="https://github.com/user-attachments/assets/249716a2-a08d-416a-a520-b3d8be2451ae" />

  <li>Klik Apply lalu ok</li>
  <li>Lakukan hal yang sama untuk interfce lain yang akan ditambahkan ke dalam bridge</li>

  <img width="866" height="283" alt="Screenshot 2026-07-27 191915" src="https://github.com/user-attachments/assets/7f0b2789-87da-461c-8013-a4349be137bf" />

  
</ul>

Itulah cara membuat bridge dan menambahkan port pada bridge. Jadi ketika kalian akan membuat konfigurasi misalnya IP Address atau DHCP Server dan mengarahkannya pada bridge-LAN yang dibuat tadi maka semua port yang sudah kalian masukan tadi akan mendapatkan konfigurasi tersebut, tidak perlu tuh kalian setting satu satu.

<hr>
<h3>Kesimpulan</h3>
Bridge merupakan fitur pada MikroTik yang digunakan untuk menggabungkan beberapa interface menjadi satu jaringan. Dengan menggunakan Bridge, beberapa port dapat bekerja seperti sebuah switch sehingga perangkat yang terhubung dapat saling berkomunikasi. Selain mempermudah pengelolaan jaringan, Bridge juga membuat proses konfigurasi menjadi lebih praktis karena cukup dilakukan pada interface Bridge.

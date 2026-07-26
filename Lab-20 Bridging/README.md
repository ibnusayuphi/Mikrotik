<h1>Lab 20 Bridging</h1>

<h3>Bridge pada MikroTik</h3>
Bridge adalah fitur pada MikroTik yang digunakan untuk menggabungkan beberapa interface menjadi satu jaringan. Misalkan kita memasukan interface ether1 dan ether2 ke dalam bridge yang sama, bisa diartikan interface itu sudah tidak ada namun adanya bridge yang berisikan interface tersebut. Bridge juga bisa diibaratkan sebagai grup lah gampangnya. Jadi misal kita menambahkan IP lalu di arahkan pada interface bridge, maka yang mendapatkan konfigurasi tersebut adalah semua interface yang ada pada bridge tersebut, dalam contoh ini yaitu ether1 dan ether2.

<h3>Cara konfigurasi</h3>
<h4>1. Membuat Bridge</h4>
<ul>
  <li>Masuk ke menu <b>Bridge</b> Kemudian klik add (+)</li>
  <li>Isi nama Bridge, misalnya bridge-LAN</li>
  <li>Klik Apply lalu ok</li>
</ul>

<h4>2. Menambahkan port ke bridge</h4>
<ul>
  <li>Masuk ke menu Bridge > Ports</li>
  <li>Klik add (+)</li>
  <li>Pilih:<br>Interface: ether2<br>Bridge: bridge-LAN</li>
  <li>Klik Apply lalu ok</li>
  <li>Lakukan hal yang sama untuk interfce lain yang akan ditambahkan ke dalam bridge</li
  
</ul>

Itulah cara membuat bridge dan menambahkan port pada bridge. Jadi ketika kalian akan membuat konfigurasi misalnya IP Address atau DHCP Server dan mengarahkannya pada bridge-LAN yang dibuat tadi maka semua port yang sudah kalian masukan tadi akan mendapatkan konfigurasi tersebut, tidak perlu tuh kalian setting satu satu.

<hr>
<h3>Kesimpulan</h3>
Bridge merupakan fitur pada MikroTik yang digunakan untuk menggabungkan beberapa interface menjadi satu jaringan. Dengan menggunakan Bridge, beberapa port dapat bekerja seperti sebuah switch sehingga perangkat yang terhubung dapat saling berkomunikasi. Selain mempermudah pengelolaan jaringan, Bridge juga membuat proses konfigurasi menjadi lebih praktis karena cukup dilakukan pada interface Bridge.

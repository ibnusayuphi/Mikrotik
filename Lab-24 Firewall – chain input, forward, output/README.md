<h1>Lab 24 Firewall-chain input, forward, output</h1>
Firewall pada MikroTik adalah fitur yang digunakan untuk mengatur dan menyaring lalu lintas data yang masuk, keluar, atau melewati router. Dengan firewall, kita bisa membuat aturan seperti mengizinkan, menolak, atau membatasi koneksi tertentu. Di MikroTik, firewall memiliki beberapa chain. Ada tiga chain yang penting dipahami, yaitu:
<ul>
  <li>INPUT(Menuju Router)</li>
  <li>FORWARD(Melewati Router)</li>
  <li>OUTPUT(Meninggalkan Router)</li>
</ul>

<h2>Contoh konfigurasi</h2>
<h3>1. Chain: input</h3>
Pada chain ini kita bisa memblokir akses client ke router mikrotik, seperti pada lab 21. Seperi ini konfigurasinya:
<ol>
  <li>masuk ke menu ip > firewall > filter rule kemudian klik Add(+)</li>
  <li>Buat rule seperti ini:</li>
  <li>Pengujian</li>
</ol>

<h3>2. Chain: forward</h3>
Pada chain ini kita bisa memblokir akses client menuju internet. Seperti ini konfigurasinya:
<ol>
  <li>masuk ke menu ip > firewall > filter rule kemudian klik Add(+)</li>
  <li>Buat rule seperti ini:</li>
  <li>Pengujian</li>
</ol>

<h3>3. chain: output</h3>
Pada chain ini kita bisa membatasi router agar tidak mengakses server tertentu. Seperti ini konfigurasi:
<ol>
  <li>masuk ke menu ip > firewall > filter rule kemudian klik Add(+)</li>
  <li>Buat rule seperti ini:</li>
  <li>Pengujian</li>
</ol>

<h2>Kesimpulan</h2>
Firewall pada MikroTik digunakan untuk mengatur dan menyaring lalu lintas data yang ada di jaringan. Pada firewall terdapat beberapa chain, yaitu input untuk mengatur koneksi yang menuju ke router, forward untuk mengatur koneksi yang melewati router, dan output untuk mengatur koneksi yang dibuat oleh router sendiri.

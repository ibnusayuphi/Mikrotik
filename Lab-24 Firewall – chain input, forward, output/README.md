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

<h3>2. Chain: forward</h3>
Pada chain ini kita bisa memblokir akses client menuju internet. Seperti ini konfigurasiny:

<h3>3. chain: output</h3>
Pada chain ini kita bisa 

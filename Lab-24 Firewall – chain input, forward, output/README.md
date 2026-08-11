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
  <img width="959" height="488" alt="Screenshot 2026-08-11 221251-2" src="https://github.com/user-attachments/assets/a5e2e6e0-4078-490e-94e7-83c6103cd0aa" />

  <li>Buat rule seperti ini:</li>
  <img width="295" height="233" alt="Screenshot 2026-08-09 193249" src="https://github.com/user-attachments/assets/4d6ad623-5685-48df-a156-d78955e7dfe5" />

<img width="293" height="206" alt="Screenshot 2026-08-09 193308" src="https://github.com/user-attachments/assets/6f1b7ad7-05c6-4da9-a503-f767939c383e" />

arti dari rule tersebut adalah, jika ada data yang masuk ke router(input) melalui interface bridge-LAN(in.interface: bridge-LAN) maka akan dibuang secara senyap(action: drop)
  <li>Pengujian</li>
<img width="959" height="230" alt="Screenshot 2026-08-09 200114" src="https://github.com/user-attachments/assets/978bec86-ca63-44eb-a19e-0a5140ec62e5" />

  Dengan ini client tidak dapat mengakses router mikrotik tetapi tetap terkoneksi ke internet.
</ol>

<h3>2. Chain: forward</h3>
Pada chain ini kita bisa memblokir akses client menuju internet. Seperti ini konfigurasinya:
<ol>
  <li>masuk ke menu ip > firewall > filter rule kemudian klik Add(+)</li>
    <img width="759" height="288" alt="Screenshot 2026-08-11 221251-2" src="https://github.com/user-attachments/assets/a5e2e6e0-4078-490e-94e7-83c6103cd0aa" />

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

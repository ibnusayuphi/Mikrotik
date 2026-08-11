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
  <img width="659" height="288" alt="Screenshot 2026-08-11 221251-2" src="https://github.com/user-attachments/assets/a5e2e6e0-4078-490e-94e7-83c6103cd0aa" />

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
    <img width="659" height="288" alt="Screenshot 2026-08-11 221251-2" src="https://github.com/user-attachments/assets/a5e2e6e0-4078-490e-94e7-83c6103cd0aa" />

  <li>Buat rule seperti ini:</li>
  <img width="296" height="197" alt="Screenshot 2026-08-11 222050" src="https://github.com/user-attachments/assets/0725b2d1-c15d-4120-acd5-abac8bb1419c" />

<img width="296" height="185" alt="Screenshot 2026-08-11 222059" src="https://github.com/user-attachments/assets/a5ba8a10-dee4-4f9b-86c1-5e97a3d27e14" />

arti dari rule tersebut adalah, jika ada data yang diteruskan oleh router(forward) yang berasal dari ip 192.168.0.1/24(Src.Address:  192.168.0.1/24) maka paket akan dibuang secara senyap(action: drop)

  <li>Pengujian</li>
<img width="496" height="155" alt="Screenshot 2026-08-11 222119" src="https://github.com/user-attachments/assets/841614eb-4eb5-4af1-9ad8-eb8e90c1116b" />

</ol>

<h3>3. chain: output</h3>
Pada chain ini kita bisa membatasi router agar tidak mengakses server tertentu. Seperti ini konfigurasi:
<ol>
  <li>masuk ke menu ip > firewall > filter rule kemudian klik Add(+)</li>
  <img width="659" height="288" alt="Screenshot 2026-08-11 221251-2" src="https://github.com/user-attachments/assets/a5e2e6e0-4078-490e-94e7-83c6103cd0aa" />
  
  <li>Buat rule seperti ini:</li>
<img width="295" height="192" alt="Screenshot 2026-08-11 222433" src="https://github.com/user-attachments/assets/8db01c91-a10a-4c6f-92f7-012f4b897851" />

<img width="298" height="185" alt="Screenshot 2026-08-11 223743" src="https://github.com/user-attachments/assets/28d0d01b-7e78-46e5-976f-0c46aa5cbe45" />
arti dari rule tersebut adalah, jika ada data yang keluar dari router sendiri(output) yang menuju ke 8.8.8.8(Dst.Address: 8.8.8.8) maka paket akan dibuang secara senyap(action: drop)
  
  <li>Pengujian</li>
<img width="449" height="96" alt="Screenshot 2026-08-11 222342" src="https://github.com/user-attachments/assets/24cf43cf-13f1-40cf-a66a-5c0f4be8afe6" />

<img width="563" height="182" alt="Screenshot 2026-08-11 222407" src="https://github.com/user-attachments/assets/8d7b5396-92d9-4be5-902f-ed940be50a45" />

Paket akan ditolak ketika paket keluar langsung dari router itu sendiri. Jadi ini tidak akan berpengaruh kepada client, karena kalo paket yang dikirim oleh client itu diteruskan oleh router(forward), bukan keluar langsung dari router (output).
  
</ol>

<h2>Kesimpulan</h2>
Firewall pada MikroTik digunakan untuk mengatur dan menyaring lalu lintas data yang ada di jaringan. Pada firewall terdapat beberapa chain, yaitu input untuk mengatur koneksi yang menuju ke router, forward untuk mengatur koneksi yang melewati router, dan output untuk mengatur koneksi yang dibuat oleh router sendiri.

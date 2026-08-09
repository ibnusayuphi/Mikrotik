<h1>Lab 21 Bridging Firewall</h1>

Di lab kali ini kita akan mencoba membatasi akses dari client ke router MikroTik. Jadi client tetap bisa menggunakan internet, tetapi tidak bisa masuk atau mengakses router. Sedangkan untuk admin, akses ke router tetap diperbolehkan. Seperti ini topologinya:

<h2>Langkah-langkah</h2>
Kita akan membatasi akses client menggunakan firewall filter rule
<ol>
  <li>Buat rule untuk mengizinkan admin <b>ip > firewall > filter rule.</b> buat seperti ini:</li>
  <img width="295" height="236" alt="Screenshot 2026-08-09 193218" src="https://github.com/user-attachments/assets/8300a9f8-8ba4-407a-ba94-f5d1fa4c5a60" />

<img width="293" height="201" alt="Screenshot 2026-08-09 193230" src="https://github.com/user-attachments/assets/89d5edad-c44e-4340-b346-73ca3a831898" />

  arti dari rule tersebut adalah, jika ada data yang masuk ke router(chain: input) melalui interface ether2(in.interface: ether2) maka akan diterima(action: accept)
  <li>Kemudian kita buat rule untuk membatasi akses klien. Tambah rule baru <b>klik add(+) buat seperti ini:</b></li>
<img width="295" height="233" alt="Screenshot 2026-08-09 193249" src="https://github.com/user-attachments/assets/b28a5cbc-ec5c-4f61-b5fd-5cfe189c9890" />

<img width="293" height="206" alt="Screenshot 2026-08-09 193308" src="https://github.com/user-attachments/assets/cd724b1b-ebee-43d3-9ac2-65cf5e8341ef" />

   arti dari rule tersebut adalah, jika ada data yang masuk ke router(input) melalui interface bridge-LAN(in.interface: bridge-LAN) maka akan dibuang secara senyap(action: drop)
  <li>Buat interface list untuk admin. interface > interface list > list</li>
<img width="479" height="213" alt="Screenshot 2026-08-09 193334-2" src="https://github.com/user-attachments/assets/ec0b485b-a136-4592-9602-0bd2eb657b53" />

<img width="176" height="134" alt="Screenshot 2026-08-09 193357" src="https://github.com/user-attachments/assets/e8f04d60-cba9-46db-8907-c716f1a83054" />

  <li>Masukan interface ether2 pada list admin yang tadi sudah kita buat</li>
<img width="479" height="213" alt="Screenshot 2026-08-09 193334" src="https://github.com/user-attachments/assets/ad7ebcc8-79e5-4f44-849a-2b0568b32fbe" />

<img width="197" height="165" alt="Screenshot 2026-08-09 193418" src="https://github.com/user-attachments/assets/2e8ddc5f-b417-4f48-ba09-8a4ffd2fa769" />

  
  <li>Setelah itu kita akan membatasi agar hanya admin yang dapat terhubung ke winbox menggunakan MAC Address. tools > MAC server</li>
<img width="310" height="262" alt="Screenshot 2026-08-09 193519-2" src="https://github.com/user-attachments/assets/4ee11b89-6f0f-41da-af4d-5cd3633e7a69" />

<img width="230" height="81" alt="Screenshot 2026-08-09 193535" src="https://github.com/user-attachments/assets/77da839f-bfdd-4d8a-9e2e-d2352186a3db" />
<img width="232" height="83" alt="Screenshot 2026-08-09 193550" src="https://github.com/user-attachments/assets/152dfb2e-33de-4a74-ba45-c2b53acb6d38" />

Dengan ini klien sudah tidak dapat terhubung ke router mikrotik baik menggunakan ip ataupun mac address.
  <li>Pengujian. remote mikrotik menggunakan interface yang digunakan client (ether3, ether4,)atau yang ada pada bridge-LAN</li>
  
<img width="479" height="115" alt="Screenshot 2026-08-09 200114" src="https://github.com/user-attachments/assets/26313d17-90b9-48ef-8295-1cbfd232aded" />

<img width="279" height="115" alt="Screenshot 2026-08-09 200130" src="https://github.com/user-attachments/assets/2cfb6bfd-1b64-44fb-97c8-cf8dc3369e71" />

<img width="482" height="391" alt="Screenshot 2026-08-09 200231" src="https://github.com/user-attachments/assets/da7e4eb5-58aa-432c-8fb0-a2a24f7cf61b" />

Hasilnya client tidak bisa remote ke mikrotik namun tetap terhubung ke internet  
</ol>
<tr>
<h2>Kesimpulan</h2>
Dengan konfigurasi ini, admin masih bisa mengakses dan mengelola router menggunakan MAC maupun IP, sedangkan client tidak bisa masuk ke router, tetapi tetap bisa menggunakan koneksi internet.

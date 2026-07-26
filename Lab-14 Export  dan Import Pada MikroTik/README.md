<h1>Lab 14 Export dan Import Pada MikroTik</h1>
Pada praktikum ini saya mempelajari cara melakukan export dan import konfigurasi pada MikroTik, memahami fungsi masing-masing fitur, serta mengetahui perbedaannya dengan backup dan restore.
<h2>Export</h2>
Export adalah proses menyimpan konfigurasi MikroTik ke dalam sebuah file yang berisi perintah-perintah konfigurasi (CLI). Hasil export berupa file teks (.rsc) sehingga isi konfigurasinya masih bisa dibaca, diedit, maupun dipilih hanya pada bagian tertentu kurang lebih isinya seperti ini:

Di lab sebelumnya kan tidak disarankan jika melakukan backup restore pada versi perangkat atau RouterOs berbeda, nahh alternatifnya kita bisa menggunakan export import.<br>
<h3>Cara melakukan export</h3>
<b>Export seluruh konfigurasi</b>
<ol type=1>
  <li> Buka menu <b>New terminal</b></li>

  <img width="959" height="440" alt="Screenshot 2026-07-26 202500" src="https://github.com/user-attachments/assets/eeaa3ed4-6d65-4bee-a787-c0480c9277d8" />

  <li>Ketikan perintah berikut:<br>
  <b>/export file=(Nama_file)</b> untuk namanya bisa disesuaikan ya</li>

  <img width="466" height="55" alt="Screenshot 2026-07-26 202700" src="https://github.com/user-attachments/assets/27d4d58c-7f66-41de-a1af-ca75becb1dc5" />

  <li>Buka menu files, maka akan muncul file yang sudah kita backup tadi dalam bentuk .rsc</li>

  <img width="383" height="172" alt="Screenshot 2026-07-26 202750" src="https://github.com/user-attachments/assets/7b58ff71-0696-4df9-bc7e-6d28d92f140c" />

  <li>Selanjutnya pindahkan file tersebut ke dalam laptop atau pc kita</li>

  <img width="959" height="505" alt="Screenshot 2026-07-26 202844" src="https://github.com/user-attachments/assets/8cea3f6f-ab58-40ca-a937-507feed2a704" />

</ol>
<b>Export hanya konfigurasi tertentu</b><br>
Misal hanya IP Address:<br>
<b>/ip address export file=ip-address</b><br>

<img width="470" height="49" alt="Screenshot 2026-07-26 203516" src="https://github.com/user-attachments/assets/505542e0-1b62-4a5a-bde1-ed213762d00f" />

Hanya firewall NAT:<br>
<b>/ip firewall nat export file=nat</b><br>

<img width="468" height="50" alt="Screenshot 2026-07-26 203658" src="https://github.com/user-attachments/assets/8c619a04-0924-4b8b-b012-f83ef4d3a794" />

Hanya DHCP Server:<br>
<b>/ip dhcp-server export file=dhcp</b><br>

<img width="467" height="52" alt="Screenshot 2026-07-26 203727" src="https://github.com/user-attachments/assets/5ec5255e-ce2a-4928-b0f8-a3a6e041afcb" />

jangan lupa setiap sudah melakukan export filenya upload ke laptop atau pc masing masing ya.

<h2>Import</h2>
Import adalah proses memasukkan kembali file hasil export (.rsc) ke dalam MikroTik agar konfigurasi yang ada di dalam file tersebut dijalankan oleh RouterOS. Berikut cara melakukan import file<br>
<b>Cara melakukan Import</b>
<ol type=1>
  <li>Buka menu <b>Files > upload</b></li>

  <img width="959" height="434" alt="Screenshot 2026-07-26 195934" src="https://github.com/user-attachments/assets/3e4ceb9d-5da5-46b1-9f4e-9757ff90fcbf" />

  <li>Upload file .rsc ke router.</li>

  <img width="465" height="351" alt="Screenshot 2026-07-26 203853" src="https://github.com/user-attachments/assets/4ccb92dd-8963-42c5-b954-6439882a0e96" />

  <li>Buka menu <b>New Terminal</b></li>

  <img width="959" height="440" alt="Screenshot 2026-07-26 202500" src="https://github.com/user-attachments/assets/3d1e4b83-e4a4-47dd-adb0-570bb980a3ad" />

  <li>Jalankan perintah:<br>
  /import file-name=(nama_file).rsc</li>

  <img width="296" height="53" alt="Screenshot 2026-07-26 204014" src="https://github.com/user-attachments/assets/15b57d46-4b1d-485a-95c1-9857590197bd" />

  <li>Router akan membaca isi file kemudian menjalankan seluruh perintah yang ada di dalamnya.</li>

  <img width="298" height="86" alt="Screenshot 2026-07-26 204040" src="https://github.com/user-attachments/assets/9da1fe77-187e-4422-ac5f-b0ecde13ed6b" />

</ol>
<hr>
<h3>Kesimpulan</h3>
Export adalah proses menyimpan konfigurasi MikroTik ke dalam file .rsc yang berisi perintah CLI sehingga isi filenya dapat dibaca dan diedit. Sebaliknya, import digunakan untuk menjalankan kembali file tersebut agar konfigurasi diterapkan pada router. Berbeda dengan backup yang menyimpan seluruh konfigurasi dalam bentuk data biner, export lebih fleksibel karena dapat menyimpan seluruh maupun sebagian konfigurasi. Oleh karena itu, export dan import sering digunakan untuk dokumentasi, memindahkan konfigurasi, atau menerapkan konfigurasi ke router lain sesuai kebutuhan.

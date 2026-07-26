<h1>Lab 12 Router OS services atau Layanan Router OS</h1>
Pada lab 1 kita telah membahas bagaimana kita bisa mengakses MikroTik dengan berbagai cara bisa menggunakan winbox, ssh, telnet, webfig, itu semua bisa dilakukan karena ada layanan services RouterOs. pada kesempatan kali ini kita akan mempelajari berbagai layanan services yang ada pada RouterOS, fungsi dari masing-masing service, serta cara mengaktifkan, menonaktifkan, dan mengubah konfigurasi service sesuai kebutuhan.<br>
Router MikroTik menjalankan services untuk memudahkan cara user dalam mengakses router atau menggunakan fitur lainnya. Kita bisa lihat services yang dijalankan mikrotik pada menu <b>ip > services</b>

<img width="959" height="502" alt="Screenshot 2026-07-26 184432" src="https://github.com/user-attachments/assets/5145a6c8-97d1-4c4c-8f91-b5cca1974cb6" />


Ada beberapa service yang secara default dijalankan oleh router mikrotik. Berikut detail informasi service router MikroTik dan kegunaannya:
<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>Service</th>
        <th>Port Default</th>
        <th>Fungsi</th>
    </tr>
    <tr>
        <td>Telnet</td>
        <td>23</td>
        <td>Mengakses MikroTik melalui CLI tanpa enkripsi.</td>
    </tr>
    <tr>
        <td>FTP</td>
        <td>21</td>
        <td>Mengirim dan mengambil file dari MikroTik.</td>
    </tr>
    <tr>
        <td>WebFig (WWW)</td>
        <td>80</td>
        <td>Mengelola MikroTik melalui web browser.</td>
    </tr>
    <tr>
        <td>SSH</td>
        <td>22</td>
        <td>Mengakses CLI secara aman karena menggunakan enkripsi.</td>
    </tr>
    <tr>
        <td>Winbox</td>
        <td>8291</td>
        <td>Mengelola MikroTik menggunakan aplikasi Winbox (GUI).</td>
    </tr>
    <tr>
        <td>API</td>
        <td>8728</td>
        <td>Menghubungkan MikroTik dengan aplikasi pihak ketiga.</td>
    </tr>
    <tr>
        <td>API-SSL</td>
        <td>8729</td>
        <td>API dengan koneksi terenkripsi menggunakan SSL/TLS.</td>
    </tr>
</table>

<h3>Mengelola RouterOS services</h3>
Nahh dari sekian banyak service yang disediakan oleh mikrotik apakah semua itu digunakan semuanya? maka dari itu kita bisa menonaktifkan service tersebut. Selain itu kita juga bisa menggganti nomor port dan membatasi alamat ip yang boleh mengakses router pada services tertentu. semua hal ini dilakukan untuk meningkatkan keamanan jaringan pada router kita.
Beberapa hal yang dapat dilakukan antara lain:
<ul>
  <li>Mengubah nomor port.</li>
  <li>Membatasi alamat IP yang boleh mengakses router.</li>
  <li>Mengaktifkan service (Enable).</li>
  <li>Menonaktifkan service (Disable).</li>
</ul>
<h3>Contoh konfigurasi</h3>
kita gunakan topologi berikut:
<ol type=a>
  <li>Remote mikrotik menggunakan winbox
      
<img width="959" height="506" alt="Screenshot 2026-07-26 184538" src="https://github.com/user-attachments/assets/20af7752-5491-40ff-88ae-9b9f7b7c15aa" />

  </li>
  <li>Pergi ke menu <b>ip > services</b>
  
  <img width="959" height="502" alt="Screenshot 2026-07-26 184432" src="https://github.com/user-attachments/assets/01f56a57-8b45-45b7-a83f-a258a16e096e" />

  </li>
  <li>Masuk ke services winbox

  <img width="777" height="502" alt="Screenshot 2026-07-26 184432-" src="https://github.com/user-attachments/assets/385644b1-7e82-4e5e-9251-a613c106eee7" />

  </li>
  <li>Ganti port winbox sesuai kebutuhan, bisa diisi dari 1-65535 semua port itu bisa digunakan dengan catatan tidak menggunakan port yang sudah digunakan aplikasi lain, bisa saja kita menggunakan port yang sudah digunakan namun kedepannya ini bakal menjadi masalah, jadi disarankan untuk menggunakan port yang belum digunakan aplikasi lain. untuk informasi portnya bisa didapatkan<a href="https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers"> di sini.</a> tapi untuk kali ini saya akan menggunakan port 9000 untuk service winbox ini
  
  
<img width="200" height="155" alt="Screenshot 2026-07-26 184628" src="https://github.com/user-attachments/assets/a230db0e-f8ed-469e-854a-eb2ee38c11cd" />

  
  </li>
  <li>Membatasi akses winbox. kita tambahkan <b>available from</b> isi menggunakan ip jaringan lokal. klik apply > ok
  
  <img width="295" height="157" alt="Screenshot 2026-07-26 184652" src="https://github.com/user-attachments/assets/d5e57de8-3287-4173-bbd0-0d101a9231f7" />

  </li>
  <li>Disable services yang tidak digunakan. Jika kita hanya menggunakan service winbox saja untuk meremote kita bisa disable atau nonaktifkan services lain yang tidak digunakan. Gunanya agar router kita menjadi lebih aman.
  
  <img width="673" height="263" alt="Screenshot 2026-07-26 184809" src="https://github.com/user-attachments/assets/ccd80cd7-a6c1-4ebf-ad1e-83381d08daf4" />

  </li>
    <li>Login ulang ke dalam winbox, ketika login ulang tambahkan ":(port) di ujung ip pada tab connect to", dan jangan lupa pastikan ip pc nya sesuai dengan ip yang sudah kita tambahkan tadi di menu available from.

<img width="356" height="127" alt="Screenshot 2026-07-26 191420" src="https://github.com/user-attachments/assets/994ec9bf-a70f-452b-be38-35a42342b0a5" />

<img width="511" height="113" alt="Screenshot 2026-07-26 190411" src="https://github.com/user-attachments/assets/360badca-660e-4788-9011-b001bb6f64c9" />

<img width="959" height="474" alt="Screenshot 2026-07-26 191550" src="https://github.com/user-attachments/assets/e43eeed6-80f1-44df-a616-fd242b99580a" />

</li>
</ol>

<hr>
<h3>Kesimpulan</h3>
RouterOS Services menyediakan berbagai layanan untuk mengakses dan mengelola MikroTik, seperti Winbox, SSH, Telnet, FTP, WebFig, dan API. Pengaturan service yang tepat, seperti mengaktifkan service yang diperlukan, menonaktifkan service yang tidak digunakan, serta mengubah port atau membatasi akses, dapat membantu menjaga keamanan jaringan.

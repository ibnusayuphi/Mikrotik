<h1>Lab 11 Upgrade Router OS, Downgrade Router OS, Package management, extra packages, Manajemen Package</h1>

<h3>A. Upgrade RouterOS</h3>
Upgrade adalah proses memperbarui RouterOS ke versi yang lebih baru. Biasanya dilakukan untuk mendapatkan fitur baru memperbaiki bug ataupun meningkatkan keamanan.
Untuk melakukan upgrade Router OS ini memiliki 2 cara, yaitu cara manual dan cara otomatis. Berikut cara melakukan upgrade Router OS:<br>
<b>1)Upgrade RouterOS secara manual</b><br>
<ol type=a>
  <li>Langkah pertama download terlebih dahulu modul routerOS.<br>
  Kita bisa mendapatkan modul tersebut pada website resmi mikrotik <a href="https://mikrotik.com/download">Klik Di sini.</a> Yang perlu diperhatikan ketika mendownload modul RouterOS, harus sesuai dengan architecture processor dari hardware router. Ada beberapa pilihan architecture, diantaranya ARM, ARM64, MIPSBE, MMIPS, PPC, X86, TILE, SMIPS. Adapun cara melihat architecture pada router, dapat dilihat pada bagian atas pada saat kita melakukan remote menggunakan winbox. Selain architecture ada juga channel, ada beberapa channel yang tersedia diantaranya long term, stable, testing dan development. Setiap channel memiliki fungsinya masing masing.</li>
  <li>Upload modul RouterOS ke dalam router<br>
  masuk ke menu file > upload. lalu pilih modul yang telah di download tadi</li>
  <li>Lakukan soft reboot <b>system > reboot</b></li>
  <li>Setelah hidup kembali, maka versi RouterOS otomatis berubah.</li>
  Untuk upgrade RouterOs secara manual ini kita bebas memilih versi berapa yang kita mau(bisa disesuaikan)
</ol>

<b>2)Upgrade RouterOs secara otomatis</b><br>
Cara ini lebih mudah dibandingkan upgrade secara manual, namun dengan cara ini kita tidak dapat menentukan versi RouterOS, Secara otomotis router akan mencari versi RouterOS terbaru. Adapun cara caranya sebagai berikut:
<ol type=a>
  <li>Pastikan router sudah terhubung ke internet. Untuk caranya bisa dilihat di <a href="https://github.com/ibnusayuphi/Mikrotik/blob/main/Lab-05%20Mengkoneksikan%20MikroTik%20ke%20%20internet/README.md">lab ini.</a></li>
  <li>Buka System > Packages.</li>
  <li>Klik Check for Updates.</li>
  <li>Pilih channel sesuai kebutuhan (Stable, Testing, atau Development).</li>
  <li>Klik Download & Install.</li>
  <li>Router akan melakukan restart secara otomatis.</li>
  <li>Setelah hidup kembali, pastikan versi RouterOS sudah berubah.</li>
</ol>

<h3>B. Downgrade RouterOs</h3>
Downgrade adalah proses mengembalikan RouterOS ke versi yang lebih lama. Biasanya dilakukan apabila versi terbaru mengalami bug, terdapat fitur yang tidak kompatibel, atau konfigurasi tidak berjalan dengan baik setelah upgrade. Untuk caranya kurang lebih sama dengan cara upgrade Routeros secara manual, berikut caranya:
<ol type=a>
  <li>Download versi RouterOS yang diinginkan dari website MikroTik <a href="https://mikrotik.com/download">Klik Di sini.</a></li> 
  <li>Upload file package ke router files > upload kemudian pilih modul yang telah kita download.</li>
  <li>Buka System > Packages > Downgrade.</li>
  <li>Router akan melakukan restart otomatis.</li>
  <li>Router akan menggunakan versi yang sebelumnya diupload.</li>
</ol>

<h3>C. Package Management</h3>
Package Management adalah proses mengelola package yang ada pada RouterOS, seperti Melihat daftar package, mengetahui versi package, Mengaktifkan atau menonaktifkan package tertentu, Menambahkan package baru (Extra Package), downgrade dan upgrade RouterOS, pokoknya semua hal yang berkaitan dengan mengelola package, itu disebut package management. Berikut beberapa contoh caranya:
<ol type=a>
  <li>Melihat daftar dan versi package</li>
  <li>Mengaktifkan package</li>
  <li>Menonaktifkan package</li>
  <li>Menghapus package yang tidak digunakan</li>
</ol>

<h3>D. Extra packages</h3>
Extra Packages adalah package tambahan yang disediakan MikroTik untuk menambahkan fitur tertentu yang belum tersedia pada instalasi RouterOS. Contohnya wireless, user manager, dude, Iot dan package lainnya. Extra Package biasanya diunduh dari website resmi MikroTik, kemudian di-upload ke router dan akan aktif setelah router direstart. Berikut cara lengkap menambahkan extra package ke router:
<ol type=a>
  <li>Download extra packages yang diinginkan dari website MikroTik <a href="https://mikrotik.com/download">Klik Di sini.</a>Kali ini saya akan menambahan package wireless, jadi download yang wireless.</li> 
  <li>Upload file  extra package ke router. files > upload kemudian pilih modul yang telah kita download.</li>
  <li>Lakukan soft reboot <b>system > reboot</b></li>
  <li>Setelah hidup kembali, lihat pada menu system > packages. apakah extra package yang tadi ditambahkan sudah tersedia.</li>
</ol>

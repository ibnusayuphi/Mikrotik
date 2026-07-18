<h1>Lab 11 Upgrade Router OS, Downgrade Router OS, Package management, extra packages, Manajemen Package</h1>

<h3>A. Upgrade Router OS</h3>
Upgrade adalah proses memperbarui RouterOS ke versi yang lebih baru. Biasanya dilakukan untuk mendapatkan fitur baru memperbaiki bug ataupun meningkatkan keamanan.
Untuk melakukan upgrade Router OS ini memiliki 2 cara, yaitu cara manual dan cara otomatis. Berikut cara melakukan upgrade Router OS:<br>
<b>1)Upgrade RouterOS secara manual</b><br>
<ol type=a>
  <li>Langkah pertama download terlebih dahulu modul routerOS.<br>
  Kita bisa mendapatkan modul tersebut pada website resmi mikrotik <a href="https://mikrotik.com/download">Klik Di sini.</a> Yang perlu diperhatikan ketika mendownload modul RouterOS, harus sesuai dengan architecture processor dari hardware router. Ada beberapa pilihan architecture, diantaranya ARM, ARM64, MIPSBE, MMIPS, PPC, X86, TILE, SMIPS. Selain architecture ada juga channel, ada beberapa channel yang tersedia diantaranya long term, stable, testing dan development. Setiap channel memiliki fungsinya masing masing.</li>
  <li>Upload modul RouterOS ke dalam router<br>
  masuk ke menu file > upload. lalu pilih modul yang telah di download tadi</li>
  <li>Lakukan soft reboot <b>system > reboot</b></li>
  <li>Setelah hidup kembali, pastikan versi RouterOS sudah berubah.</li>
</ol>




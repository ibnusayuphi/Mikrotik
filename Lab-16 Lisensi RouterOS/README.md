<h1>Lab 16 Lisensi RouterOS</h1>
Lisensi RouterOS adalah izin resmi yang diberikan MikroTik agar sistem operasi RouterOS dapat digunakan dengan fitur tertentu. Lisensi berfungsi untuk menentukan batas kemampuan RouterOS, seperti jumlah interface wireless yang dapat digunakan, mode wireless yang didukung, hingga fitur-fitur tertentu pada perangkat. Lisensi RouterOS diperlukan ketika menginstal RouterOS pada perangkat PC (x86) atau virtual machine (CHR). Sedangkan jika menggunakan perangkat RouterBOARD MikroTik, lisensi biasanya sudah termasuk saat perangkat dibeli sehingga pengguna tidak perlu membeli lisensi lagi.

<h3>Jenis lisensi RouterOS</h3>
<ol type=1>
<li>Level 0 (Demo / Trial)</li>
Masa Aktif: 24 Jam<br>
Lisensi Level 0 merupakan lisensi percobaan yang diberikan saat RouterOS pertama kali diinstal. Selama masa trial, seluruh fitur RouterOS dapat digunakan. Setelah 24 jam, RouterOS harus diregistrasi menggunakan lisensi resmi agar dapat digunakan kembali.
  <ul>Fitur Utama:
  <li>Semua fitur RouterOS terbuka selama masa trial.</li>
  <li>Cocok untuk mencoba RouterOS sebelum membeli lisensi.</li></ul>
<li>Level 1 (Free)</li>
Masa Aktif: Selamanya<br>
Level 1 adalah lisensi gratis dengan fitur yang sangat terbatas sehingga lebih cocok digunakan untuk belajar.
  <ul>Perbedaan dari Level 0:
  <li>Tidak memiliki batas waktu penggunaan.</li>
  <li>Fitur yang tersedia lebih terbatas.</li></ul>
<ul>Fitur Utama:
  <li>Konfigurasi dasar RouterOS</li>
  <li>Maksimal 1 Queue, 1 Hotspot, dan 1 Tunnel.</li>
  <li>Tidak mendukung Wireless Access Point (AP).</li>
  <li>Tidak mendukung Dynamic Routing.</li></ul>
<li>Level 3</li>
Masa Aktif: Selamanya<br>
Level 3 dirancang untuk perangkat yang berfungsi sebagai Wireless Client (Station/CPE), yaitu perangkat yang menerima koneksi dari Access Point.
<ul>Perbedaan dari Level 1:
<li>Sudah mendukung mode Wireless Client (Station/CPE).</li></ul>
<ul>Fitur Utama:
  <li>Semua fitur pada Level 1.</li>
  <li>Wireless Client (Station/CPE).</li>
  <li>Bridge dan manajemen Ethernet.</li>
  <li>Belum mendukung mode Access Point (AP).</li></ul>
<li>Level 4</li>
Masa Aktif: Selamanya<br>
Level 4 merupakan lisensi yang paling banyak digunakan karena sudah mendukung mode Wireless Access Point (AP) sehingga router dapat membagikan koneksi internet ke banyak perangkat.
<ul>Perbedaan dari Level 3:
<li>Sudah dapat digunakan sebagai Access Point (AP).</li></ul>
<ul>Fitur Utama:
  <li>Semua fitur pada Level 3.
  <li>Wireless Access Point (AP).
  <li>Mendukung hingga 200 Hotspot Active User.
  <li>Cocok digunakan di rumah, sekolah, maupun kantor.</li></ul>
<li>Level 5</li>
Masa Aktif: Selamanya<br>
Level 5 memiliki fitur yang sama dengan Level 4, tetapi mampu menangani jumlah pengguna yang lebih banyak.
<ul>Perbedaan dari Level 4:
  <li>Kapasitas pengguna lebih besar.</li></ul>
<ul>Fitur Utama:
  <li>Semua fitur pada Level 4.</li>
  <li>Mendukung hingga 500 Hotspot Active User.</li></ul>
<li>Level 6</li>
Masa Aktif: Selamanya<br>
Level 6 merupakan lisensi tertinggi pada RouterOS dengan seluruh fitur yang tersedia tanpa batasan utama.
<ul>Perbedaan dari Level 5:
  <li>Tidak memiliki batasan jumlah pengguna.</li></ul>
<ul>Fitur Utama:
  <li>Semua fitur pada Level 5.</li>
  <li>Hotspot Active User Unlimited.</li>
  <li>Cocok digunakan untuk ISP dan jaringan berskala besar.</li></ul>

<b>Ringkasan lisensi RouterOS</b>
<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>Level</th>
        <th>Masa Aktif</th>
        <th>Perbedaan Utama</th>
    </tr>
    <tr>
        <td><b>0</b></td>
        <td>24 Jam</td>
        <td>Trial, seluruh fitur RouterOS dapat digunakan selama masa percobaan.</td>
    </tr>
    <tr>
        <td><b>1</b></td>
        <td>Selamanya</td>
        <td>Lisensi gratis dengan fitur yang sangat terbatas.</td>
    </tr>
    <tr>
        <td><b>3</b></td>
        <td>Selamanya</td>
        <td>Sudah mendukung mode Wireless Client (Station/CPE).</td>
    </tr>
    <tr>
        <td><b>4</b></td>
        <td>Selamanya</td>
        <td>Sudah mendukung mode Wireless Access Point (AP).</td>
    </tr>
    <tr>
        <td><b>5</b></td>
        <td>Selamanya</td>
        <td>Sama seperti Level 4, tetapi kapasitas pengguna lebih besar.</td>
    </tr>
    <tr>
        <td><b>6</b></td>
        <td>Selamanya</td>
        <td>Seluruh fitur tersedia tanpa batasan utama (Unlimited).</td>
    </tr>
</table>

<h3>Cara melihat lisensi RouterOS</h3>
<b>Mengunakan Winbox</b><br>
Buka menu: system > license<br>

<b>Menggunakan terminal</b><br>
ketik: system license print


<hr>
<h3>Kesimpulan</h3>
Lisensi RouterOS merupakan izin resmi yang menentukan fitur dan kemampuan yang dapat digunakan pada sistem operasi RouterOS. Setiap level lisensi memiliki fungsi dan batasan yang berbeda sesuai kebutuhan pengguna. Secara umum, semakin tinggi level lisensi RouterOS, maka semakin banyak fitur dan kapasitas yang dapat digunakan. Oleh karena itu, kita dapat memilih level lisensi sesuai dengan kebutuhan jaringan yang akan dibangun. Pada perangkat RouterBOARD, lisensi umumnya sudah tersedia sejak pembelian, sedangkan pengguna RouterOS pada PC atau CHR perlu mengaktifkan lisensi secara terpisah.

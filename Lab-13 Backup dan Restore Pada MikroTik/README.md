<h1>Lab 13 Backup dan Restore Pada MikroTik</h1>
Pada praktikum ini saya mempelajari cara melakukan backup dan restore konfigurasi pada MikroTik agar konfigurasi yang sudah dibuat dapat disimpan dan dikembalikan kembali jika terjadi kerusakan, kesalahan konfigurasi, atau pergantian perangkat.
<h3>Backup</h3>
Backup adalah proses menyimpan seluruh konfigurasi MikroTik ke dalam sebuah file. File backup ini dapat digunakan untuk mengembalikan konfigurasi router apabila sewaktu waktu router mengalami masalah ataupun menambahkan konfigurasi yang sama di router yang berbeda. Ketika kita mengunakan metode backup pada router, maka seluruh konfigurasi yang ada di router akan di backup semuanya, tidak bisa memilih satu konfigurasi saja. Bentuk file Backup eksistensinya adalah <b>.backup</b>. File <b>.backup</b> itu bukan file teks biasa, isinya berupa data biner sehingga tidak bisa dibaca manusia. Kalau dibuka pakai Notepad biasanya tampilannya jadi karakter acak seperti ini:

Jadi file ini memang dibuat khusus agar hanya bisa diproses oleh RouterOS.<br>
<b>Cara Melakukan Backup</b>
<ol type=1>
  <li>Masuk ke MikroTik menggunakan Winbox.</li>
  <li>Pilih menu <b>Files</b></li>
  <li>Klik tombol <b>Backup</b></li>
  <li>Isi nama file backup (opsional).</li>
  <li>Jika diperlukan, tambahkan password untuk mengamankan file backup.</li>
  <li>Klik Backup.</li>
  <li>File backup akan muncul pada menu Files.</li>
  <li>Simpan file backup tersebut ke komputer sebagai cadangan. bisa dilakukan dengan cara drag and drop</li>
</ol>

<h3>Restore</h3>
Restore adalah proses mengembalikan konfigurasi router menggunakan file backup yang sebelumnya telah dibuat. Dengan restore konfigurasi yang kita buat sebelumya dengan metode backup akan kembali seperti saat backup dibuat. Satu hal penting pastikan file backup sama atau sesuai dengan tipe perangkat dan versi RouterOS yang digunakan agar proses restore berjalan dengan baik. Jika sudah berbeda versi router, disarankan jangan menggunakan backup restore, karena ada kemungkinan malah akan terjadi error. Solusinya adalah dengan menggunakan fitur Export dan Import, yang akan dibahas di lab selanjutnya.<br>
<b>Cara melakukan restore</b>
<ol type=1>
  <li>Masuk ke menu Files</li>
  <li>Upload file .backup ke dalam router. di sini saya akan menggunakan metode drag and drop agar lebih mudah</li>
  <li>Pilih file backup tersebut.</li>
  <li>Klik tombol Restore</li>
  <li>Jika file menggunakan password, masukkan password backup.</li>
  <li>Klik Restore.</li>
  <li>Router akan melakukan restart secara otomatis.</li>
  <li>Setelah router menyala kembali, seluruh konfigurasi akan kembali seperti saat backup dibuat.</li>
</ol>

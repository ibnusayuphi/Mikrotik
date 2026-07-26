<h1>Lab 13 Backup dan Restore Pada MikroTik</h1>
Pada praktikum ini saya mempelajari cara melakukan backup dan restore konfigurasi pada MikroTik agar konfigurasi yang sudah dibuat dapat disimpan dan dikembalikan kembali jika terjadi kerusakan, kesalahan konfigurasi, atau pergantian perangkat.
<h3>Backup</h3>
Backup adalah proses menyimpan seluruh konfigurasi MikroTik ke dalam sebuah file. File backup ini dapat digunakan untuk mengembalikan konfigurasi router apabila sewaktu waktu router mengalami masalah ataupun menambahkan konfigurasi yang sama di router yang berbeda. Ketika kita mengunakan metode backup pada router, maka seluruh konfigurasi yang ada di router akan di backup semuanya, tidak bisa memilih satu konfigurasi saja. Bentuk file Backup eksistensinya adalah <b>.backup</b>. File <b>.backup</b> itu bukan file teks biasa, isinya berupa data biner sehingga tidak bisa dibaca manusia. Kalau dibuka pakai Notepad biasanya tampilannya jadi karakter acak seperti ini:

Jadi file ini memang dibuat khusus agar hanya bisa diproses oleh RouterOS.<br>
<b>Cara Melakukan Backup</b>
<ol type=1>
  <li>Masuk ke MikroTik menggunakan Winbox.</li>

  <img width="959" height="458" alt="Screenshot 2026-07-26 193825" src="https://github.com/user-attachments/assets/4b411e47-5776-4204-a630-287b7a664c7f" />

  <li>Pilih menu <b>Files</b></li>

  <img width="959" height="458" alt="Screenshot 2026-07-26 193825-" src="https://github.com/user-attachments/assets/105a1ab8-22d1-444d-8872-585838fcd46f" />

  <li>Klik tombol <b>Backup</b></li>

  <img width="400" height="280" alt="Screenshot 2026-07-26 193150" src="https://github.com/user-attachments/assets/2e920321-c355-4c80-a082-2922e0d7e63e" />

  <li>Isi nama file backup.</li>

  <img width="215" height="98" alt="Screenshot 2026-07-26 193246" src="https://github.com/user-attachments/assets/0c207cf9-7204-47ce-a44b-4cfb3cd752c8" />

  <li>Jika diperlukan, tambahkan password untuk mengamankan file backup. Jika sudah klik backup</li>

  <img width="214" height="98" alt="Screenshot 2026-07-26 193311" src="https://github.com/user-attachments/assets/33db131c-0806-49d1-85c2-f1c380b541b3" />

  <li>File backup akan muncul pada menu Files.</li>

  <img width="400" height="157" alt="Screenshot 2026-07-26 193350" src="https://github.com/user-attachments/assets/4b42dd86-d75c-44b7-8b59-7ed6ef035ab7" />

  <li>Simpan file backup tersebut ke komputer sebagai cadangan. bisa dilakukan dengan cara drag and drop</li>

  <img width="959" height="503" alt="Screenshot 2026-07-26 193532" src="https://github.com/user-attachments/assets/04f44030-8d18-4098-a64f-9f357b423578" />

</ol>

<h3>Restore</h3>
Restore adalah proses mengembalikan konfigurasi router menggunakan file backup yang sebelumnya telah dibuat. Dengan restore konfigurasi yang kita buat sebelumya dengan metode backup akan kembali seperti saat backup dibuat. Satu hal penting pastikan file backup sama atau sesuai dengan tipe perangkat dan versi RouterOS yang digunakan agar proses restore berjalan dengan baik. Jika sudah berbeda versi router, disarankan jangan menggunakan backup restore, karena ada kemungkinan malah akan terjadi error. Solusinya adalah dengan menggunakan fitur Export dan Import, yang akan dibahas di lab selanjutnya.<br>
<b>Cara melakukan restore</b>
<ol type=1>
  <li>Masuk ke menu Files > Upload</li>

  <img width="959" height="434" alt="Screenshot 2026-07-26 195934" src="https://github.com/user-attachments/assets/9539243b-ed6b-440a-ab64-951c2d61f975" />

  <li>Pilih file backup.</li>

  <img width="466" height="350" alt="Screenshot 2026-07-26 200033" src="https://github.com/user-attachments/assets/207e697b-2fad-413f-ba66-818be4c4ccea" />

  <li>Klik tombol Restore</li>

  <img width="401" height="184" alt="Screenshot 2026-07-26 200054" src="https://github.com/user-attachments/assets/923265d9-46e8-47a6-bed6-455cc500475d" />

  <li>Jika file menggunakan password, masukkan password backup. Kemudian klik restore</li>

  <img width="266" height="96" alt="Screenshot 2026-07-26 200137" src="https://github.com/user-attachments/assets/6236b7fb-a74b-49d6-8874-aea8aede96dd" />
  
Router akan melakukan restart secara otomatis. Setelah router menyala kembali, seluruh konfigurasi akan kembali seperti saat backup dibuat.</li>
</ol>
<hr>
<h3>Kesimpulan</h3>
Backup dan restore merupakan fitur yang digunakan untuk menjaga keamanan konfigurasi pada MikroTik. Backup berfungsi menyimpan seluruh konfigurasi router, sedangkan restore digunakan untuk mengembalikan konfigurasi yang telah disimpan. Metode backup dan restore disarankan untuk melakukannya pada versi perangkat atau routeros yang sama untuk menghindari error. File .backup isinya merupakan kumpulan angka biner.

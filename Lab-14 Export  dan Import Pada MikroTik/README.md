<h1>Lab 14 Export dan Import Pada MikroTik</h1>
Pada praktikum ini saya mempelajari cara melakukan export dan import konfigurasi pada MikroTik, memahami fungsi masing-masing fitur, serta mengetahui perbedaannya dengan backup dan restore.
<h2>Export</h2>
Export adalah proses menyimpan konfigurasi MikroTik ke dalam sebuah file yang berisi perintah-perintah konfigurasi (CLI). Hasil export berupa file teks (.rsc) sehingga isi konfigurasinya masih bisa dibaca, diedit, maupun dipilih hanya pada bagian tertentu kurang lebih isinya seperti ini:

Di lab sebelumnya kan tidak disarankan jika melakukan backup restore pada versi perangkat atau RouterOs berbeda, nahh alternatifnya kita bisa menggunakan export import.<br>
<h3>Cara melakukan export</h3>
<b>Export seluruh konfigurasi</b>
<ol type=1>
  <li> Buka menu <b>New terminal</b></li>
  <li>Ketikan perintah berikut:<br>
  <b>/export file=konfigurasi</b> untuk namanya bisa disesuaikan ya</li>
  <li>Buka menu files, maka akan muncul file yang sudah kita backup tadi dalam bentuk .rsc</li>
  <li>Selanjutnya pindahkan file tersebut ke dalam laptop atau pc kita</li>
</ol>
<b>Export hanya konfigurasi tertentu</b><br>
Misal hanya IP Address:<br>
<b>/ip address export file=ip-address</b>
Hanya firewall NAT:<br>
<b>/ip firewall nat export file=nat</b>
Hanya DHCP Server:<br>
<b>/ip dhcp-server export file=dhcp</b>

jangan lupa setiap sudah melakukan export filenya upload ke laptop atau pc masing masing ya.

<h2>Import</h2>
Import adalah proses memasukkan kembali file hasil export (.rsc) ke dalam MikroTik agar konfigurasi yang ada di dalam file tersebut dijalankan oleh RouterOS. Berikut cara melakukan import file<br>
<b>Cara melakukan Import</b>
<ol type=1>
  <li>Buka menu <b>Files</b></li>
  <li>Upload file .rsc ke router.</li>
  <li>Buka menu <b>New Terminal</b></li>
  <li>Jalankan perintah:<br>
  /import file-name=konfigurasi.rsc</li>
  <li>Router akan membaca isi file kemudian menjalankan seluruh perintah yang ada di dalamnya.</li>
</ol>
<hr>
<h3>Kesimpulan</h3>
Export adalah proses menyimpan konfigurasi MikroTik ke dalam file .rsc yang berisi perintah CLI sehingga isi filenya dapat dibaca dan diedit. Sebaliknya, import digunakan untuk menjalankan kembali file tersebut agar konfigurasi diterapkan pada router. Berbeda dengan backup yang menyimpan seluruh konfigurasi dalam bentuk data biner, export lebih fleksibel karena dapat menyimpan seluruh maupun sebagian konfigurasi. Oleh karena itu, export dan import sering digunakan untuk dokumentasi, memindahkan konfigurasi, atau menerapkan konfigurasi ke router lain sesuai kebutuhan.

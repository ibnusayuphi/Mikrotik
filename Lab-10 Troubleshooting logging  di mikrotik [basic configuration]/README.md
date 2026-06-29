<h1>Lab10. Troubleshooting login di mikrotik [basic configuration]</h1>
Pada praktikum ini saya akan mempelajari beberapa masalah yang sering terjadi pada saat login MikroTik serta cara menanganinya
<hr>
<h3>1. Tidak bisa login ke MikroTik</h3>

<b>Penyebab</b>
  - Kabel LAN belum terhubung.
  - Password atau username salah.
  - Jika menggunakan konfigurasi default jangan remote di ether1.
  - Jika login menggunakan telnet, ssh, ataupun web pastikan menggunakan IP yang satu segmen dengan ether yang akan di remote.

<b>Cara Menangani</b>
  - Pastikan kabel LAN terhubung, lihat indikator lampu port ethernet(harus menyala).
  - Pastikan Password atau username yang dimasukan benar. Perhatikan huruf besar atau kecil maupun tanda lainnya, harus sama.
  - Remote menggunakan selain ether1.
  - Test ping ke MikroTik
  - Coba login menggunakan MAC Address melalui Winbox.
  - Jika sudah buntu, coba lakukan hard reset (tidak disarankan terlalu sering menggunakan hard reset)
<hr>
<h3>2. Tidak bisa akses menggunakan winbox</h3>

<b>Penyebab</b>
  - Kabel LAN belum terhubung.
  - Password atau username salah.
  - Driver "Host Only Adapter" Virtualbox nyala (jika ada)
  - Service Winbox dinonaktifkan.
  - Driver LAN komputer bermasalah.

<b>Cara menangani</b>
  - Pastikan kabel LAN terhubung, lihat indikator lampu port ethernet(harus menyala).
  - Pastikan Password atau username yang dimasukan benar. Perhatikan huruf besar atau kecil maupun tanda lainnya, harus sama.
  - Nonaktifkan terlebih dahulu driver host only adapter virtualbox, karena bisa mengganggu.
  - Pastikan service Winbox aktif pada menu: ip > service

<hr>
<h3>3. Tidak bisa akses menggunakan telnet</h3>

<b>Penyebab</b>
  - Kabel LAN belum terhubung.
  - Password atau username salah.
  - Service Telnet belum aktif
  - Salah memasukan IP Address

<b>Cara menangani</b>
  - Pastikan kabel LAN terhubung, lihat indikator lampu port ethernet(harus menyala).
  - Pastikan Password atau username yang dimasukan benar. Perhatikan huruf besar atau kecil maupun tanda lainnya, harus sama.
  - Pastikan service telnet aktif: ip > service.
  - Pastikan perangkat dapat saling ping.

<hr>
<h3>4. Tidak bisa akses menggunakan SSH</h3>

<b>Penyebab</b>
  - Kabel LAN belum terhubung.
  - Password atau username salah.
  - Service SSH belum aktif
  - Salah memasukan IP Address

<b>Cara menangani</b>
  - Pastikan kabel LAN terhubung, lihat indikator lampu port ethernet(harus menyala).
  - Pastikan Password atau username yang dimasukan benar. Perhatikan huruf besar atau kecil maupun tanda lainnya, harus sama.
  - Pastikan service SSH aktif: ip > service.
  - Pastikan perangkat dapat saling ping.

<hr>
<h3>5. Semua lampu port ethernet menyala</h3><br>
<b>Penyebab</b><br>
Biasanya menandakan RouterBoard mengalami error, gagal melakukan booting, atau terjadi kerusakan pada sistem operasi (RouterOS).

<b>Cara menangani</b>
  - Matikan router kemudian hidupkan kembali.
  - Lepaskan seluruh kabel LAN lalu nyalakan kembali.
  - Jika masih sama, lakukan instal ulang RouterOS menggunakan Netinstall.
  - Jika tetap tidak berhasil, kemungkinan terdapat kerusakan pada hardware.

<hr>
<h3>6. MikroTik selalu restart</h3>

<b>Penyebab</b>
  - Power adaptor tidak stabil.
  - RouterOS mengalami kerusakan.
  - Hardware mengalami kerusakan.

<b>Cara menangani</b>
  - Pastikan adaptor sesuai spesifikasi.
  - Coba gunakan adaptor lain.
  - jika perlu, lakukan reset configuration atau instal ulang RouterOS.

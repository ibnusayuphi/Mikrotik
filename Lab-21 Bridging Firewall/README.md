<h1>Lab 21 Bridging Firewall</h1>

Di lab kali ini kita akan mencoba membatasi akses dari client ke router MikroTik. Jadi client tetap bisa menggunakan internet, tetapi tidak bisa masuk atau mengakses router. Sedangkan untuk admin, akses ke router tetap diperbolehkan. Seperti ini topologinya:

<h2>Langkah-langkah</h2>
Kita akan membatasi akses client menggunakan firewall filter rule
<ol>
  <li>Buat rule untuk mengizinkan admin <b>ip > firewall > filter rule.</b> buat seperti ini:</li>
  arti dari rule tersebut adalah, jika ada data yang masuk ke router(chain: input) melalui interface ether2(in.interface: ether2) maka akan diterima(action: accept)
  <li>Kemudian kita buat rule untuk membatasi akses klien. Tambah rule baru <b>klik add(+) buat seperti ini:</b></li>
   arti dari rule tersebut adalah, jika ada data yang masuk ke router(input) melalui interface bridge-LAN(in.interface: bridge-LAN) maka akan dibuang secara senyap(action: drop)
  <li>Buat interface list untuk admin. interface > interface list > list</li>
  <li>Masukan interface ether2 pada list admin yang tadi sudah kita buat</li>
  <li>Setelah itu kita akan membatasi agar hanya admin yang dapat terhubung ke winbox menggunakan MAC Address. tools > MAC server</li>
  <li>Pengujian. remote mikrotik menggunakan interface yang digunakan client (ether3, ether4,)atau yang ada pada bridge-LAN</li>
</ol>

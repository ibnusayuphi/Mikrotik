# ibnu.github.io
Oke saat ini saya akan memberikan tutorial dasar yaitu tentang cara meremote routerboard. Untuk sebagian orang yang baru kenal dengan mikrotik mungkin hanya tau cara meremote routerboard menggunakan Winbox, tetapi sebenarnya banyak cara untuk meremote routerboard tersebut, yang beberapa akan dibahas di dalam Lab ini. Berikut adalah topologinya:

1. Via Winbox

Yang pertama menggunakan Winbox. WinBox ini berjalan di Port 8291. Untuk mendapatkan WinBox kita bisa download di situs resmi MikroTik yaitu di www.Mikrotik.com/download. Oke langsung aja ke tutorialnya

Buka Winbox.

Klik tab Neighbors lalu refresh.
<img width="1920" height="967" alt="login winbox  2" src="https://github.com/user-attachments/assets/20bdbcb3-32dd-4a60-9d28-b3f55590f9ed" />


Setelah muncul, pilih MAC Address.

"kenapa ga pake ip aja bang?"

karena jika meremote menggunakan IP kemudian kita melakukan konfigurasi IP Address maka secara otomatis Router akan disconnect dari PC.

Login: Admin

Password: (kosongkan saja)

Klik connect.

Jika sudah teremote maka seperti inilah tampilan Winbox.

Menurut saya meremote menggunakan Winbox adalah cara meremote yang paling enak, karena tampilannya yang menarik dan gak ngebosenin, Winbox juga menyediakan Fitur GUI dan juga CLI.

2. Via WebFig

WebFig ini berjalan di Port 80. Jadi dengan menggunakan fitur ini kita bisa meremote melalui Web Browser seperti Chrome.

Buka Browser (disini saya menggunakan chrome)

Masukkan IP dari RouterBoard di web browser

    192.168.88.1 (IP default mikrotik)

Kemudian silahkan login dengan menggunakan 

    User: Admin

    Password: (kosongkan saja jika belum menambahkan password)

Jika sudah berhasil teremote maka seperti inilah tampilannya

3. Via Telnet

Telnet (Telecommunication Network) adalah protokol lama yang digunakan untuk remote login ke perangkat jaringan melalui CLI. Protokol ini berjalan pada port 23. Walaupun masih bisa dipakai untuk belajar, Telnet sudah jarang digunakan di jaringan produksi karena tidak memiliki enkripsi sehingga data mudah disadap. Langsung aja ke caranya

Aktivasi Telnet Client di Windows

Tekan Windows + r, lalu ketik appwiz.cpl

Pilih Turn Windows features on or off

Centang Telnet Client, lalu klik OK

Selanjutnya buka cmd dengan tekan Windows + r, lalu ketik cmd

Kemudian ketikan perintah Telnet 192.168.88.1 (IP default Mikrotik)

Lalu masukan username dan passwordnya

Login as: Admin

Password: (kosongkan saja jika belum menambahkan password)

Jika sudah berhasil teremote maka seperti inilah tampilannya

4. Via SSH

SSH (Secure Shell) adalah protokol jaringan yang digunakan untuk melakukan remote login dengan aman. SSH berjalan pada port 22 secara default. Berbeda dengan Telnet, semua data yang dikirimkan melalui SSH dienkripsi, sehingga username, password, maupun perintah tidak bisa dibaca oleh pihak lain meskipun dilakukan sniffing di jaringan. Karena tingkat keamanannya yang tinggi, SSH menjadi standar utama dalam administrasi jaringan saat ini. Oke langsung aja ke tutorialnya, di sini saya akan menggunakan aplikasi pihak ketiga yaitu putty.

Buka putty

Pilih tab SSH

Ketik IP address 192.168.88.1 (IP default Mikrotik)

Ketik port 22

Lalu Klik Open

Lalu masukan username dan passwordnya

Login as: Admin

Password: (kosongkan saja jika belum menambahkan password)

Jika sudah berhasil teremote maka seperti inilah tampilannya

Oke itu dia beberapa cara untuk meremote Mikrotik. Setiap metode memiliki kelebihan dan kekurangannya masing-masing. Winbox dan WebFig memudahkan pengguna dengan tampilan grafis, sedangkan Telnet dan SSH menggunakan command line interface. Telnet dapat digunakan untuk belajar remote device, tetapi data dikirim tanpa enkripsi sehingga rawan disadap. SSH menawarkan keamanan lebih baik karena seluruh komunikasi dienkripsi.

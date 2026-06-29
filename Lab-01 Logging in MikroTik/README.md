
<h1>Lab1. Logging in MikroTik</h1>
Oke saat ini saya akan memberikan tutorial dasar yaitu tentang cara meremote routerboard. Untuk sebagian orang yang baru kenal dengan mikrotik mungkin hanya tau cara meremote routerboard menggunakan Winbox, tetapi sebenarnya banyak cara untuk meremote routerboard tersebut, yang beberapa akan dibahas di dalam Lab ini. Berikut adalah topologinya:

<img width="1600" height="1131" alt="WhatsApp Image 2026-06-26 at 21 29 13" src="https://github.com/user-attachments/assets/68f5731d-8b1e-4495-b52f-105dec025873" />


1. Via Winbox

Yang pertama menggunakan Winbox. WinBox ini berjalan di Port 8291. Untuk mendapatkan WinBox kita bisa download di situs resmi MikroTik yaitu di www.Mikrotik.com/download. Oke langsung aja ke tutorialnya

Buka Winbox.

<img width="108" height="114" alt="logowinbox" src="https://github.com/user-attachments/assets/2652d197-7cba-49ab-9b95-9815b9db1d1c" />


Klik tab Neighbors lalu refresh.

<img width="1919" height="630" alt="winboxneighbour" src="https://github.com/user-attachments/assets/51e1f571-702d-4261-a710-6bda9fb5cc01" />


Setelah muncul, pilih MAC Address.
<img width="1920" height="475" alt="login winbox  1" src="https://github.com/user-attachments/assets/08853ecb-d3a5-47b4-8113-76e7b7e3a4cd" />

"kenapa ga pake ip aja bang?"

karena jika meremote menggunakan IP kemudian kita melakukan konfigurasi IP Address maka secara otomatis Router akan disconnect dari PC.

Login: Admin

Password: (kosongkan saja)

Klik connect.

Jika sudah teremote maka seperti inilah tampilan Winbox.
<img width="1920" height="967" alt="login winbox  2" src="https://github.com/user-attachments/assets/062fe7a9-ba27-4717-86f1-4a9a3c975eed" />


Menurut saya meremote menggunakan Winbox adalah cara meremote yang paling enak, karena tampilannya yang menarik dan gak ngebosenin, Winbox juga menyediakan Fitur GUI dan juga CLI.

2. Via WebFig

WebFig ini berjalan di Port 80. Jadi dengan menggunakan fitur ini kita bisa meremote melalui Web Browser seperti Chrome.

Buka Browser (disini saya menggunakan chrome)

<img width="99" height="136" alt="Screenshot 2025-08-30 093713" src="https://github.com/user-attachments/assets/935fa7ff-3448-407f-a142-4c9b9b777412" />


Masukkan IP dari RouterBoard di web browser

<img width="1036" height="167" alt="Screenshot 2025-08-30 092823" src="https://github.com/user-attachments/assets/a5415608-1cfd-4e48-b112-a60f3438f7a7" />


    192.168.88.1 (IP default mikrotik)

Kemudian silahkan login dengan menggunakan 

<img width="1908" height="940" alt="login webfig  1" src="https://github.com/user-attachments/assets/4b170aeb-f82e-4497-b587-cc4c6dc5d033" />


    User: Admin

    Password: (kosongkan saja jika belum menambahkan password)

Jika sudah berhasil teremote maka seperti inilah tampilannya

<img width="1892" height="945" alt="login webfig  2" src="https://github.com/user-attachments/assets/f85e5f0b-dc43-40f2-96f4-3e09ee717c2f" />


3. Via Telnet

Telnet (Telecommunication Network) adalah protokol lama yang digunakan untuk remote login ke perangkat jaringan melalui CLI. Protokol ini berjalan pada port 23. Walaupun masih bisa dipakai untuk belajar, Telnet sudah jarang digunakan di jaringan produksi karena tidak memiliki enkripsi sehingga data mudah disadap. Langsung aja ke caranya

Aktivasi Telnet Client di Windows

Tekan Windows + r, lalu ketik appwiz.cpl

<img width="568" height="332" alt="Screenshot 2025-08-30 231633" src="https://github.com/user-attachments/assets/4614ca02-00ef-43a5-820a-cc4d14a3e47a" />


Pilih Turn Windows features on or off

<img width="1175" height="766" alt="telnetaktivasi" src="https://github.com/user-attachments/assets/4c506a36-04cd-44a2-8fc9-e6082b6c90c0" />


Centang Telnet Client, lalu klik OK

<img width="691" height="613" alt="telnetaktivasi2" src="https://github.com/user-attachments/assets/abf72b6e-ee78-43bd-9f63-9a824ca0222a" />


Selanjutnya buka cmd dengan tekan Windows + r, lalu ketik cmd

Kemudian ketikan perintah Telnet 192.168.88.1 (IP default Mikrotik)

<img width="959" height="153" alt="telnetlogin" src="https://github.com/user-attachments/assets/38958a61-7eeb-46ac-ad81-48ac53c84da4" />


Lalu masukan username dan passwordnya

Login as: Admin

Password: (kosongkan saja jika belum menambahkan password)

Jika sudah berhasil teremote maka seperti inilah tampilannya

<img width="1726" height="915" alt="login telnet  2" src="https://github.com/user-attachments/assets/967f4389-a84d-4b29-803a-155a7a1bb1d7" />


4. Via SSH

SSH (Secure Shell) adalah protokol jaringan yang digunakan untuk melakukan remote login dengan aman. SSH berjalan pada port 22 secara default. Berbeda dengan Telnet, semua data yang dikirimkan melalui SSH dienkripsi, sehingga username, password, maupun perintah tidak bisa dibaca oleh pihak lain meskipun dilakukan sniffing di jaringan. Karena tingkat keamanannya yang tinggi, SSH menjadi standar utama dalam administrasi jaringan saat ini. Oke langsung aja ke tutorialnya, di sini saya akan menggunakan aplikasi pihak ketiga yaitu putty.

Buka putty

<img width="960" height="960" alt="PuTTY_Icon" src="https://github.com/user-attachments/assets/b174e2ae-d5b0-4b46-b0fe-ba4f15ae39a8" />


Pilih tab SSH

Ketik IP address 192.168.88.1 (IP default Mikrotik)

Ketik port 22

<img width="680" height="689" alt="login ssh  1" src="https://github.com/user-attachments/assets/18c55d51-f452-46cd-906b-bb524be1ecd1" />


Lalu Klik Open

Lalu masukan username dan passwordnya

Login as: Admin

Password: (kosongkan saja jika belum menambahkan password)


<img width="1918" height="1009" alt="login ssh  2" src="https://github.com/user-attachments/assets/ba2469ca-ad60-4178-91f0-154040b34a44" />


Jika sudah berhasil teremote maka seperti inilah tampilannya

<img width="959" height="437" alt="Screenshot 2026-06-24 134156" src="https://github.com/user-attachments/assets/9d0d88c9-93ca-447c-9123-ecdd9a77b3ed" />


Oke itu dia beberapa cara untuk meremote Mikrotik. Setiap metode memiliki kelebihan dan kekurangannya masing-masing. Winbox dan WebFig memudahkan pengguna dengan tampilan grafis, sedangkan Telnet dan SSH menggunakan command line interface. Telnet dapat digunakan untuk belajar remote device, tetapi data dikirim tanpa enkripsi sehingga rawan disadap. SSH menawarkan keamanan lebih baik karena seluruh komunikasi dienkripsi.

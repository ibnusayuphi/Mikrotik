
<h1>Lab4. Command Line Interfaces (Terminal) pada MikroTik</h1>
Selain mengguanakan winbox, MikroTik juga bisa dikonfigurasi menggunakan mode CLI
CLI atau Command Line Interfaces adalah perintah dalam bentuk teks pada terminal mikrotik.
Router OS dapat dikonfig melalui CLI  menggunakan akses remote via winbox (terminal), putty(ssh), cmd(telnet).
konfigurasi menggunakan CLI sebenarnya masih berhubungan dengan konfigurasi yang biasa dilakukan melalui GUI (Winbox).
Sebagai contoh, ketika ingin menambahkan IP Address melalui Winbox, kita biasanya membuka menu:
IP > Addresses > Add (+)

<img width="959" height="504" alt="Screenshot 2026-06-24 202243" src="https://github.com/user-attachments/assets/795f6953-7fbb-4f7b-a38f-ff180206fdcf" />

Kemudian mengisi IP Address dan memilih interface yang akan digunakan.

Pada CLI, proses yang dilakukan sebenarnya sama, hanya saja dilakukan melalui perintah teks. Menu yang biasanya diklik pada Winbox dituliskan dalam bentuk command. Sebagai contoh:
<br>ip address add address=192.168.100.1/24 interface=ether4

<img width="470" height="30" alt="Screenshot 2026-06-24 202938" src="https://github.com/user-attachments/assets/53ebc9dc-a93b-4359-a7c8-8489d8b3f3f8" />

Dari contoh tersebut dapat dilihat bahwa struktur CLI mengikuti menu yang ada pada Winbox. Karena itu, memahami letak konfigurasi pada GUI akan sangat membantu ketika menggunakan CLI.

<h3>THE POWER OF TAB</h3>

Jika lupa dengan command yang tersedia pada suatu menu, kita dapat menekan tombol Tab sebanyak dua kali. Maka MikroTik akan menampilkan daftar command yang dapat digunakan pada menu tersebut. Seperi ini jika kita menggunakannya

<img width="467" height="199" alt="Screenshot 2026-06-24 203356" src="https://github.com/user-attachments/assets/2ada4bec-ec75-4e2a-a890-e2d0b0b60d7c" />

Dengan fitur ini pengguna tidak perlu menghafal seluruh command


Saat menggunakan CLI, tidak semua perintah harus diketik secara lengkap. MikroTik menyediakan fitur Auto Complete dengan tombol Tab pada keyboard.
Saat menggunakan CLI disarankan untuk membiasakan menggunakan tombol Tab dibanding mengetik seluruh command secara manual. Karena untuk menghindari typo dan melihat apakah menunya tersedia atau tidak

<h3>Beberapa contoh Command di MikroTik</h3>

<b>Menambahkan IP Address</b>
<br>ip address add address=192.168.100.1/24 interface=ether4

<img width="470" height="30" alt="Screenshot 2026-06-24 202938" src="https://github.com/user-attachments/assets/53ebc9dc-a93b-4359-a7c8-8489d8b3f3f8" />


<b>Melihat IP Address yang terdaftar</b>
<br>ip address print

<img width="470" height="74" alt="Screenshot 2026-06-25 171954" src="https://github.com/user-attachments/assets/4adf4f10-5843-4dfc-9e27-da8afd7d9779" />


<b>Mengganti identitas MikroTik</b>
<br>system identity set name=(isi sesuai kemauan)

<img width="469" height="50" alt="Screenshot 2026-06-25 172152" src="https://github.com/user-attachments/assets/da2e9281-925d-4179-9f7b-3b12915dbbf2" />


<b>Menambahkan user dengan hak akses full</b>
<br>user add name=ibnu group=full password=(sesuaikan)

<img width="471" height="58" alt="Screenshot 2026-06-25 172529" src="https://github.com/user-attachments/assets/07f9b0c9-2c30-456f-af1a-d2b0fb20a261" />


<b>Melihat user</b>
<br>user print

<img width="470" height="107" alt="Screenshot 2026-06-25 172555" src="https://github.com/user-attachments/assets/9da1d67b-5412-47b1-af70-2e329da91842" />


<b>Melihat lisensi</b>
<br>system license print

<img width="471" height="88" alt="Screenshot 2026-06-25 172717" src="https://github.com/user-attachments/assets/09f2b6a4-4702-49fa-9b14-ad80cf9720c9" />



<b>Mengganti nama interface</b>
<br>interface set name=(sesuaikan) ether1(isi dengan ether yang mau diganti namanya)

<img width="470" height="62" alt="Screenshot 2026-06-25 172822" src="https://github.com/user-attachments/assets/0af88fbf-4158-4148-974c-728e3af0b455" />


<b>Melihat interface</b>
<br>interface print

<img width="470" height="122" alt="Screenshot 2026-06-25 172911" src="https://github.com/user-attachments/assets/0d2d3535-5a32-4335-8e15-157d3eb168dc" />


<b>Kesimpulan</b>
CLI (Command Line Interface) merupakan cara melakukan konfigurasi MikroTik menggunakan perintah atau command yang diketik langsung pada terminal.


<h1>Lab4. Command Line Interfaces (Terminal) pada MikroTik<h1>
Selain mengguanakan winbox, MikroTik juga bisa dikonfigurasi menggunakan mode CLI
CLI atau Command Line Interfaces adalah perintah dalam bentuk teks pada terminal mikrotik.
Router OS dapat dikonfig melalui CLI  menggunakan akses remote via winbox (terminal), putty(ssh), cmd(telnet).
konfigurasi menggunakan CLI sebenarnya masih berhubungan dengan konfigurasi yang biasa dilakukan melalui GUI (Winbox).
Sebagai contoh, ketika ingin menambahkan IP Address melalui Winbox, kita biasanya membuka menu:
IP > Addresses > Add (+)

<img width="959" height="504" alt="Screenshot 2026-06-24 202243" src="https://github.com/user-attachments/assets/795f6953-7fbb-4f7b-a38f-ff180206fdcf" />

Kemudian mengisi IP Address dan memilih interface yang akan digunakan.

Pada CLI, proses yang dilakukan sebenarnya sama, hanya saja dilakukan melalui perintah teks. Menu yang biasanya diklik pada Winbox dituliskan dalam bentuk command. Sebagai contoh:
ip address add address=192.168.100.1/24 interface=ether4

<img width="470" height="30" alt="Screenshot 2026-06-24 202938" src="https://github.com/user-attachments/assets/53ebc9dc-a93b-4359-a7c8-8489d8b3f3f8" />

Dari contoh tersebut dapat dilihat bahwa struktur CLI mengikuti menu yang ada pada Winbox. Karena itu, memahami letak konfigurasi pada GUI akan sangat membantu ketika menggunakan CLI.

<h1>THE POWER OF TAB</h1>

Jika lupa dengan command yang tersedia pada suatu menu, kita dapat menekan tombol Tab sebanyak dua kali. Maka MikroTik akan menampilkan daftar command yang dapat digunakan pada menu tersebut. Seperi ini jika kita menggunakannya

<img width="467" height="199" alt="Screenshot 2026-06-24 203356" src="https://github.com/user-attachments/assets/2ada4bec-ec75-4e2a-a890-e2d0b0b60d7c" />

Dengan fitur ini pengguna tidak perlu menghafal seluruh command


Saat menggunakan CLI, tidak semua perintah harus diketik secara lengkap. MikroTik menyediakan fitur Auto Complete dengan tombol Tab pada keyboard.
Saat menggunakan CLI disarankan untuk membiasakan menggunakan tombol Tab dibanding mengetik seluruh command secara manual. Karena untuk menghindari typo dan melihat apakah menunya tersedia atau tidak

<h3>Beberapa contoh Command di MikroTik<h3>

<b>Menambahkan IP Address</b>


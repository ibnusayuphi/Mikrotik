
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

<b>Mengubah nama router</b>
/system identity set name=Mikrotik-ibnu

<img width="469" height="50" alt="Screenshot 2026-06-25 172152" src="https://github.com/user-attachments/assets/6f39d184-9256-46a7-82ee-0c742d285eb1" />


<b>Melihat daftar interface</b>
/interface print

<img width="470" height="122" alt="Screenshot 2026-06-25 172911" src="https://github.com/user-attachments/assets/a57e3da7-5ce8-429a-ad01-c7fdefd70083" />


<b>Melihat lisensi</b>
system license print

<img width="471" height="88" alt="Screenshot 2026-06-25 172717" src="https://github.com/user-attachments/assets/f5d2506a-f758-49c5-b0f4-259679cd9a9d" />

<b>Menambahkan user</b>
user add name=ibnu password=1234 group=full

<b>Mengganti password admin</b>
password

<b>Melihat user</b>
user print

<b>Menambahkan IP Address</b>
/ip address add address=192.168.10.1/24 interface=ether2

<b>Melihat IP Address</b>
/ip address print

<b>Menghubungkan internet menggunakan DHCP Client</b>
/ip dhcp-client add interface=ether1 disabled=no

<b>Melihat DHCP Client</b>
/ip dhcp-client print

<b>Menambahkan default route</b>
/ip route add dst-address=0.0.0.0/0 gateway=192.168.1.1 (sesuaikan)

<b>Melihat routing table</b>
/ip route print

<b>Mengatur DNS Server</b>
/ip dns set servers=8.8.8.8,1.1.1.1 allow-remote-requests=yes

<b>Melakukan pengujian koneksi (Ping)</b>
/ping 8.8.8.8

<b>Membuat NAT Masquerade</b>
/ip firewall nat add chain=srcnat out-interface=ether1 action=masquerade

<b>Melihat konfigurasi NAT</b>
/ip firewall nat print

<b>Melihat DHCP Server</b>
/ip dhcp-server print

<b>Melihat daftar DHCP Lease</b>
/ip dhcp-server lease print

<b>Menonaktifkan interface</b>
/interface disable ether2

<b>Mengaktifkan interface</b>
/interface enable ether2

<b>Melihat resource router</b>
/system resource print

<b>Melakukan restart MikroTik</b>
/system reboot

<b>Backup konfigurasi</b>
/export file=backup-config

<b>Reset MikroTik menjadi Blank Configuration</b>
/system reset-configuration no-defaults=yes


<b>Kesimpulan</b>
CLI (Command Line Interface) merupakan cara melakukan konfigurasi MikroTik menggunakan perintah atau command yang diketik langsung pada terminal.

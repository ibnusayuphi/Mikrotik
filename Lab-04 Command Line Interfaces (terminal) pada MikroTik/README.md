
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

<b>Mengubah nama router</b><br>
/system identity set name=Mikrotik-ibnu

<img width="469" height="50" alt="Screenshot 2026-06-25 172152" src="https://github.com/user-attachments/assets/6f39d184-9256-46a7-82ee-0c742d285eb1" />


<b>Melihat daftar interface</b><br>
/interface print<br>

<img width="470" height="122" alt="Screenshot 2026-06-25 172911" src="https://github.com/user-attachments/assets/a57e3da7-5ce8-429a-ad01-c7fdefd70083" />


<b>Melihat lisensi</b><br>
system license print<br>

<img width="471" height="88" alt="Screenshot 2026-06-25 172717" src="https://github.com/user-attachments/assets/f5d2506a-f758-49c5-b0f4-259679cd9a9d" />

<b>Menambahkan user</b><br>
user add name=ibnu password=1234 group=full<br>
<img width="468" height="37" alt="Screenshot 2026-07-14 202951" src="https://github.com/user-attachments/assets/6c2e09f7-7d05-4590-b0d5-bad0a5d0454d" />


<b>Mengganti password admin</b><br>
password<br>

<img width="467" height="65" alt="Screenshot 2026-07-14 203150" src="https://github.com/user-attachments/assets/5b0221dd-e6b2-4258-a256-58419d4260a3" />


<b>Melihat user</b><br>
user print<br>

<img width="467" height="95" alt="Screenshot 2026-07-14 203331" src="https://github.com/user-attachments/assets/e628b713-9a9e-4dd0-bcab-62260cd16f62" />


<b>Menambahkan IP Address</b><br>
/ip address add address=192.168.10.1/24 interface=ether2

<img width="467" height="37" alt="Screenshot 2026-07-14 203805" src="https://github.com/user-attachments/assets/b1b18a33-48fe-43ed-ab36-7f443513f333" />


<b>Melihat IP Address</b><br>
/ip address print

<img width="464" height="65" alt="Screenshot 2026-07-14 203827" src="https://github.com/user-attachments/assets/084c5f80-135d-4c11-a270-5faf713768c7" />


<b>Menambahkan DHCP Client</b><br>
/ip dhcp-client add interface=wlan1 add-default-route=yes use-peer-ntp=yes use-peer-dns=yes disabled=no

<img width="431" height="62" alt="Screenshot 2026-07-14 214843" src="https://github.com/user-attachments/assets/24f5dddf-77fb-4f56-844a-8313552ba925" />


<b>Melihat DHCP Client</b><br>
/ip dhcp-client print 

<img width="469" height="75" alt="Screenshot 2026-07-14 214751" src="https://github.com/user-attachments/assets/286d5fc8-0ad4-4fc3-b191-9b24392c89d2" />


<b>Menambahkan default route</b><br>
/ip route add dst-address=0.0.0.0/0 gateway=(sesuaikan)

<img width="448" height="39" alt="Screenshot 2026-07-14 215651" src="https://github.com/user-attachments/assets/f180653f-7ab8-44a5-a7c5-8703a546df92" />


<b>Melihat routing table</b><br>
/ip route print

<img width="450" height="81" alt="Screenshot 2026-07-14 215713" src="https://github.com/user-attachments/assets/2797de64-6e9d-4f11-a1ae-550c7683e1ff" />


<b>Mengatur DNS Server</b><br>
/ip dns set servers=8.8.8.8,1.1.1.1 allow-remote-requests=yes

<img width="437" height="53" alt="Screenshot 2026-07-14 204908" src="https://github.com/user-attachments/assets/91c75f3a-2d71-42c7-b7ef-d371bd398e39" />


<b>Melakukan pengujian koneksi (Ping)</b><br>
/ping 8.8.8.8

<img width="466" height="127" alt="Screenshot 2026-07-14 220946" src="https://github.com/user-attachments/assets/013b7692-9c37-4745-89cb-8bdcb242a9fb" />


<b>Membuat NAT Masquerade</b><br>
/ip firewall nat add chain=srcnat out-interface=ether1 action=masquerade

<img width="415" height="56" alt="Screenshot 2026-07-14 205027" src="https://github.com/user-attachments/assets/cacf32eb-6fd0-4144-801f-14cf127b2331" />


<b>Melihat konfigurasi NAT</b><br>
/ip firewall nat print

<img width="413" height="64" alt="Screenshot 2026-07-14 205059" src="https://github.com/user-attachments/assets/a9d26f77-1c54-44ff-944f-06b0aa75a653" />


<b>Melihat DHCP Server</b><br>
/ip dhcp-server setup

<img width="413" height="221" alt="Screenshot 2026-07-14 205354" src="https://github.com/user-attachments/assets/e3e1b253-39ed-4222-9b53-82841f8a10de" />


<b>Melihat DHCP Server</b><br>
/ip dhcp-server print

<img width="412" height="77" alt="Screenshot 2026-07-14 205417" src="https://github.com/user-attachments/assets/4dc8883a-6445-4f50-bd6f-0fef16d84a8b" />


<b>Melihat daftar DHCP Lease</b><br>
/ip dhcp-server lease print

<img width="467" height="85" alt="Screenshot 2026-07-14 220400" src="https://github.com/user-attachments/assets/9243da47-bf27-4b67-9eb8-6bac3078539a" />


<b>Menonaktifkan interface</b><br>
/interface disable ether2

<img width="466" height="163" alt="Screenshot 2026-07-14 220531" src="https://github.com/user-attachments/assets/efd741c5-76a4-4527-a8a6-4184123c2601" />


<b>Mengaktifkan interface</b><br>
/interface enable ether2

<img width="466" height="164" alt="Screenshot 2026-07-14 220551" src="https://github.com/user-attachments/assets/0dee6f1d-8cd5-424b-bb54-d85fba36de01" />


<b>Melihat resource router</b><br>
/system resource print

<img width="464" height="236" alt="Screenshot 2026-07-14 220624" src="https://github.com/user-attachments/assets/6f775478-f6a5-488a-9f00-3ca372bbbf6b" />


<b>Melakukan restart MikroTik</b><br>
/system reboot

<img width="415" height="74" alt="Screenshot 2026-07-14 205727" src="https://github.com/user-attachments/assets/bd34ae4f-80eb-4b6e-92e3-4e6ccbb21230" />


<b>Backup konfigurasi</b><br>
/export file=backup-config

<img width="416" height="133" alt="Screenshot 2026-07-14 210228" src="https://github.com/user-attachments/assets/751d02d8-e3c1-4fc0-aac7-f5432a702168" />


<b>Reset MikroTik menjadi Blank Configuration</b>
/system reset-configuration no-defaults=yes

<img width="413" height="57" alt="Screenshot 2026-07-14 210411" src="https://github.com/user-attachments/assets/b87ec125-7134-4f56-b01a-05c41a9b1a25" />


<hr>
<b>Kesimpulan</b><br>
CLI (Command Line Interface) merupakan cara melakukan konfigurasi MikroTik menggunakan perintah atau command yang diketik langsung pada terminal.

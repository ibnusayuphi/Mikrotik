<h1>Lab 17 DHCP-DNS</h1>

<h2>DHCP</h2>
DHCP (Dynamic Host Configuration Protocol) adalah layanan yang berfungsi memberikan konfigurasi jaringan secara otomatis, seperti IP Address, Gateway, DNS Server, dan informasi jaringan lainnya. Dengan DHCP, klien tidak perlu repot menyeting IP Address, Gateway, DNS, dan informasi jaringan lainnya karena ini akan didapatkan secara otomatis dari DHCP. Adapun fungsi lain dari dhcp yaitu mencegah adanya dua IP dalam satu jaringan yang sama (konflik IP). DHCP dibagi menjadi dua jenis, yaitu DHCP Client dan DHCP Server.
<h3>DHCP Client</h3>
DHCP Client digunakan agar MikroTik dapat menerima konfigurasi jaringan secara otomatis dari perangkat lain, seperti modem, router utama, atau ISP.
Dengan DHCP Client, MikroTik akan memperoleh: IP Address, Gateway, DNS Server dan informasi jaringan lainnya, secara otomatis tanpa perlu dikonfigurasi secara manual.
<h4>Cara konfigurasi DHCP Client</h4>
<ol>
  <li>Masuk ke menu ip > DHCP Client</li>
  <li>Klik Add (+) pilih:<br>
  - Interface: ether1 (sesuaikan dengan interface yang terhubung langsung dengan sumber internet)</li>
  <li>Centang pada:
  - Add Default Route
  - Use Peer DNS
  - Use Peer NTP
  Klik Apply lalu OK.</li>

  Dengan konfigurasi ini, MikroTik akan memperoleh IP Address, Gateway, dan DNS secara otomatis.
</ol>

<h3>DHCP Server</h3>
Jika DHCP Client menerima informasi jaringan secara otomatis maka DHCP Server adalah protokol yang membagikan informasi jaringan tersebut. Jadi DHCP Server adalah perangkat atau layanan jaringan yang membagikan alamat IP, subnet mask, dan data jaringan lain secara otomatis kepada perangkat lain. Tanpa layanan ini, Anda harus memasukkan nomor IP satu per satu ke tiap komputer. 
<h4>Cara konfigurasi DHCP Server</h4>
<ol>
  <li>Masuk ke menu ip > DHCP Server</li>
  <li>Klik DHCP Setup, Pilih interface yang akan digunakan untuk DHCP Server. Di sini saya menggunakan ether2. Pastikan di ether2 ini kalian sudah menambahkan ip yaa</li>
  <li>Klik next terus sampai selesai</li>
</ol>

<h3>Cara Kerja DHCP (D.O.R.A)</h3>
Proses komunikasi antara client dan server umumnya dikenal dengan singkatan DORA:
<ol>
  <li>Discover: Perangkat client menyebarkan sinyal (broadcast) mencari server.</li>
  <li>Offer: Server menerima permintaan dan menawarkan alamat IP yang tersedia.</li>
  <li>Request: Client membalas dan meminta alamat IP yang ditawarkan tadi.</li>
  <li>Acknowledgment: Server memberikan alamat IP tersebut beserta durasi pemakaiannya</li>
</ol>

<h2>DNS</h2>
DNS (Domain Name System) adalah layanan yang mengubah nama domain menjadi IP Address. Sebagai contoh, ketika kita membuka: <b>www.google.com</b> Router akan meminta bantuan DNS untuk mencari alamat IP dari server Google. Tanpa DNS, kita hanya bisa mengakses website menggunakan alamat IP.

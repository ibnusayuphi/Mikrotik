<h1>Lab9. IP Publik vs IP Private<h1>

<h3>Pengertian IP Address</h3>
IP Address adalah alamat yang dimiliki setiap perangkat di dalam jaringan. Alamat ini digunakan agar setiap perangkat bisa saling mengenali dan berkomunikasi. Ibaratnya IP Address ini adalah tanda pengenal atau nama.
Secara umum, IP Address dibagi menjadi dua jenis, yaitu IP Public dan IP Private.
<hr>
<h3>IP Public</h3>
IP Public adalah IP Address yang digunakan agar sebuah perangkat atau jaringan bisa terhubung ke internet.
Biasanya IP Public diberikan oleh ISP (Internet Service Provider). Tidak ada dua perangkat yang memiliki ip public yang sama. Contoh IP Public:<br>
- IP Infrastruktur Global: 8.8.8.8 (Google Public DNS) dan 1.1.1.1 (Cloudflare DNS).<br>
- IP Router/Modem: 36.153.137.60 atau 103.255.240.12 (contoh IP yang diberikan oleh Provider/ISP di Indonesia)<br>
<hr>
<h3>IP Private</h3><br>
IP Private adalah IP Address yang digunakan di jaringan lokal, misalnya di rumah, sekolah, atau kantor.
IP ini tidak bisa langsung digunakan untuk mengakses internet karena hanya berlaku di jaringan lokal saja. Oleh karena itu, IP Private biasanya digunakan pada perangkat seperti laptop, komputer, printer, atau HP yang terhubung ke router. Rentang IP private yaitu:<br>
    - 10.0.0.0 - 10.255.255.255<br>
    - 172.16.0.0 - 172.31.255.255<br>
    - 192.168.0.0 - 192.168.255.255<br>
<b>Contohnya</b><br>
192.168.100.1<br>
172.16.1.0<br>
10.10.10.1<br>
<hr>

<h3>Perbedaan IP Public dan IP Private</h3>

<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>IP Private</th>
        <th>IP Public</th>
    </tr>
    <tr>
        <td>Digunakan di jaringan lokal (LAN).</td>
        <td>Digunakan untuk terhubung ke internet.</td>
    </tr>
    <tr>
        <td>Tidak bisa diakses langsung dari internet.</td>
        <td>Dapat diakses melalui internet.</td>
    </tr>
    <tr>
        <td>Bebas digunakan oleh siapa saja.</td>
        <td>Diberikan oleh ISP.</td>
    </tr>
    <tr>
        <td>Bisa digunakan berulang pada jaringan yang berbeda.</td>
        <td>Harus berbeda di seluruh jaringan internet.</td>
    </tr>
    <tr>
        <td>Contoh: 192.168.100.1, 10.10.10.1, 172.16.1.1</td>
        <td>Contoh: 36.153.137.60, 103.255.240.12, 8.8.8.8, 1.1.1.1</td>
    </tr>
</table>

<hr>
<h3>Kesimpulan</h3>
Dari praktikum ini saya memahami bahwa IP Private digunakan untuk komunikasi di dalam jaringan lokal, sedangkan IP Public digunakan agar sebuah jaringan bisa terhubung ke internet. Keduanya memiliki fungsi yang berbeda, namun saling berhubungan agar proses komunikasi data dapat berjalan dengan baik.

<h1>Lab 25  Firewall-chain Forward</h1>
Pada  lab kali ini kita akan mencoba membatasi akses klien menggunakan chain forward. Berikut topologinya:

Jadi pada topologi ini klien hany bisa mengakses web mikrotik.com dan tidak akan bisa mengakses web yang lain.
<h2>Langkah konfigurasi</h2>
<ol>
  <li>Pastikan Mikrotik sudah dikonfigurasikan sebagai internet gateway</li>
  <li>Tambahkan address list untuk website yang akan kita izinkan untuk diakses klien</li>
  <img width="254" height="163" alt="Screenshot 2026-08-16 205154" src="https://github.com/user-attachments/assets/05162138-3bc2-4e98-a175-aa17a7012bdb" />

<img width="679" height="280" alt="Screenshot 2026-08-16 205207" src="https://github.com/user-attachments/assets/3f462028-ade7-4467-b35d-163d974edd06" />

  <li>Buat rule firewall untuk membatasi akses client. Di sini kita akan membuat 2 rule, yang pertama untuk protocol tcp dan yang kedua untuk protocol udp. kenapa kita membuat dua rule seperti ini? karena di beberapa browser juga bisa menggunakan udp, jadi dengan membuat 2 rule ini akan lebih efektif.</li>
  <ul>
    <li>Rule pertama</li>
    <img width="294" height="199" alt="Screenshot 2026-08-16 205327" src="https://github.com/user-attachments/assets/8ef3eda9-a6f5-4164-8870-0ef5abf0128e" />

<img width="294" height="94" alt="Screenshot 2026-08-16 205459" src="https://github.com/user-attachments/assets/76d7622f-f6bc-4276-922a-62877a5aec4e" />

<img width="293" height="128" alt="Screenshot 2026-08-16 205349" src="https://github.com/user-attachments/assets/689b3867-2787-4503-b5f8-eab3fb110221" />

   <li>Rule kedua</li>
   <img width="293" height="200" alt="Screenshot 2026-08-16 205406" src="https://github.com/user-attachments/assets/1ffb48b6-32d2-4d58-a0e4-e1a1cef07b18" />

<img width="294" height="94" alt="Screenshot 2026-08-16 205459" src="https://github.com/user-attachments/assets/75ee6236-5621-42d2-aee1-6a045699b193" />

<img width="292" height="98" alt="Screenshot 2026-08-16 205433" src="https://github.com/user-attachments/assets/2dcfeb5e-bae5-4658-a88e-11b10712d49e" />

  </ul>
  <li>pengujian</li>
</ol>

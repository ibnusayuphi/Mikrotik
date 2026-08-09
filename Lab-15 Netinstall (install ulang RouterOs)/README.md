<h1>Lab 15 Netinstall (Install ulang RouterOs)</h1>

Netinstall adalah software dari MikroTik yang digunakan untuk menginstal ulang RouterOS pada router MikroTik. Netinstall biasanya digunakan ketika: RouterOS mengalami error, Router bermasalah dan perlu di install ulang. Netinstall bisa didapatkan di situ resmi <a href="https://mikrotik.com/download/tools">mikrotik.com</a>

<h2>Install ulang RouterOS pada RB951ui-2HND</h2>
Sebelum melakukan install ulang pastikan sudah memiliki apa yang dibutuhkan yaitu: Software Netinstall dan file RouterOS yang ingin kita install, pastikan architecturenya sesuai dengan RouterBoard yang akan di install ulang. Pada RB951ui-2HND ini menggunakan architecture mipsbe, maka kita download file RouterOS dengan architecture mipsbe.
<ol>
  <li>Masuk ke netinstall</li>
  <img width="511" height="355" alt="Screenshot 2026-08-07 135722" src="https://github.com/user-attachments/assets/f9af2c23-dfe0-4931-8418-b480d1161fee" />

  <li>Aktifkan dan isi net booting dengan ip berikut.</li>

<img width="304" height="132" alt="Screenshot 2026-08-08 120941" src="https://github.com/user-attachments/assets/05a62516-7c27-4eb5-af49-40c0e9cdd3e8" />

  
  <li>Ubah ip pada laptop atau pc kita juga menggunakan ip yang satu network dengan ip net booting yang telah kita masukan tadi.</li>
<img width="298" height="340" alt="Screenshot 2026-08-08 144211" src="https://github.com/user-attachments/assets/c21204fd-2b7a-4c8b-a469-c8f5fc68f218" />

  
  <li>Untuk melakukan Install ulang, kita harus terhubung ke mikrotik melalui port ether1.</li>
  <li>Lakukan hard reset, tekan tombol sedikit lebih lama dari biasanya.</li>
  <li>Mikrotik akan masuk ke mode boot. Dan akan perangkatnya akan langsung terbaca pada netinstall.</li>
<img width="511" height="356" alt="Screenshot 2026-08-09 212323" src="https://github.com/user-attachments/assets/b01259da-e3b9-43ae-b2cf-76fb63368fd4" />

  
 <li>Kalau MikroTik sudah muncul di Netinstall, pilih perangkat tersebut. Kemudian klik browse, dan pilih folder yang berisi file RouterOS. Kalo saya menyimpannya pada folder download</li>
 <img width="514" height="355" alt="Screenshot 2026-08-09 212344-2" src="https://github.com/user-attachments/assets/757f6d99-4964-4f38-acc8-3eddda8b7c26" />

<img width="238" height="238" alt="Screenshot 2026-08-08 121419" src="https://github.com/user-attachments/assets/f2f15057-8a87-446e-88cd-ce11a3f9dfb3" />

 <li>Setelah package muncul, pilih versi RouterOS yang ingin digunakan.</li>
  <img width="511" height="354" alt="Screenshot 2026-08-09 212359" src="https://github.com/user-attachments/assets/0f93e2ad-70bd-46b5-94d7-19f6eb4495de" />

  <li>Kemudian klik install.</li>
  <img width="511" height="354" alt="Screenshot 2026-08-09 212359-2" src="https://github.com/user-attachments/assets/ef5abf54-574b-4619-9bb9-42d743dbb916" />

  <li>Ketika sudah selesai Router akan melakukan reboot otomatis</li>
   <li>Install ulang RouterOs sudah berhasil, langsung kita coba remote menggunakan winbox</li>
<img width="479" height="154" alt="Screenshot 2026-08-09 212925" src="https://github.com/user-attachments/assets/11c1df53-692e-47f9-99a6-fbb6b8e78716" />
<img width="274" height="140" alt="Screenshot 2026-08-09 213028" src="https://github.com/user-attachments/assets/0a1a44cb-3f40-4c46-be41-6e3f63ab416b" />

Saat pertama kali install ulang package yang terinstall hanya routeros saja. Kita bisa tambahkan package yang lainnya.

   
</ol>

<h2>Insatll ulang RouterOS pada hAP lite</h2>
Untuk melakukan install ulang pada router ini caranya sama seperti pada RB951ui-2HND, namun yang membedakannya hanya architecturenya saja. pada versi hAP lite architecturenya menggunakan smips. maka dari itu file RouterOS yang kita butuhkan juga berbeda dengan yang sebelumnya.
<ol>
 <li>Masuk ke netinstall</li>
  
 <img width="511" height="355" alt="Screenshot 2026-08-07 135722" src="https://github.com/user-attachments/assets/eaf37cfa-9c1a-4654-9d91-78099da6c7a0" />

  <li>Aktifkan dan isi net booting dengan ip berikut.</li>
  
  <img width="304" height="132" alt="Screenshot 2026-08-08 120941" src="https://github.com/user-attachments/assets/aff25b46-c1c6-41fe-a698-6c9ffc914f2f" />

  <li>Ubah ip pada laptop atau pc kita juga menggunakan ip yang satu network dengan ip net booting yang telah kita masukan tadi.</li>
  
  <img width="298" height="340" alt="Screenshot 2026-08-08 144211" src="https://github.com/user-attachments/assets/400e8b0e-31fa-46db-a879-c48e2dd3dd0f" />

  <li>Hubungkan laptop atau pc dengan router melalui port ether1.</li>
  <li>Lakukan hard reset, tekan tombol sedikit lebih lama dari biasanya.</li>
  <li>Mikrotik akan masuk ke mode boot. Dan akan perangkatnya akan langsung terbaca pada netinstall.</li>
 <img width="514" height="356" alt="Screenshot 2026-08-08 121402" src="https://github.com/user-attachments/assets/d8090b3d-a3c0-4a33-afaf-6243e3e3851e" />

 
  <li>Kalau MikroTik sudah muncul di Netinstall, pilih perangkat tersebut. Kemudian klik browse, dan pilih folder yang berisi file RouterOS. Kalo saya menyimpannya pada folder download</li>
    
<img width="514" height="356" alt="Screenshot 2026-08-08 121402-2" src="https://github.com/user-attachments/assets/15baf458-68a4-4172-81ac-3eaf276f1d11" />
<img width="238" height="238" alt="Screenshot 2026-08-08 121419" src="https://github.com/user-attachments/assets/d442564d-e45e-4c2b-be75-5741bc333604" />

  <li>Setelah package muncul, pilih versi RouterOS yang ingin digunakan.</li>
  
<img width="512" height="356" alt="Screenshot 2026-08-08 121439" src="https://github.com/user-attachments/assets/d9377bcd-b646-4eb9-aced-fbd5af2c0e60" />

  
  <li>Kemudian klik install.</li>
  
<img width="512" height="356" alt="Screenshot 2026-08-08 121439-2" src="https://github.com/user-attachments/assets/fa14ac0a-13ee-42ab-9021-a22c43cc6ef4" />
  
  <li>Ketika proses instalasi sudah selesai maka Router akan melakukan reboot otomatis</li>
  
<img width="514" height="355" alt="Screenshot 2026-08-08 121605" src="https://github.com/user-attachments/assets/04d22fbd-3ea9-43d8-8219-119345126aaa" />

  <li>Install ulang RouterOs sudah berhasil, langsung kita coba remote menggunakan winbox</li>
  <img width="479" height="154" alt="Screenshot 2026-08-08 121631" src="https://github.com/user-attachments/assets/4a893ec0-967f-488e-a78f-eb1f6577415c" />
  
<img width="270" height="140" alt="Screenshot 2026-08-08 122316" src="https://github.com/user-attachments/assets/86fa06de-6ac6-4a9d-b0a5-269e9773fb0e" />

Saat pertama kali install ulang package yang terinstall hanya routeros saja. Kita bisa tambahkan package yang lainnya.

</ol>

<h2>Kesimpulan</h2>
Netinstall adalah software yang digunakan untuk melakukan install ulang RouterOS pada MikroTik. Netinstall biasanya digunakan ketika router mengalami masalah. Dalam prosesnya kita perlu menyiapkan aplikasi Netinstall dan RouterOS yang sesuai dengan arsitektur router.

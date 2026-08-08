<h1>Lab 15 Netinstall (Install ulang RouterOs)</h1>

Netinstall adalah software dari MikroTik yang digunakan untuk menginstal ulang RouterOS pada router MikroTik. Netinstall biasanya digunakan ketika: RouterOS mengalami error, Router bermasalah dan perlu di install ulang. Netinstall bisa didapatkan di situ resmi <a href="https://mikrotik.com/download/tools">mikrotik.com</a>

<h2>Install ulang RouterOS pada RB951ui-2HND</h2>
Sebelum melakukan install ulang pastikan sudah memiliki apa yang dibutuhkan yaitu: Software Netinstall dan file RouterOS yang ingin kita install, pastikan architecturenya sesuai dengan RouterBoard yang akan di install ulang. Pada RB951ui-2HND ini menggunakan architecture mipsbe, maka kita download file RouterOS dengan architecture mipsbe.
<ol>
  <li>Masuk ke netinstall</li>
  <li>Isi net booting dengan ip berikut.</li>
  <li>Ubah ip pada laptop atau pc kita juga menggunakan ip yang satu network dengan ip net booting yang telah kita masukan tadi.</li>
  <li>Untuk melakukan Install ulang, kita harus terhubung ke mikrotik melalui port ether1.</li>
  <li>Lakukan hard reset, tekan tombol sedikit lebih lama dari biasanya.</li>
  <li>Mikrotik akan masuk ke mode boot. Dan akan perangkatnya akan langsung terbaca pada netinstall.</li>
  <li>Klik pada Router kita.</li>
  <li>Kemudian klik browse untuk mengarahkan pada folder mana kita menyimpan file RouterOS. Di sini saya menyimpannya pada folder download. Netinstall akan otomatis memilih file yang sesuai.
  <li>Klik pada file RouterOS yang sudah kita download sebelumnya.</li>
  <li>Kemudian klik install.</li>
  <li>Ketika sudah selesai Router akan melakukan reboot otomatis</li>
  <li>Setelah proses reboot selesai kita akan mencoba remote menggunakan winbox</li>
</ol>

<h2>Insatll ulang RouterOS pada hAP lite</h2>
Untuk melakukan install ulang pada router ini caranya sama seperti pada RB951ui-2HND, namun yang membedakannya hanya architecturenya saja. pada versi hAP lite architecturenya menggunakan smpips. maka dari itu file RouterOS yang kita butuhkan juga berbeda dengan yang sebelumnya.

 <li>Masuk ke netinstall</li>
 <img width="511" height="355" alt="Screenshot 2026-08-07 135722" src="https://github.com/user-attachments/assets/eaf37cfa-9c1a-4654-9d91-78099da6c7a0" />

  <li>Aktifkan dan isi net booting dengan ip berikut.</li>
  <img width="304" height="132" alt="Screenshot 2026-08-08 120941" src="https://github.com/user-attachments/assets/aff25b46-c1c6-41fe-a698-6c9ffc914f2f" />

  <li>Ubah ip pada laptop atau pc kita juga menggunakan ip yang satu network dengan ip net booting yang telah kita masukan tadi.</li>
  <img width="298" height="340" alt="Screenshot 2026-08-08 144211" src="https://github.com/user-attachments/assets/400e8b0e-31fa-46db-a879-c48e2dd3dd0f" />

  <li>Hubungkan laptop atau pc dengan router melalui port ether1.</li>
  <li>Lakukan hard reset, tekan tombol sedikit lebih lama dari biasanya.</li>
  <li>Mikrotik akan masuk ke mode boot. Dan akan perangkatnya akan langsung terbaca pada netinstall.</li>
 
 
  <li>Kalau MikroTik sudah muncul di Netinstall, pilih perangkat tersebut. Kemudian klik browse, dan pilih folder yang berisi file RouterOS. Kalo saya menyimpannya pada folder download
  <li>Klik pada file RouterOS yang sudah kita download sebelumnya.</li>
  <li>Kemudian klik install.</li>
  <li>Ketika sudah selesai Router akan melakukan reboot otomatis</li>
  <li>Setelah proses reboot selesai kita akan mencoba remote menggunakan winbox</li>

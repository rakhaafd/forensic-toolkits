# ForenSeek - Forensic Toolkit CTF



![image](https://github.com/user-attachments/assets/e64fe54b-09c4-42a5-9fa9-22ee6d3d8321)



Repo ini adalah kumpulan script untuk instalasi tools yang digunakan dalam kategori forensic pada kompetisi Capture The Flag (CTF). Tools yang ada bertujuan untuk membantu analisis forensik digital, seperti memeriksa file, metadata, dan data yang tersembunyi.

## Fitur Utama

- **Instalasi otomatis dengan konfirmasi:** Setiap tool memiliki opsi konfirmasi (`y/n`) untuk melanjutkan instalasi, memberikan kontrol penuh kepada pengguna.
- **Melihat daftar tools beserta deskripsi singkat:** Program ini juga memiliki fitur untuk melihat tools apa saja yang terdaftar beserta deskripsi singkat mengenai kegunaan tools tersebut.
- **Dukungan berbagai tools:** Tools yang terintegrasi mencakup berbagai jenis analisis forensik, termasuk pemeriksaan gambar, metadata, pemulihan data, dan lainnya.
- **Dirancang untuk CTF:** Tools ini telah dipilih dan dikustomisasi untuk digunakan dalam lingkungan CTF.

## Persyaratan

- Sistem operasi berbasis Linux Ubuntu/Debian (dapat digunakan pada WSL untuk pengguna Windows).

## Note📝

- Kalau terjadi error saat penginstalannya, lakukan ```cat forensic_toolkits.sh``` kemudian cari tools apa yang ingin kalian install, dan copy paste command nya di terminal.

## Instalasi

```bash
git clone https://github.com/rakhaafd/forensic-toolkits.git
cd forensic-toolkits
chmod +x forensic_toolkits.sh
./forensic_toolkits.sh

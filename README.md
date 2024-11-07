# CTF Forensic Tools

Repo ini adalah kumpulan script untuk instalasi tools yang digunakan dalam kategori forensic pada kompetisi Capture The Flag (CTF). Tools yang ada bertujuan untuk membantu analisis forensik digital, seperti memeriksa file, metadata, dan data yang tersembunyi.

## Fitur Utama

- **Instalasi otomatis dengan konfirmasi:** Setiap tool memiliki opsi konfirmasi (`y/n`) untuk melanjutkan instalasi, memberikan kontrol penuh kepada pengguna.
- **Dukungan berbagai tools:** Tools yang terintegrasi mencakup berbagai jenis analisis forensik, termasuk pemeriksaan gambar, metadata, pemulihan data, dan lainnya.
- **Dirancang untuk CTF:** Tools ini telah dipilih dan dikustomisasi untuk digunakan dalam lingkungan CTF.

## Persyaratan

- Sistem operasi berbasis Linux (dapat digunakan pada WSL untuk pengguna Windows).
- Python dan `pip` untuk menginstal dependencies yang tercantum di `requirements.txt`.

## Instalasi

```bash
git clone https://github.com/rakhaafd/forensic-toolkits.git
cd forensic-toolkits
chmod +x forensic_toolkits.sh
./forensic_toolkits.sh

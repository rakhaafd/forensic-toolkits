#!/bin/bash

# Banner
echo ""
echo "======================================="
echo "  _____                    ____            _    "
echo " |  ___|__  _ __ ___ _ __ / ___|  ___  ___| | __"
echo " | |_ / _ \| '__/ _ \ '_ \\\\___ \ / _ \/ _ \ |/ /"
echo " |  _| (_) | | |  __/ | | |___) |  __/  __/   < "
echo " |_|  \___/|_|  \___|_| |_|____/ \___|\___|_|\_\\"
echo "                                                 "
echo "       Forensic Toolkits by Raku"
echo ""
echo "======================================="
echo ""

# Daftar tools dan deskripsi singkat
show_tools_usage() {
    echo ""
    echo "Daftar Tools dan Deskripsi Singkat:"
    echo ""
    echo "-------------------------------------"
    echo ""
    echo "1. exiftool     - Untuk melihat metadata dari file."
    echo "2. strings      - Menemukan string teks dalam file."
    echo "3. binwalk      - Analisis data tersembunyi dalam file."
    echo "4. zsteg        - Deteksi data tersembunyi pada file PNG."
    echo "5. steghide     - Menyembunyikan atau membuka data dalam media."
    echo "6. stegcracker  - Bruteforce password pada steghide."
    echo "7. stegsolve    - Analisis visual gambar steganografi."
    echo "8. stegseek     - Menemukan password untuk gambar steganografi."
    echo "9. zbarimg      - Ekstraksi data dari kode QR."
    echo "10. foremost    - Ekstraksi file yang dihapus dari image disk."
    echo "11. john        - Cracking password dari hash."
    echo "12. sstv        - Decode gambar Slow Scan Television (SSTV)."
    echo "13. ffmpeg      - Konversi dan manipulasi media."
    echo "14. audacity    - Editor audio dengan antarmuka GUI."
    echo "15. imgconceal  - Menyembunyikan pesan dalam gambar."
    echo ""
    echo "-------------------------------------"
    echo ""
    show_main_menu
}

# Fungsi untuk memulai instalasi
start_install() {
    echo ""
    echo "Starting Installation..."
    
    install_tool() {
        echo "Installing $1..."
        eval "$2"
        if [ $? -ne 0 ]; then
            echo "Failed to install $1."
            exit 1
        fi
        echo "$1 installed successfully."
    }

    prompt_install() {
        read -p "Do you want to install $1? (y/n): " choice
        if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
            install_tool "$1" "$2"
        else
            echo "Skipping $1 installation."
        fi
    }

    # exiftool
    prompt_install "exiftool" "sudo apt install -y exiftool"
    # strings
    prompt_install "strings" "sudo apt install -y binutils"
    # binwalk
    prompt_install "binwalk" "sudo apt install -y binwalk"
    # zsteg
    prompt_install "zsteg" "sudo apt install -y ruby-full && sudo gem install zsteg"
    # steghide
    prompt_install "steghide" "sudo apt install -y steghide"
    # stegcracker
    prompt_install "stegcracker" "sudo pip3 install stegcracker"
    # stegsolve
    prompt_install "stegsolve" "sudo apt install -y default-jre && wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar && chmod +x stegsolve.jar && mkdir -p ~/bin && mv stegsolve.jar ~/bin/ && echo \"alias stegsolve='cd ~/bin && java -jar stegsolve.jar'\" >> ~/.bashrc && source ~/.bashrc"
    # stegseek
    prompt_install "stegseek" "sudo apt install wget && wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb && sudo dpkg -i stegseek_0.6-1.deb"
    # zbarimg
    prompt_install "zbarimg" "sudo apt install -y zbar-tools"
    # foremost
    prompt_install "foremost" "sudo apt install -y foremost"
    # john
    prompt_install "john" "sudo apt install -y john"
    # sstv
    prompt_install "sstv" "sudo apt install python3-setuptools -y && git clone https://github.com/colaclanth/sstv.git && cd sstv && sudo apt install libsndfile1 -y && sudo python3 setup.py install"
    # ffmpeg
    prompt_install "ffmpeg" "sudo apt install -y ffmpeg"
    # audacity
    prompt_install "audacity" "sudo apt install -y audacity"
    # imgconceal
    prompt_install "imgconceal" "cd ~ && git clone https://github.com/tbpaolini/imgconceal/releases/download/v1.0.4/imgconceal && chmod +x imgconceal"

    echo "All selected tools have been installed."
    show_main_menu
}

# Menampilkan menu utama
show_main_menu() {
    echo "Option:"
    echo ""
    echo "1. Start Install"
    echo "2. See All Tools"
    echo "3. Exit"
    echo ""
    read -p "Enter Option (1/2/3): " option

    case $option in
        1) start_install ;;
        2) show_tools_usage ;;
        3) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Exiting..."; exit 1 ;;
    esac
}

# Menjalankan menu utama
show_main_menu

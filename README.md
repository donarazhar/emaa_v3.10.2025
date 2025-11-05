EMAA v3.10.2025 

## Fitur Utama
- Modul pengguna: pendaftaran, login, profil
- Modul manajemen aktivitas inti
- Dashboard admin untuk supervisi dan laporan
- Sistem role & permission (misalnya admin, user biasa)
- Reporting/ekspor data (periode, filter)

## Teknologi yang Digunakan
- PHP & Laravel
- Frontend: Blade
- Basis data: MySQL (atau sesuai konfigurasi)
- Tooling: Composer

## Instalasi & Setup
- Clone repo :
    ```bash
    git clone https://github.com/donarazhar/emaa_v3.10.2025.git
    cd emaa_v3.10.2025
    composer install

- Install frontend assets:
    ```bash
    npm install
    npm run dev
    
## Konfigurasi environment:
- Duplicate .env.example ke .env
- Atur DB_HOST, DB_DATABASE, DB_USERNAME, DB_PASSWORD, MAIL_…

## Generate application key:
    ```
    php artisan key:generate

## Migrasi database :
    ```
    php artisan migrate --seed

## Lisensi
- Proyek ini dilisensikan di bawah lisensi MIT (atau sesuai lisensi yang Anda pilih)

## Penulis & Kontak
Donar Azhar IG : https://www.instagram.com/donsiyos/
Email : donarazhar@gmail.com

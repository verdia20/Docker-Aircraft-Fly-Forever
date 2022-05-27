# Docker 2 - Hands On 💻

## Nama dan NIM Anggota Kelompok 👯

| Nama                          | NIM       |
| ----------------------------- | --------- |
| Ferdy. M                      | 120140098 |
| Muhammad Duta Faturrahman     | 120140065 |
| Jossy Raya Gopasda Saragih    | 120140073 |
| Imam Windharko                | 120140063 |
| M. Al Fairuz Swari            | 120140102 |
| M. Andro Sigit Kurniawan Jati | 120140081 |

## Deskripsi Project 📃
Aircraf: Fly Forever

Proyek ini adalah proyek pembuatan sebuah game yang menggunakan library pygame.Game ini bertemakan survival. Player dalam game ini berupa pesawat, dan game ini bertujuan menghindari rintangan berupa misil dan berusaha mendapatkan coin sebanyak-banyaknya untuk meningkatkan score.Player bisa mengambil item untuk mengaktifkan kemampuan menembak sehingga player bisa menembak misil dan mendapatkan bonus score.

## Cara Bermain (How To Play)

Permainan ini dimainkan menggunakan tombol keyboard. Tujuan permainan adalah untuk menghindari rintangan misil dan meraih score sebanyak-banyaknya.
Pada awal permainan kita diperlihatkan dengan tampilan awal dari game tersebut dan kita diperintahkan untuk menekan sembarang tombol keyboard untuk memulai permainan.

Tombol keyboard yang digunakan saat bermain adalah tombol W A S D atau tombol panah untuk menggerakkan pesawat.
Selain itu tombol spasi digunakan untuk menembak rintangan atau misil.

W = menggerakkan pesawat ke arah atas.

A = menggerakkan pesawat ke arah kiri.

S = menggerakkan pesawat ke arah bawah.

D = menggerakkan pesawat ke arah kanan.

Spasi = menembak laser ke arah rintangan.

## Cara Menjalankan Container

Buka terminal, lalu masuk ke direktori `~/Downloads` lalu buat image dengan menggunakan perintah make-build seperti di bawah ini.

    make build

Lalu pastikan image sudah dibuild dengan mengecek menggunakan perintah seperti di bawah ini.

    docker images

Akan terlihat image dengan nama aircraft/pygame yang berarti image sudah dibuild.

Selanjutnya, jalankan perintah run seperti dibawah ini.

Untuk Linux:

    make run-linux

Untuk MacOS:

    make run-mac

Untuk Windows:

    make run-windows

Kemudian jalankan game melalu container yang sudah dibuat dengan menjalankan perintah seperti di bawah ini.

    python3 -m main.py


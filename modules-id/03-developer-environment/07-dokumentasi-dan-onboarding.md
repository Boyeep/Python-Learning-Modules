# Modul 16: Dokumentasi dan Onboarding Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- mengapa dokumentasi adalah bagian dari environment developer
- apa yang sebaiknya ada di `README.md`
- bagaimana membuat onboarding untuk projek baru
- cara menulis dokumentasi yang berguna untuk developer lain

## Ide Besar

Project yang baik bukan hanya punya code yang berjalan.
Project yang baik juga punya dokumentasi yang jelas agar orang lain bisa cepat memahami dan memulai.

Dokumentasi adalah jembatan antara code dan developer.

## Kenapa Ini Penting

Tanpa dokumentasi, setup dan pola kerja project menjadi bergantung pada ingatan pribadi.
Dokumentasi yang ringkas dan jelas mengurangi waktu onboarding dan mengurangi pertanyaan berulang.

Developer environment yang sehat menyertakan:

- `README.md`
- tabel dependency
- contoh perintah setup
- penjelasan arsitektur singkat

## Teori Inti

### README yang Efektif

README adalah pintu masuk pertama ke project.
Bagian yang umum ada di README:

- deskripsi singkat project
- prasyarat (Python versi, OS, tooling)
- langkah setup environment
- perintah untuk menjalankan project
- cara menjalankan test
- link ke dokumentasi tambahan

README yang baik tidak perlu panjang, tetapi harus bisa membuat orang baru segera berjalan.

### Onboarding Developer Baru

Onboarding sebaiknya mencakup:

- cara membuat environment lokal
- cara menjalankan test
- struktur project singkat
- aturan penamaan dan coding style
- bagaimana mengirim pull request

Dokumentasi onboarding dapat ditulis di `README.md` atau `docs/ONBOARDING.md`.

### Dokumentasi Teknis yang Berguna

Selain README, project sering butuh:

- `CONTRIBUTING.md` untuk alur kontributor
- `CHANGELOG.md` untuk perubahan penting
- `docs/` untuk penjelasan lebih mendalam
- `architecture.md` untuk desain system

Dokumentasi ini membantu semua orang menjaga konsistensi.

### Dokumentasi sebagai Bagian dari Environment

Environment developer bukan hanya mesin dan paket.
Ia juga mencakup informasi tentang bagaimana project diharapkan dijalankan.

Kalau dokumentasi buruk, environment terasa lebih sulit daripada seharusnya.

### Dokumentasi Onboarding Teknis

Onboarding sebaiknya tidak hanya menjelaskan cara menjalankan project, tetapi juga pola kerja yang diharapkan.
Beri contoh bagaimana membuat feature baru, di mana menaruh test, dan bagaimana aturan style diikuti.
Dokumentasi onboarding yang baik membantu developer baru mulai bekerja tanpa menunggu penjelasan langsung.

### Praktik Menjaga Dokumentasi Tetap Relevan

Dokumentasi harus dianggap sebagai artefak hidup.
Setiap kali setup atau command berubah, dokumentasi juga harus diperbarui.
Gunakan review pull request untuk memeriksa apakah perubahan kode memerlukan dokumentasi tambahan.

## Walkthrough Singkat

1. Buat README dengan ringkasan project dan langkah setup.
2. Tambahkan contoh command untuk membuat virtual environment.
3. Jelaskan struktur directory yang penting.
4. Tambahkan bagian testing dan linting.

### Contoh README Sederhana

```markdown
# My Python Project

## Setup

python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt

## Run

python -m my_project

## Test

pytest
```

## Aturan Praktis

- buat README cukup informatif untuk setup awal
- jangan anggap 'sudah tahu' sebagai dokumentasi
- gunakan contoh perintah yang langsung bisa dijalankan
- update dokumentasi ketika alur setup berubah
- sediakan file contoh untuk konfigurasi yang diperlukan

## Mental Model

Dokumentasi adalah instruksi yang dapat dibaca.
Ia membuat environment project bisa dipakai oleh orang lain tanpa menebak-nebak.

## Kesalahan yang Sering Terjadi

- README hanya berisi deskripsi tanpa langkah setup
- dokumentasi usang karena tidak di-update
- tidak ada penjelasan tentang environment requirements
- asumsi semua orang menggunakan editor atau OS yang sama
- mengandalkan dokumentasi verbal saja

## Prompt Latihan

1. Apa yang harus ada di bagian setup README?
2. Mengapa onboarding perlu dicatat, bukan hanya diobrolkan?
3. Kapan kamu sebaiknya membuat `CONTRIBUTING.md`?
4. Mengapa dokumentasi teknis membantu team berkembang?

## Mini Exercise

1. Tuliskan contoh tiga bagian penting di README.
2. Buat daftar checklist setup untuk developer baru.
3. Jelaskan perbedaan `README.md` dan `CONTRIBUTING.md`.

## Checklist Penguasaan

- Saya tahu bagian penting yang harus ada di README Python.
- Saya bisa menjelaskan mengapa onboarding harus terdokumentasi.
- Saya paham bahwa dokumentasi harus di-update bersama code.
- Saya tahu kapan perlu menambahkan dokumentasi tambahan seperti `docs/`.
- Saya mengerti dokumentasi juga adalah bagian dari environment developer.

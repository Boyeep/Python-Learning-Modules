# Modul 17: Security dan Dependency Audit dalam Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- mengapa keamanan dependency penting
- tools audit dependency untuk Python
- bagaimana mengelola secrets dan konfigurasi sensitif
- langkah preventif sederhana untuk menjaga project lebih aman

## Ide Besar

Developer environment bukan hanya soal code yang bekerja.
Ia juga harus menjaga bahwa project tidak membawa risiko keamanan yang mudah dihindari.

Dependency audit dan manajemen secret adalah bagian dari lingkungan kerja yang bertanggung jawab.

## Kenapa Ini Penting

Banyak kerentanan muncul karena dependency usang atau konfigurasi yang bocor.
Project Python yang aman memeriksa dependency secara rutin dan tidak menyimpan rahasia di repository.

Menjaga keamanan sejak awal lebih mudah daripada memperbaiki setelah terjadi insiden.

## Teori Inti

### Audit Dependency

Beberapa tool yang umum dipakai untuk audit Python dependency:

- `pip audit`
- `safety`
- `bandit` untuk kode Python
- `dependabot` untuk GitHub

Audit dependency membantu menemukan paket dengan kerentanan yang diketahui.

### `pip audit`

`pip audit` memeriksa dependency terpasang terhadap database kerentanan.

Contoh:

```bash
python -m pip install pip-audit
python -m pip audit
```

Jika ditemukan masalah, kamu bisa menilai apakah perlu memperbarui package atau menunggu patch.

### `safety`

`Safety` dapat memindai `requirements.txt` untuk kerentanan.

Contoh:

```bash
pip install safety
safety check -r requirements.txt
```

### Menyimpan Secret dengan Aman

Rahasia seperti API key dan password tidak boleh ada di repository.
Gunakan:

- `.env` yang di-ignore
- environment variables di CI
- secret manager jika tersedia

`README.md` dapat memberi contoh nama variabel environment, tetapi tidak nilainya.

### Planning Audit Berkala

Keamanan bukan satu kali cek saja.
Jadwalkan audit dependency secara berkala, misalnya setiap minggu atau setiap kali dependency diupgrade.

Jika tim menggunakan Dependabot atau layanan sejenis, review PR otomatis sebagai bagian dari alur kerja.

### Menangani Hasil Audit

Setelah audit berjalan, gunakan hasilnya untuk:

- memperbarui dependency risiko tinggi
- menilai apakah patch aman untuk diintegrasikan
- memutuskan apakah perlu mitigasi sementara

Audit yang baik adalah audit yang ditindaklanjuti.

### Minimalisasi Dampak Bug

Beberapa langkah sederhana untuk mengurangi risiko:

- pin dependency versi stabil
- perbarui dependency secara berkala
- validasi input dan konfigurasi
- jangan commit file private seperti `.env`

### Integrasi Audit ke Workflow

Audit keamanan paling efektif bila dijalankan secara teratur.
Tambahkan pemeriksaan audit ke pre-commit atau CI sehingga masalah dependency diketahui lebih awal.
Jika menggunakan GitHub, Dependabot dapat membuat pull request otomatis untuk versi package yang telah diperbaiki.

## Walkthrough Singkat

1. Jalankan `pip audit` pada environment project.
2. Periksa `requirements.lock` untuk dependency bermasalah.
3. Pastikan `.gitignore` sudah mengecualikan file rahasia.
4. Tambahkan check keamanan ke proses pre-commit atau CI jika perlu.

### Contoh `pip audit`

```bash
python -m pip install pip-audit
python -m pip audit
```

### Contoh `.gitignore` untuk Rahasia

```gitignore
.env
.env.*
*.key
*.pem
```

## Aturan Praktis

- audit dependency secara rutin, bukan sekali saja
- jangan menganggap package terbaru selalu aman tanpa pengecekan
- pisahkan secret dari source code
- gunakan tool audit dalam workflow development
- jangan commit file environment atau secret

## Mental Model

Security dalam environment adalah perbaikan kecil yang terus-menerus.
Project yang aman adalah project yang memeriksa dependency dan menjaga informasi sensitif tetap terpisah.

## Kesalahan yang Sering Terjadi

- menganggap dependency aman karena berasal dari PyPI
- commit `.env` atau file konfigurasi berisi secret
- tidak menjalankan audit setelah memperbarui dependency
- menyimpan token dan password langsung di source code
- tidak meninjau hasil audit sebelum upgrade package

## Prompt Latihan

1. Mengapa `pip audit` penting dalam workflow Python?
2. Apa perbedaan antara audit dependency dan linting kode?
3. Bagaimana cara menyimpan API key dengan aman di project lokal?
4. Mengapa dependency pinning membantu keamanan?

## Mini Exercise

1. Tuliskan tiga hal yang harus di-ignored di `.gitignore` untuk keamanan.
2. Jelaskan langkah sederhana menjalankan `pip audit`.
3. Sebutkan dua tool keamanan yang bisa dipakai di project Python.

## Checklist Penguasaan

- Saya paham mengapa dependency audit penting.
- Saya tahu cara menggunakan `pip audit` dan `safety`.
- Saya mengerti rahasia tidak boleh disimpan di repository.
- Saya dapat menjelaskan bagaimana mengurangi risiko dependency.
- Saya tahu bahwa security juga bagian dari environment developer.

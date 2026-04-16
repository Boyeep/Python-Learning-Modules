# Modul 11: Python Packages dan Environment

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu Python package
- apa yang dilakukan package manager
- kenapa virtual environment penting
- kapan tool seperti `pip`, `venv`, dan Conda digunakan

## Ide Besar

Pengembangan Python nyata bukan hanya soal menulis code.
Pengembangan Python juga soal mengelola dependency dengan aman, konsisten, dan bisa direproduksi.

Semakin serius project-nya, semakin penting disiplin terhadap environment.

## Kenapa Ini Penting

Project Python modern jarang hanya berisi code yang kamu tulis sendiri.
Biasanya project juga bergantung pada library buatan orang lain.

Itu memunculkan pertanyaan praktis seperti:

- package apa saja yang dibutuhkan project ini?
- versi mana yang kompatibel?
- bagaimana agar satu project tidak merusak project lain?
- bagaimana caranya orang lain bisa menyiapkan environment yang sama?

Packages dan environments adalah alat untuk menjawab pertanyaan-pertanyaan itu.

## Teori Inti

### Apa Itu Package

Package adalah satuan code Python yang reusable dan didistribusikan agar bisa di-install lalu dipakai.

Contoh:

- web framework
- tools data science
- utility testing
- tools formatting dan linting

Dengan package, kamu bisa membangun di atas pekerjaan yang sudah ada daripada selalu memulai dari nol.

### Apa yang Dilakukan `pip`

`pip` adalah installer package standar di Python.

`pip` memungkinkan kamu memasang package dari package index.

Contoh:

```bash
pip install requests
```

Dalam praktiknya, `pip` membantu menambah, memperbarui, dan mengelola dependency Python.

### Kenapa Virtual Environment Penting

Tanpa isolasi, instalasi package bisa bentrok antar project.

Satu project mungkin butuh versi package tertentu.
Project lain mungkin butuh versi yang berbeda.

Kalau keduanya memakai environment global yang sama, salah satunya bisa rusak saat dependency berubah.

Virtual environment menyelesaikan ini dengan mengisolasi dependency per project.

### `venv`

`venv` adalah cara bawaan Python untuk membuat virtual environment.

Alur yang umum:

```bash
python -m venv .venv
```

Aktifkan environment di Linux/macOS:

```bash
source .venv/bin/activate
```

Aktifkan environment di Windows PowerShell:

```powershell
.\.venv\Scripts\Activate.ps1
```

Setelah diaktifkan, package yang di-install akan tetap lokal untuk environment tersebut, bukan memengaruhi semua project Python di mesinmu.

Karena itu, banyak project menyimpan folder `.venv` di root project.

### Menyimpan Dependency dengan `pip freeze`

Setelah meng-install package, kamu bisa mencatat versi yang terpasang:

```bash
pip install requests
pip freeze > requirements.txt
```

Lalu orang lain bisa membuat environment yang sama dengan:

```bash
pip install -r requirements.txt
```

### Dependency Development vs Production

Untuk banyak project, ada dependency yang hanya diperlukan saat pengembangan, seperti linter atau test runner.
Kamu dapat menyimpannya di file terpisah seperti `requirements-dev.txt`.

Contoh:

```text
# requirements-dev.txt
pytest
black
flake8
```

Dalam project yang lebih modern, kamu biasanya memisahkan dependency runtime dan development.
Runtime dependency diperlukan saat aplikasi berjalan, sementara development dependency hanya dipakai untuk membangun, menguji, atau memeriksa kode.

### Menjaga Environment Lokal Tetap Bersih

Jangan meng-install package development ke environment production.
Jaga agar environment lokal terisolasi dengan nama yang jelas, misalnya `.venv`, dan jangan commit folder environment tersebut.

Selalu gunakan `python -m pip install ...` untuk memastikan `pip` dijalankan oleh interpreter yang aktif.
Jika ada lebih dari satu Python di mesin, ini mencegah kebingungan.

Contoh instalasi yang lebih aman:

```bash
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

### Menggunakan Sesuatu Seperti `requirements-dev.txt`

`requirements-dev.txt` membantu tim memahami apa yang dibutuhkan untuk bekerja pada project.
Jika hanya ada satu file dependency, penting untuk memberi komentar atau membagi dependency agar jelas mana yang dipakai saat runtime dan mana yang hanya untuk development.

### Mengapa `pip install -e .` Berguna

Instalasi editable (`pip install -e .`) sangat membantu ketika kamu sedang mengembangkan package.
It membuat perubahan kode langsung terlihat tanpa harus meng-install ulang package.

### Menggunakan `pip list` dan `pip check`

Setelah meng-install paket, kamu bisa memeriksa ketergantungan dengan:

```bash
python -m pip list
python -m pip check
```

`python -m pip check` akan memberitahu jika ada dependency yang rusak atau tidak kompatibel.

### Requirements dan Reproducibility

Selalu panggil pip melalui Python agar tidak tergantung pada path sistem:

```bash
python -m pip install requests
```

Perintah ini membantu menjaga konsistensi ketika ada lebih dari satu versi Python di mesin.

Kamu juga bisa cek dependency yang terpasang dengan:

```bash
python -m pip list
python -m pip check
```

### Package Index dan Instalasi Lokal

`pip` biasanya mengambil paket dari PyPI.
Untuk develop lokal, kamu dapat menggunakan:

```bash
pip install -e .
```

Perintah ini memasang project secara editable, sehingga perubahan kode langsung terlihat tanpa reinstall.

### Conda

Conda adalah sistem environment dan package management lain yang umum di data science dan scientific computing.

Dibanding kombinasi dasar `pip` plus `venv`, Conda sering dipakai ketika:

- perlu mengelola dependency non-Python
- bekerja di stack data science
- memakai binary prebuilt lintas platform

Untuk banyak aplikasi Python umum, `pip` dan `venv` sudah cukup.
Tetapi memahami kenapa Conda ada tetap berguna.

### Requirements dan Reproducibility

Project biasanya mencatat dependency dalam file seperti:

- `requirements.txt`
- `pyproject.toml`

Ini penting karena reproducibility adalah perhatian inti dalam engineering.

Kalau developer lain tidak bisa membuat environment yang sama, kolaborasi akan menjadi sulit.

Pencatatan dependency membantu tim menjawab:

- apa yang harus di-install?
- versi apa yang diharapkan?
- bagaimana cara mendapatkan perilaku yang konsisten di mesin berbeda?

### Dependency Adalah Bagian dari Project

Kadang mudah berpikir bahwa dependency hanyalah "code orang lain", jadi bukan bagian dari pekerjaan kita.

Dalam praktiknya, dependency tetap bagian dari sistem yang sedang kamu bangun.
Artinya kamu tetap harus mengelola:

- versi
- isolasi
- kompatibilitas
- reproducibility

### Memilih Tool yang Tepat

Untuk project kecil, `pip` + `venv` biasanya sudah cukup.
Untuk aplikasi yang lebih besar atau tim yang membutuhkan packaging lebih ketat, pertimbangkan tool seperti Poetry atau Pipenv.

Pilihan yang tepat bergantung pada:

- skala project
- kebutuhan packaging
- preferensi tim
- kompatibilitas dengan CI

### Praktek Upgrade dan Perbaikan

Setiap kali kamu memasang atau memperbarui package, periksa bahwa kamu berada di environment yang benar.
`python -m pip install --upgrade pip` adalah langkah kecil yang membantu menghindari masalah kompatibilitas instalasi.

## Walkthrough Singkat

Setup profesional yang sederhana sering terlihat seperti ini:

1. Buat folder project.
2. Buat virtual environment dengan `python -m venv .venv`.
3. Aktifkan environment tersebut.
4. Install package yang dibutuhkan dengan `pip`.
5. Catat dependency ke `requirements.txt` atau `pyproject.toml`.

Proses ini membuat project lebih mudah dibagikan dan dirawat.

### Contoh Setup Environment

```bash
python -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install requests flask
python -m pip freeze > requirements.txt
```

Contoh isi `requirements.txt`:

```text
Flask==2.3.2
requests==2.31.0
```

## Aturan Praktis

- hindari meng-install dependency project secara global
- gunakan satu environment untuk satu project
- catat dependency agar orang lain bisa mereplikasi setup
- selalu sadar environment mana yang sedang aktif sebelum meng-install package
- jaga manajemen dependency tetap sederhana kecuali project memang butuh kompleksitas tambahan

## Mental Model

Dependency adalah bagian dari project-mu, walaupun kamu tidak menulis semuanya sendiri.

Artinya kamu tetap harus mengelola:

- versi
- isolasi
- reproducibility

Bayangkan environment sebagai bagian dari kondisi operasional codebase, bukan detail sampingan yang opsional.

## Kesalahan yang Sering Terjadi

- meng-install semua package secara global
- lupa environment mana yang sedang aktif
- tidak mencatat dependency
- menganggap setup dependency sebagai hal sepele
- mengira masalah environment hanyalah "masalah mesin", bukan masalah project

## Prompt Latihan

1. Kenapa meng-install package secara global itu berisiko?
2. Masalah apa yang diselesaikan oleh virtual environment?
3. Kapan Conda bisa lebih berguna daripada kombinasi dasar `pip` plus `venv`?
4. Kenapa pencatatan dependency penting untuk kerja tim?

## Mini Exercise

1. Tulis langkah-langkah untuk membuat virtual environment baru bagi sebuah project.
2. Jelaskan perbedaan meng-install package secara global dan di dalam environment project.
3. Sebutkan tiga jenis tool yang umum di-install sebagai Python package.

## Checklist Penguasaan

- Saya paham apa itu package di Python.
- Saya tahu `pip` digunakan untuk apa.
- Saya paham kenapa environment terisolasi itu penting.
- Saya tahu kenapa pencatatan dependency mendukung reproducibility.
- Saya paham bahwa manajemen dependency adalah bagian dari kerja developer profesional.

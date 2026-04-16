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

Setelah diaktifkan, package yang di-install akan tetap lokal untuk environment tersebut, bukan memengaruhi semua project Python di mesinmu.

Karena itu, banyak project menyimpan folder `.venv` di root project.

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

## Walkthrough Singkat

Setup profesional yang sederhana sering terlihat seperti ini:

1. Buat folder project.
2. Buat virtual environment dengan `python -m venv .venv`.
3. Aktifkan environment tersebut.
4. Install package yang dibutuhkan dengan `pip`.
5. Catat dependency ke `requirements.txt` atau `pyproject.toml`.

Proses ini membuat project lebih mudah dibagikan dan dirawat.

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

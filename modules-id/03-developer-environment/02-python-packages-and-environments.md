# Modul 11: Python Packages dan Environment

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu Python package
- apa yang dilakukan package manager
- kenapa virtual environment penting
- kapan tool seperti `pip`, `venv`, dan Conda digunakan

## Ide Besar

Pengembangan Python nyata bukan hanya soal menulis code.
Pengembangan Python juga soal mengelola dependency dengan aman.

## Teori Inti

### Apa Itu Package

Package adalah satuan code Python yang reusable dan didistribusikan agar bisa di-install lalu dipakai.

Contoh:

- web framework
- tools data science
- utility testing
- tools formatting dan linting

### Apa yang Dilakukan `pip`

`pip` adalah installer package standar di Python.

`pip` memungkinkan kamu memasang package dari package index.

Contoh:

```bash
pip install requests
```

### Kenapa Virtual Environment Penting

Tanpa isolasi, instalasi package bisa bentrok antar project.

Satu project mungkin butuh versi package tertentu.
Project lain mungkin butuh versi yang berbeda.

Virtual environment menyelesaikan ini dengan mengisolasi dependency per project.

### `venv`

`venv` adalah cara bawaan Python untuk membuat virtual environment.

Alur yang umum:

```bash
python -m venv .venv
```

Setelah diaktifkan, package yang di-install akan tetap lokal untuk environment tersebut.

### Conda

Conda adalah sistem environment dan package management lain yang umum di data science dan scientific computing.

Dibanding kombinasi dasar `pip` plus `venv`, Conda sering dipakai ketika:

- perlu mengelola dependency non-Python
- bekerja di stack data science
- memakai binary prebuilt lintas platform

### Requirements dan Reproducibility

Project biasanya mencatat dependency dalam file seperti:

- `requirements.txt`
- `pyproject.toml`

Ini penting karena reproducibility adalah perhatian inti dalam engineering.

Kalau developer lain tidak bisa membuat environment yang sama, kolaborasi akan menjadi sulit.

## Mental Model

Dependency adalah bagian dari project-mu, walaupun kamu tidak menulis semuanya sendiri.

Artinya kamu tetap harus mengelola:

- versi
- isolasi
- reproducibility

## Kesalahan yang Sering Terjadi

- meng-install semua package secara global
- lupa environment mana yang sedang aktif
- tidak mencatat dependency
- menganggap setup dependency sebagai hal sepele

## Prompt Latihan

1. Kenapa meng-install package secara global itu berisiko?
2. Masalah apa yang diselesaikan oleh virtual environment?
3. Kapan Conda bisa lebih berguna daripada kombinasi dasar `pip` plus `venv`?

## Checklist Penguasaan

- Saya paham apa itu package di Python.
- Saya tahu `pip` digunakan untuk apa.
- Saya paham kenapa environment terisolasi itu penting.
- Saya tahu bahwa manajemen dependency adalah bagian dari kerja developer profesional.

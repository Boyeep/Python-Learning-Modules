# Modul 18: Packaging dan Distribusi Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu package Python yang bisa didistribusikan
- bagaimana menggunakan `pyproject.toml` untuk metadata project
- perbedaan `sdist` dan `wheel`
- bagaimana membangun dan meng-install package lokal

## Ide Besar

Developer environment tidak hanya soal menjalankan project secara lokal.
Ia juga tentang bagaimana membuat project tersebut bisa dibagikan dan digunakan di mesin lain.

Packaging adalah langkah yang membuat code projectmu menjadi artefak yang bisa di-install dan dipasang.

## Kenapa Ini Penting

Tanpa packaging, project Python sering dikembangkan hanya sebagai source code mentah.
Package membuat project lebih mudah dipakai ulang, diuji, dan dikelola.

Packaging juga membantu memastikan dependency dan metadata tercatat dengan jelas.

## Teori Inti

### `pyproject.toml`

`pyproject.toml` adalah file pusat modern untuk metadata project.
Contoh bagian penting:

```toml
[project]
name = "my_project"
version = "0.1.0"
description = "Contoh project Python"
requires-python = ">=3.10"

[project.dependencies]
requests = "^2.31.0"
```

Bagian ini membantu tooling mengenali project sebagai package Python.

### `sdist` vs `wheel`

Dua bentuk distribusi Python umum:

- `sdist`: source distribution. Kode sumber bundel yang dapat dibangun di mesin lain.
- `wheel`: binary distribution. Instalasi lebih cepat dan tidak memerlukan build ulang.

Untuk package Python umum, biasanya dibuat keduanya.

### Membangun Package

Install tool build dan jalankan:

```bash
python -m pip install build
python -m build
```

Hasilnya biasanya berada di folder `dist/`.

### Install Lokal

Untuk mencoba package secara lokal, gunakan:

```bash
python -m pip install -e .
```

`-e` membuat instalasi editable, sehingga perubahan kode langsung terlihat tanpa reinstall.

### Distribusi ke PyPI

Jika project ingin dibagikan, gunakan `twine`:

```bash
python -m pip install twine
python -m twine upload dist/*
```

Untuk workflow pembelajaran, cukup pahami alur build dan install lokal.

### Menguji Paket Hasil Build

Setelah build, selalu uji package yang dihasilkan dengan meng-install dari folder `dist/`.
Contoh:

```bash
python -m pip install dist/my_project-0.1.0-py3-none-any.whl
python -c "import my_project"
```

Ini memastikan metadata, dependency, dan entry point valid sebelum package dibagikan.

### Build Reproducibility

Pastikan build package bersifat reproducible.
Artinya, setiap kali kamu menjalankan `python -m build`, hasilnya harus konsisten dan terbaca oleh tooling.

Simpan file build di `dist/` dan jangan commit folder tersebut kecuali ada alasan khusus.

### Versioning dan Release

Versioning yang jelas membantu mengelola rilis.
Gunakan aturan penomoran versi yang konsisten, seperti SemVer (`MAJOR.MINOR.PATCH`), dan update versi di `pyproject.toml` sesuai perubahan.

Jika ada release manual, dokumentasikan perubahan di `CHANGELOG.md`.

## Walkthrough Singkat

1. Tambahkan metadata project ke `pyproject.toml`.
2. Pasang `build`.
3. Jalankan `python -m build`.
4. Instal package secara lokal dengan `pip install -e .`.

### Contoh `pyproject.toml` untuk Packaging

```toml
[project]
name = "my_project"
version = "0.1.0"
description = "Contoh package Python"
requires-python = ">=3.10"

[project.dependencies]
requests = "^2.31.0"

[build-system]
requires = ["setuptools>=65.0.0", "wheel"]
build-backend = "setuptools.build_meta"
```

### Perintah Build dan Install Lokal

```bash
python -m pip install --upgrade pip build
python -m build
python -m pip install -e .
```

## Aturan Praktis

- tulis metadata project dengan jelas di `pyproject.toml`
- simpan file build di direktori `dist/`
- gunakan instalasi editable untuk pengembangan lokal
- periksa bahwa package dapat diimpor setelah install
- jangan commit folder `dist/` ke repository kecuali memang diperlukan

## Mental Model

Packaging membuat code-mu menjadi produk yang bisa dipasang.
Tanpa packaging, project lebih sulit untuk direplikasi oleh orang lain.

## Kesalahan yang Sering Terjadi

- tidak memiliki `pyproject.toml`
- mengabaikan dependency yang harus dicantumkan
- tidak menguji instalasi lokal
- menganggap package hanya perlu `requirements.txt`
- commit artefak build ke repository

## Prompt Latihan

1. Apa perbedaan `sdist` dan `wheel`?
2. Mengapa `pyproject.toml` penting untuk packaging?
3. Apa manfaat `pip install -e .`?
4. Mengapa package perlu diuji setelah build?

## Mini Exercise

1. Tuliskan contoh metadata `pyproject.toml` sederhana.
2. Jelaskan langkah membangun package Python.
3. Sebutkan alasan tidak meng-commit folder `dist/`.

## Checklist Penguasaan

- Saya paham apa itu package Python yang dapat didistribusikan.
- Saya tahu perbedaan `sdist` dan `wheel`.
- Saya mengerti apa yang harus ada di `pyproject.toml`.
- Saya bisa membangun dan meng-install package lokal.
- Saya tahu alasan menguji install paket setelah build.

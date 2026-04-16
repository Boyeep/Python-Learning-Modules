# Modul 22: Poetry dan Modern Dependency Management

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu Poetry dan bagaimana berbeda dari `pip` + `venv`
- cara membuat project baru dengan Poetry
- bagaimana Poetry mengelola dependency dan lockfile
- keuntungan dependency management modern untuk Python

## Ide Besar

Dependency management modern membuat environment lebih mudah dikendalikan.
Poetry menggabungkan metadata project, dependency, dan lockfile dalam satu alur.

Ini membuat setup lebih konsisten dan lebih sedikit masalah dependency.

## Kenapa Ini Penting

`requirements.txt` bekerja, tetapi tidak semua project membutuhkan manajemen dependency yang terintegrasi.
Poetry menawarkan alur yang lebih mudah dengan `pyproject.toml`, lockfile, dan virtual environment otomatis.

Dengan Poetry, tim bisa lebih cepat membuat project baru dan menjaga dependency teratur.

## Teori Inti

### Apa itu Poetry

Poetry adalah tool manajemen dependency dan packaging modern untuk Python.
Ia membantu:

- membuat project Python baru
- mengelola dependency
- menghasilkan lockfile secara otomatis
- membangun package untuk distribusi

### `pyproject.toml` di Poetry

Poetry menyimpan metadata dan dependency di `pyproject.toml`.
Contoh:

```toml
[tool.poetry]
name = "my_project"
version = "0.1.0"
description = "Contoh project menggunakan Poetry"
packages = [
    { include = "my_project" }
]

[tool.poetry.dependencies]
python = ">=3.10"
requests = "^2.31.0"

[tool.poetry.dev-dependencies]
pytest = "^8.0"
```

### Lockfile Poetry

Poetry membuat file `poetry.lock` untuk menyimpan versi tepat dependency.
Ini bekerja serupa dengan `requirements.lock`, tetapi untuk metadata Poetry.

### Perintah Dasar Poetry

- `poetry new my_project` untuk membuat project baru
- `poetry install` untuk membuat environment dan install dependency
- `poetry add requests` untuk menambahkan dependency
- `poetry update` untuk memperbarui dependency
- `poetry run pytest` untuk menjalankan perintah dalam environment Poetry

### Virtual Environment Otomatis

Poetry dapat membuat virtual environment sendiri dan mengelola path environment.
Ini membuat setup lebih mudah bagi tim yang tidak ingin mengelola `.venv` secara manual.

### Memahami `poetry.lock`

Poetry memisahkan deklarasi dependency utama di `pyproject.toml` dan versi tepat di `poetry.lock`.
Jangan edit `poetry.lock` secara manual; gunakan `poetry add` atau `poetry update` agar kedua file tetap sinkron.
Lockfile ini membuat instalasi ulang lebih dapat diprediksi di mesin lain.

### Kapan Memilih Poetry

Poetry cocok untuk project yang membutuhkan manajemen dependency dan packaging terintegrasi.
Jika kamu ingin alur yang lebih otomatis dari pembuatan project hingga release, Poetry adalah opsi yang baik.
Untuk script kecil atau eksperimen cepat, kombinasi `pip` + `venv` mungkin sudah cukup.

### Perbandingan dengan Tool Lama

Poetry berbeda dari workflow `pip install` manual karena:

- dependency dideklarasikan sekaligus dan di-lock secara otomatis
- environment dapat dikelola oleh Poetry sendiri
- packaging dibuat dari metadata `pyproject.toml`

Jika tim sudah terbiasa dengan `requirements.txt`, pertimbangkan transisi bertahap.

### Integrasi Poetry di CI

Di CI, jalankan `poetry install --no-interaction` untuk menginstal dependency.
Kemudian gunakan `poetry run` untuk menjalankan test dan perintah build.

Dengan begitu, CI menggunakan environment yang sama seperti developer lokal.

## Walkthrough Singkat

1. Pasang Poetry.
2. Buat project baru dengan `poetry new`.
3. Tambahkan dependency dengan `poetry add`.
4. Jalankan aplikasi dengan `poetry run`.

### Contoh Perintah Poetry

```bash
poetry new my_project
cd my_project
poetry add requests
poetry add --dev pytest black
poetry run python -m my_project
```

### Contoh `pyproject.toml`

```toml
[tool.poetry]
name = "my_project"
version = "0.1.0"
description = "Contoh project menggunakan Poetry"
packages = [ { include = "my_project" } ]

[tool.poetry.dependencies]
python = ">=3.10"
requests = "^2.31.0"

[tool.poetry.dev-dependencies]
pytest = "^8.0"
black = "^24.12.0"
```

## Aturan Praktis

- gunakan Poetry ketika project membutuhkan packaging modern
- gunakan `poetry.lock` untuk reproducibility
- jangan campur `requirements.txt` dan Poetry tanpa alasan jelas
- gunakan `poetry run` agar command berjalan di environment yang benar
- perbarui dependency secara terencana dengan `poetry update`

## Mental Model

Poetry adalah manajer perjalanan dependency.
Ia membantu menjembatani antara source code, environment, dan build package.

## Kesalahan yang Sering Terjadi

- menggunakan Poetry tanpa memahami `poetry.lock`
- membiarkan dependency tidak di-lock
- memodifikasi `pyproject.toml` secara manual tanpa sinkronisasi Poetry
- menggabungkan environment Poetry dengan virtual environment terpisah secara kacau
- mengabaikan perintah `poetry install` setelah clone repository

## Prompt Latihan

1. Apa keuntungan menggunakan Poetry dibanding `pip` manual?
2. Apa kegunaan `poetry.lock`?
3. Mengapa `poetry run` lebih aman daripada `python` biasa?
4. Kapan kamu ingin menggunakan Poetry untuk project baru?

## Mini Exercise

1. Tuliskan perintah membuat project baru dengan Poetry.
2. Jelaskan bagaimana menambahkan dependency dev di Poetry.
3. Sebutkan dua alasan menggunakan lockfile Poetry.

## Checklist Penguasaan

- Saya paham peran Poetry dalam dependency management.
- Saya tahu apa yang disimpan di `pyproject.toml`.
- Saya bisa menjelaskan fungsi `poetry.lock`.
- Saya mengerti perintah dasar Poetry.
- Saya tahu kapan menggunakan Poetry dalam workflow.

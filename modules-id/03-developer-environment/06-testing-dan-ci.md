# Modul 15: Testing dan CI untuk Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- peran testing otomatis dalam environment development
- bagaimana membuat workflow CI sederhana untuk Python
- apa yang harus diuji sebelum code di-merge
- bagaimana pre-commit dan CI saling melengkapi

## Ide Besar

Developer environment yang baik tidak hanya membuat code berjalan di mesin lokal.
Ia juga membantu memastikan perubahan diuji secara otomatis sebelum masuk ke repository utama.

Testing dan CI adalah bagian dari environment yang menjaga kualitas dan konsistensi.

## Kenapa Ini Penting

Manual testing sering terlewat dan sulit direproduksi.
CI memastikan setiap commit atau pull request dievaluasi di environment yang sama.

Dengan CI, project bisa menemukan masalah sebelum kode dikirim ke produksi.

## Teori Inti

### Testing Otomatis

Testing otomatis membantu menemukan bug lebih cepat.
Untuk Python, tool populer adalah:

- `pytest` untuk unit dan integration test
- `unittest` sebagai built-in module
- `coverage` untuk melihat area code yang belum teruji

Testing bukan hanya memeriksa hasil, tetapi juga memeriksa lingkungan.
Contoh test environment yang biasa diperiksa:

- dependency terpasang
- modul dapat diimpor
- konfigurasi default valid

### Pre-commit

`pre-commit` membantu menjalankan checks sebelum commit.
Dengan `pre-commit`, kamu bisa menjalankan formatter, linter, dan security scan secara otomatis.

Contoh file `.pre-commit-config.yaml` bisa memuat:

```yaml
repos:
  - repo: https://github.com/psf/black
    rev: 24.12.0
    hooks:
      - id: black

  - repo: https://github.com/PyCQA/flake8
    rev: 7.1.0
    hooks:
      - id: flake8
```

### Continuous Integration

CI menguji kode di server setelah commit atau pull request.
CI populer untuk Python termasuk GitHub Actions, GitLab CI, dan CircleCI.

### Prioritas Test di CI

Saat membangun workflow, urutkan test berdasarkan kecepatan dan nilai feedback:

1. linting dan formatting checks
2. unit test cepat
3. integration test
4. smoke test

Dengan prioritas ini, developer menerima umpan balik awal lebih cepat tanpa menunggu pipeline selesai sepenuhnya.

### Mengelola Hasil Test

CI yang baik juga harus memberikan hasil yang jelas.
Jika ada failure, informasi harus menunjukkan:

- command yang dijalankan
- file yang gagal
- error output yang relevan

Ini membantu developer memperbaiki masalah lebih cepat.

### Kapan Menambahkan Test baru

Setiap fitur baru harus datang bersama test.
Jika fitur memerlukan perubahan konfigurasi atau dependency, test otomatis membantu menjaga alur stabil.

## Walkthrough Singkat

Contoh GitHub Actions sederhana:

```yaml
name: Python CI

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        python-version: [3.10, 3.11, 3.12]

    steps:
      - uses: actions/checkout@v4
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: ${{ matrix.python-version }}
      - name: Install dependencies
        run: |
          python -m venv .venv
          source .venv/bin/activate
          python -m pip install --upgrade pip
          python -m pip install -r requirements.lock
      - name: Run tests
        run: |
          source .venv/bin/activate
          pytest
```

### Struktur Test yang Baik

Test yang rapi membuat CI lebih dapat dipercaya.
Folder `tests/` biasanya dipecah berdasarkan modul atau fitur.
Contoh struktur sederhana:

```text
my_project/
  src/
    my_project/
      core.py
  tests/
    test_core.py
```

Jika aplikasi lebih besar, bisa dibagi menjadi:

```text
tests/
  unit/
    test_utils.py
  integration/
    test_api.py
```

### Mengelola Test di CI

CI biasanya menjalankan test cepat terlebih dahulu, lalu test lebih lambat jika diperlukan.
Contoh alur umum:

1. jalankan linting dan formatting checks
2. jalankan unit test
3. jalankan integration atau smoke test

Dengan begitu, feedback awal muncul cepat dan tidak menghabiskan resource setiap kali.

### Caching dan Kecepatan CI

Seringkali CI dapat meng-cache dependency agar tidak menginstal ulang semua package setiap workflow.
Hal ini mengurangi waktu build dan membuat developer menerima hasil lebih cepat.

Contoh caching dependency di GitHub Actions:

```yaml
- name: Cache pip
  uses: actions/cache@v4
  with:
    path: ~/.cache/pip
    key: ${{ runner.os }}-pip-${{ hashFiles('**/requirements.lock') }}
    restore-keys: |
      ${{ runner.os }}-pip-
```

### Contoh Test dan Pre-commit

Contoh test sederhana `tests/test_core.py`:

```python
from my_project.core import add

def test_add():
    assert add(2, 3) == 5
```

Contoh `.pre-commit-config.yaml`:

```yaml
repos:
  - repo: https://github.com/psf/black
    rev: 24.12.0
    hooks:
      - id: black

  - repo: https://github.com/PyCQA/flake8
    rev: 7.1.0
    hooks:
      - id: flake8
```

### Memilih Tests yang Cocok

Project yang sehat biasanya punya lapisan test:

- unit test: memeriksa fungsi kecil dan logika tunggal
- integration test: memeriksa modul bersama-sama
- smoke test: memastikan aplikasi bisa startup

CI idealnya menjalankan unit test terlebih dahulu.
Jika unit test cepat, CI bisa memberikan feedback lebih cepat.

## Walkthrough Singkat

1. Tambahkan `pytest` dan `coverage` ke dependency development.
2. Tulis test sederhana di `tests/test_core.py`.
3. Buat `pre-commit` config untuk styling dan linting.
4. Tambahkan workflow CI yang menjalankan install dan test.

## Aturan Praktis

- jalankan test otomatis setiap kali ada perubahan penting
- gunakan `pre-commit` untuk menjaga style sebelum commit
- commit konfigurasi CI bersama project
- pisahkan test environment dari environment development lokal
- pastikan CI menggunakan dependency yang sama dengan project

## Mental Model

CI adalah asisten lingkungan developer.
Ia memeriksa bahwa kode baru memenuhi standar sebelum gabung ke branch utama.

## Kesalahan yang Sering Terjadi

- hanya mengandalkan testing lokal di satu mesin
- tidak menambahkan CI untuk branch utama
- terlalu banyak test slow di CI tanpa prioritas
- melupakan dependency development di CI
- file konfigurasi CI tidak di-commit atau tidak dipelihara

## Prompt Latihan

1. Apa perbedaan antara testing lokal dan testing di CI?
2. Mengapa pre-commit membantu tim?
3. Apa yang harus dilakukan CI sebelum merge?
4. Mengapa CI perlu menjalankan install dependency dari lockfile?

## Mini Exercise

1. Tulis langkah setup `pytest` untuk project Python.
2. Buat contoh sederhana workflow GitHub Actions untuk Python.
3. Jelaskan mengapa `pre-commit` lebih baik daripada hanya mengandalkan manual format.

## Checklist Penguasaan

- Saya paham peran testing otomatis dalam development workflow.
- Saya tahu fungsi `pre-commit` dalam project Python.
- Saya mengerti bagaimana CI menggunakan environment yang sama.
- Saya bisa menjelaskan lapisan testing umum: unit, integration, smoke.
- Saya tahu mengapa CI harus diuji sebelum merge.

# Modul 23: CI/CD dan Release Pipeline untuk Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu pipeline CI/CD
- bagaimana menulis workflow deployment sederhana
- bagaimana pipeline membantu menjaga kualitas release
- langkah umum dalam pipeline Python

## Ide Besar

CI/CD adalah cara membuat perubahan kode memberi hasil yang dapat diuji dan dirilis secara otomatis.
Pipeline menghubungkan development, test, dan release dalam satu alur.

Dengan CI/CD, environment developer bukan hanya lokal, tetapi juga otomatis.

## Kenapa Ini Penting

Tanpa pipeline, rilis sering dilakukan manual dan berisiko.
CI/CD membuat proses lebih terukur dan mengurangi human error.

Ini membantu tim merilis perubahan dengan lebih cepat dan lebih aman.

## Teori Inti

### CI vs CD

- CI (Continuous Integration): kode diuji secara otomatis setelah commit.
- CD (Continuous Delivery/Deployment): kode dipersiapkan atau langsung dirilis ke lingkungan target.

Pipeline yang baik memisahkan build, test, dan release.

### Pipeline Dasar untuk Python

Langkah umum pada pipeline Python:

1. checkout kode
2. install dependency
3. jalankan test
4. jalankan lint / formatting checks
5. bangun package jika perlu
6. rilis atau deploy ke environment staging/production

### Contoh Workflow GitHub Actions

```yaml
name: Python CI/CD

on:
  push:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: 3.12
      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.lock
      - name: Run tests
        run: pytest
      - name: Build package
        run: python -m build
```

Workflow ini memastikan setiap perubahan yang masuk ke `main` sudah diuji dan dibangun.

### Deployment Sederhana

Deployment bisa berupa:

- upload package ke PyPI
- deploy container ke server atau platform cloud
- deploy static site atau API

Bagian deployment biasanya hanya terjadi setelah semua test lulus.

### Otomasi Versus Kontrol Manual

CI/CD bukan berarti semua proses otomatis tanpa pengecekan.
Release pipeline masih bisa memerlukan human approval untuk produksi.

Pipeline yang baik menyediakan feedback cepat tanpa menghapus kontrol.

### Feedback Loop dan Artefak

Pipeline sebaiknya memberikan umpan balik yang cepat kepada developer.
Gunakan cache dependency dan artefak build agar pipeline tetap efisien.
Artefak seperti hasil test coverage atau package build bisa disimpan untuk audit dan debugging.

### Deployment dan Approval

Pipeline CD dapat dikonfigurasi untuk deployment otomatis atau manual approval.
Untuk lingkungan produksi, sering kali lebih aman menggunakan approval gate agar tim dapat meninjau perubahan sebelum di-deploy.

### Dokumentasi Pipeline

Tuliskan alur pipeline dalam dokumentasi proyek.
Ini membantu anggota tim memahami apa yang terjadi ketika commit masuk ke branch utama.
## Walkthrough Singkat

1. Buat workflow yang menjalankan test di setiap push.
2. Pastikan build package berjalan sebagai bagian pipeline.
3. Tambahkan stage deployment jika project perlu dirilis.
4. Gunakan branch protection untuk mencegah merge tanpa status pipeline lulus.

### Contoh GitHub Actions Minimal

```yaml
name: Python CI/CD

on:
  push:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: 3.12
      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.lock
      - name: Run tests
        run: pytest
```

## Aturan Praktis

- jalankan test dan linting di pipeline sebelum merge
- pisahkan stage build dan deploy
- gunakan lockfile dependency dalam pipeline
- jangan deploy jika pipeline gagal
- tambahkan notifikasi jika pipeline gagal untuk tim

## Mental Model

Pipeline CI/CD adalah mesin pengujian dan release.
Ia membuat setiap commit menghadapi checklist otomatis sebelum menjadi bagian dari rilis.

## Kesalahan yang Sering Terjadi

- pipeline hanya menjalankan build tanpa test
- deploy otomatis tanpa stage validasi
- pipeline tidak memakai versi dependency yang terkunci
- terlalu lama membuat pipeline sehingga feedback menjadi lambat
- tidak memeriksa hasil build sebelum deploy

## Prompt Latihan

1. Apa fungsi stage build di pipeline?
2. Mengapa test harus dijalankan sebelum deploy?
3. Apa that can happen if pipeline is too slow?
4. How branch protection relates to CI/CD?

## Mini Exercise

1. Tulis langkah dasar untuk pipeline Python.
2. Jelaskan mengapa deployment stage tidak boleh lulus jika test gagal.
3. Sebutkan dua perintah yang bisa dijalankan dalam pipeline.

## Checklist Penguasaan

- Saya mengerti perbedaan CI dan CD.
- Saya tahu stage utama pipeline Python.
- Saya paham kenapa pipeline harus pakai dependency lock.
- Saya tahu deploy harus dilakukan hanya setelah test lulus.
- Saya dapat menjelaskan bagaimana pipeline mendukung release management.

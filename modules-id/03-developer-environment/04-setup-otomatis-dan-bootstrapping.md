# Modul 13: Setup Otomatis dan Bootstrapping

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- mengapa setup project harus otomatis
- apa manfaat skrip bootstrap
- bagaimana membuat langkah setup yang dapat diulang
- kapan menggunakan `Makefile`, skrip shell, atau task runner sederhana

## Ide Besar

Developer environment harus bisa dibuat ulang dengan satu atau beberapa perintah yang jelas.
Setup otomatis mengurangi friction ketika project dibagikan atau dipindah ke mesin lain.

## Kenapa Ini Penting

Manual setup sering memicu kesalahan:

- lupa mengaktifkan environment
- melewatkan install dependency
- menggunakan versi package yang salah

Skrip setup dan dokumentasi yang baik menjaga project mudah di-start.

## Teori Inti

### Apa itu Bootstrapping Project

Bootstrapping adalah proses menyiapkan environment awal agar project bisa dijalankan.
Biasanya mencakup:

- membuat virtual environment
- meng-install dependency
- meng-copy file konfigurasi contoh
- menjalankan migrasi atau test dasar

### Skrip Setup

Skrip setup bisa berupa:

- `setup.sh` atau `setup.ps1`
- `Makefile`
- `noxfile.py` atau `invoke` tasks

Tujuannya sama: satu sumber kebenaran untuk langkah setup.

### Mengapa Lebih Baik dari Dokumentasi Tersendiri

Dokumentasi bagus, tetapi manusia bisa salah ketik.
Skrip adalah instruksi yang dapat dijalankan.

Jika hanya ada instruksi manual, ada peluang langkah terlewat.
Skrip otomatis mengurangi risiko itu.

### Contoh Alur Setup Sederhana

```bash
python -m venv .venv
source .venv/Scripts/activate
pip install -r requirements.lock
```

Kalau menggunakan skrip, cukup:

```bash
./setup.sh
```

atau di Windows:

```powershell
.\setup.ps1
```

### Contoh Skrip Setup

Contoh `setup.sh` untuk Linux/macOS:

```bash
#!/usr/bin/env bash
set -e

python -m venv .venv
source .venv/Scripts/activate
pip install --upgrade pip
pip install -r requirements.lock

echo "Setup selesai. Aktifkan .venv dengan 'source .venv/Scripts/activate'" 
```

Contoh `setup.ps1` untuk Windows PowerShell:

```powershell
$ErrorActionPreference = 'Stop'
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.lock
Write-Host "Setup selesai. Environment aktif." -ForegroundColor Green
```

### Skrip yang Idempotent

Skrip setup sebaiknya dapat dijalankan berkali-kali tanpa merusak kondisi project.
Contoh prinsip idempotent:

- buat `.venv` hanya jika belum ada
- jangan overwrite file konfigurasi yang sudah diisi
- jalankan `pip install -r requirements.lock` lagi jika diperlukan
- jika ada file `.env.example`, buat `.env` hanya jika belum ada

Ini membuat setup lebih aman bagi developer yang kembali ke project setelah lama tidak menyentuh.

### Contoh Skrip Idempotent

```bash
#!/usr/bin/env bash
set -e

if [ ! -d .venv ]; then
  python -m venv .venv
fi

source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.lock

if [ ! -f .env ] && [ -f .env.example ]; then
  cp .env.example .env
fi

echo "Setup selesai. Aktifkan .venv dengan 'source .venv/bin/activate'"
```

### Cross-platform dan Dokumentasi

Skrip bootstrapping yang baik menjelaskan dukungan untuk sistem operasi yang berbeda.
Jika kamu menyediakan script Bash dan PowerShell, tuliskan langkah mana yang harus digunakan di masing-masing platform.

Perhatikan bahwa `Makefile` sering digunakan pada Linux/macOS, sedangkan PowerShell sangat berguna untuk pengguna Windows.

### Task Runner atau `Makefile`

Tidak semua project perlu task runner yang kompleks.
Tetapi jika ada beberapa perintah setup, `Makefile` atau task runner minimal membantu developer mengingat target yang tersedia.

Contoh `Makefile` yang lebih jelas:

```makefile
.PHONY: install test lint clean

install:
	python -m venv .venv
	.venv\Scripts\activate && python -m pip install --upgrade pip && python -m pip install -r requirements.lock

test:
	.venv\Scripts\activate && pytest

lint:
	.venv\Scripts\activate && flake8 src

clean:
	rm -rf .venv
```

### Dokumentasi Bootstrapping

Bootstrapping seringkali melibatkan lebih dari sekadar install dependency.
Skrip dapat menambahkan tugas seperti:

- membuat file `.env` dari `.env.example`
- menjalankan migrasi database sederhana
- memeriksa bahwa `python -m pytest` lulus

Langkah validasi kecil ini membantu memastikan environment benar-benar siap.

Contoh `Makefile` untuk tugas umum:

```makefile
.PHONY: install test lint clean

install:
	python -m venv .venv
	.venv\Scripts\activate && python -m pip install --upgrade pip && pip install -r requirements.lock

test:
	.venv\Scripts\activate && pytest

lint:
	.venv\Scripts\activate && flake8 src

clean:
	rm -rf .venv
```

`Makefile` membuat perintah setup lebih konsisten.

### Dokumentasi Bootstrapping

README project harus singkat dan mengacu ke skrip setup.
Contoh bagian setup di `README.md`:

```markdown
## Setup Project

1. Jalankan `./setup.sh` di Linux/macOS atau `./setup.ps1` di Windows.
2. Aktifkan environment:
   - Linux/macOS: `source .venv/bin/activate`
   - Windows PowerShell: `.\.venv\Scripts\Activate.ps1`
3. Jalankan `pip install -r requirements.lock` jika diperlukan.
```

Ini memastikan siapapun dapat memulai dari command yang sama.

### Bootstrapping di Project Besar

Untuk project yang lebih kompleks, skrip bootstrap dapat mencakup:

- membuat file `.env` dari `.env.example`
- cek dependency yang terpasang
- jalankan migration database ringan
- jalankan smoke test

Dengan begitu, setup tidak hanya selesai, tetapi juga tervalidasi.

### Alternatif Task Runner

Selain `Makefile`, ada tool lain seperti:

- `nox` untuk task automation Python
- `invoke` untuk definisi task Python
- `just` sebagai tool task runner cross-platform

Pilih alat yang paling sesuai dengan tim dan operasi project.

### `Makefile` sebagai Abstraksi

`Makefile` tidak hanya untuk C/C++.
Ia bisa menjadi cara cepat untuk mendefinisikan tugas umum seperti:

- `make install`
- `make test`
- `make lint`

Ini membuat perintah setup lebih konsisten.

## Walkthrough Singkat

Bayangkan project Python berikut:

```text
my_project/
  .venv/
  requirements.lock
  setup.sh
  README.md
```

Isi `setup.sh` bisa seperti:

```bash
#!/usr/bin/env bash
python -m venv .venv
source .venv/Scripts/activate
pip install -r requirements.lock
```

Dengan begitu, siapapun cukup menjalankan `./setup.sh` untuk memulai.

### Contoh `setup.sh`

```bash
#!/usr/bin/env bash
set -e

if [ ! -d .venv ]; then
  python -m venv .venv
fi

source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.lock

if [ ! -f .env ] && [ -f .env.example ]; then
  cp .env.example .env
fi

echo "Setup selesai. Aktifkan .venv dengan 'source .venv/bin/activate'"
```

### Contoh `Makefile`

```makefile
.PHONY: install test lint clean

install:
	python -m venv .venv
	.venv\Scripts\activate && python -m pip install --upgrade pip && python -m pip install -r requirements.lock

test:
	.venv\Scripts\activate && pytest

lint:
	.venv\Scripts\activate && flake8 src

clean:
	rm -rf .venv
```

## Aturan Praktis

- buat langkah setup yang mudah diulang
- simpan masukan ke file konfigurasi, bukan ke kepala saja
- gunakan skrip sekali jika setup lebih dari beberapa perintah
- jangan commit folder environment seperti `.venv`
- tulis README singkat yang merujuk ke skrip setup

## Mental Model

Setup otomatis membuat project seperti mesin yang dapat dinyalakan ulang dengan tombol yang sama.
Tanpa bootstrapping, setiap developer harus menjalankan serangkaian langkah manual yang berbeda-beda.

## Kesalahan yang Sering Terjadi

- menulis instruksi setup hanya di README
- asumsi environment sudah aktif sebelum install
- tidak menyediakan skrip alias untuk perintah umum
- membuat skrip yang hanya bekerja di satu sistem operasi tanpa penjelasan
- menyimpan commands setup di catatan pribadi saja

## Prompt Latihan

1. Mengapa setup otomatis penting untuk project tim?
2. Apa bedanya README instruksi dan skrip setup?
3. Kapan kamu ingin menambahkan `Makefile` ke project?
4. Apa saja langkah minimum yang perlu dijelaskan dalam setup project?

## Mini Exercise

1. Tuliskan langkah bootstrapping untuk project Python sederhana.
2. Buat contoh singkat `Makefile` dengan target `install` dan `test`.
3. Jelaskan mengapa `.venv` sebaiknya tidak dikomit.

## Checklist Penguasaan

- Saya paham kenapa setup project harus bisa diulang.
- Saya tahu manfaat skrip bootstrap.
- Saya bisa menjelaskan langkah dasar membuat virtual environment dan install dependency.
- Saya mengerti kapan menggunakan `Makefile` atau skrip shell.
- Saya tahu kenapa dokumentasi dan skrip setup harus konsisten.

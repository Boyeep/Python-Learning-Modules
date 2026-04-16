# Modul 12: Dependency Pinning dan File Lock

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu dependency pinning
- perbedaan `requirements.txt`, `requirements.lock`, dan `pyproject.toml`
- kenapa lockfile membantu reproducibility
- bagaimana menjaga dependency tetap aman dan konsisten

## Ide Besar

Project Python yang sehat bukan hanya tentang code.
Project sehat juga tentang menjaga dependency agar predictable dan dapat direproduksi.

Dependency pinning membuat environment lebih stabil, terutama saat banyak developer bekerja bersama.

## Kenapa Ini Penting

Tanpa pinning, versi package yang di-install dapat berubah dari waktu ke waktu.
Itu membuat bug sulit ditelusuri karena lingkungan pengembangan dan produksi bisa berbeda.

Lockfile adalah deklarasi snapshot untuk dependency yang sebenarnya di-install.
Ini membantu setiap mesin memiliki versi yang sama.

## Teori Inti

### Apa itu Dependency Pinning

Dependency pinning berarti menentukan versi package secara eksplisit.
Contoh:

```text
requests==2.31.0
```

Dengan pinning, install ulang akan menghasilkan versi yang sama jika package repository masih tersedia.

### `requirements.txt` vs `pyproject.toml`

`requirements.txt` biasanya berisi daftar package yang di-install.

`pyproject.toml` adalah metadata project modern yang juga bisa menyimpan dependency.

Kedua cara bisa dipakai, tapi prinsip utamanya sama: tulis dependency dengan cara yang jelas.

### Lockfile

Lockfile, seperti `requirements.lock` atau file lock yang dibuat oleh tools lain, mencatat versi pasti termasuk dependency transitif.

Contoh manfaat lockfile:

- mesin lain meng-install versi yang sama
- bug tidak muncul karena dependency berubah tanpa sadar
- produksi dan development lebih konsisten

### Mengapa Lockfile Mirip Snapshot

Lockfile bukan hanya daftar dependency utama.
Ia juga menyimpan versi dependency transitif yang diunduh oleh package yang kamu pasang.
Tanpa lockfile, berbeda mesin bisa mengambil versi transitif yang berbeda meskipun dependency utama sama.

Contoh membuat lockfile:

```bash
pip install -r requirements.txt
pip freeze > requirements.lock
```

Contoh menggunakan lockfile:

```bash
pip install -r requirements.lock
```

### Update Dependency Secara Terukur

Saat memperbarui dependency, lakukan secara terpisah dan tinjau perubahan lockfile.
Ini membantu menghindari kejutan ketika dependency transitif ikut berubah.

Langkah yang lebih baik:

1. ubah versi di `requirements.txt` atau `pyproject.toml`
2. jalankan `pip install -r requirements.txt`
3. buat ulang `requirements.lock` dengan `pip freeze > requirements.lock`
4. periksa diff lockfile sebelum commit

Dengan pendekatan ini, tim bisa melihat dengan jelas kapan dependency diupgrade.

### Kapan Pinning Lebih Kritis

Pinning sangat berguna ketika:

- kamu bekerja dalam tim
- project harus berjalan di environment produksi
- dependency baru sering dirilis

Jika project hanya untuk belajar cepat, pinning tetap baik tetapi tidak selalu wajib.

### Jenis Pinning

Ada beberapa tingkat pinning:

- `requests==2.31.0` — versi pasti
- `requests~=2.31.0` — versi kompatibel dalam minor yang sama
- `requests>=2.31.0,<3.0.0` — rentang versi yang masih dikontrol

Untuk reproducibility ketat, versi pasti sering dipilih.

### Lockfile dan Kontrol Versi

Commit lockfile ke Git biasanya praktis untuk tim.
Tetapi jangan lupa:

- tinjau perubahan lockfile saat upgrade
- jangan menggabungkan lockfile yang rusak
- perbarui lockfile dengan cara terkontrol

### Toolbox Lockfile

Berbagai tooling menghasilkan lockfile dengan format berbeda:

- `pip freeze > requirements.lock`
- `pip-tools` menghasilkan `requirements.txt` dan `requirements.lock`
- Poetry menghasilkan `poetry.lock`
- Pipenv menghasilkan `Pipfile.lock`

Pilih alat sesuai gaya project dan konsistensi tim.

### Contoh Alur Upgrade Berlapis

Untuk mengurangi risiko, gunakan alur bertahap:

1. uji versi baru di branch terpisah
2. jalankan test otomatis
3. periksa perubahan lockfile
4. merge jika semua lulus

Ini membuat update dependency lebih terkendali.

## Walkthrough Singkat

1. Buat `requirements.txt` dengan dependency utama.
2. Install dengan `pip install -r requirements.txt`.
3. Simpan versi yang dipasang ke lockfile.
4. Gunakan lockfile untuk setup ulang environment.

Contoh langkah:

```bash
python -m venv .venv
source .venv/Scripts/activate
pip install requests flask
pip freeze > requirements.lock
```

Kemudian orang lain bisa menjalankan:

```bash
pip install -r requirements.lock
```

## Aturan Praktis

- tulis dependency dengan versi jika project bukan eksperimen sekali jalan
- gunakan lockfile bila kamu ingin reproducibility yang kuat
- update dependency secara terencana, bukan sembarang
- jangan commit dependency global atau file environment pribadi
- pisahkan dependency runtime dan dev jika perlu

### Contoh `requirements.lock`

Contoh `requirements.txt`:

```text
Flask==2.3.2
requests==2.31.0
```

Buat lockfile:

```bash
python -m pip install -r requirements.txt
python -m pip freeze > requirements.lock
```

Contoh isi `requirements.lock`:

```text
click==8.1.7
Flask==2.3.2
itsdangerous==2.1.2
Jinja2==3.1.2
MarkupSafe==2.1.3
requests==2.31.0
Werkzeug==2.3.7
```

## Mental Model

Dependency pinning membuat project seperti blueprint yang dapat dibangun ulang.
Tanpa pinning, project seperti bangunan yang bergantung pada bahan yang berubah-ubah setiap hari.

## Kesalahan yang Sering Terjadi

- menulis dependency tanpa versi sama sekali
- mengandalkan package global di mesin developer
- tidak menjaga lockfile konsisten
- commit file dependency yang tidak relevan
- mengabaikan perbedaan antara dependency runtime dan development

## Prompt Latihan

1. Apa bedanya `requirements.txt` dan lockfile?
2. Mengapa pinning membantu ketika ada banyak developer?
3. Bagaimana cara memastikan environment tetap konsisten?
4. Kapan kamu bisa memilih tidak mem-pinning semua dependency?

## Mini Exercise

1. Tuliskan contoh isi `requirements.txt` untuk project kecil.
2. Jelaskan langkah membuat dan menggunakan lockfile.
3. Sebutkan tiga alasan mengapa versi dependency harus dicatat.

## Checklist Penguasaan

- Saya paham apa itu dependency pinning.
- Saya tahu fungsi lockfile.
- Saya mengerti kenapa reproducibility penting.
- Saya tahu perbedaan `requirements.txt` dan `pyproject.toml`.
- Saya bisa menjelaskan kapan pinning semakin penting.

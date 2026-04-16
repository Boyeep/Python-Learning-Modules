# Modul 10: Menyusun Struktur Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- kenapa struktur project penting lebih dari sekadar selera pribadi
- apa saja bagian umum dari project Python yang maintainable
- bagaimana struktur mendukung keterbacaan, testing, dan kerja tim
- bagaimana memikirkan entry point, code reusable, dan file pendukung

## Ide Besar

Struktur yang baik tidak membuat code menjadi pintar.
Struktur yang baik membuat code lebih mudah dipahami, diubah, dan dikembangkan.

Struktur project adalah bagian dari desain software karena memengaruhi seberapa mudah manusia menavigasi codebase.

## Kenapa Ini Penting

Ketika code bertambah besar, struktur yang buruk akan menimbulkan kebingungan berulang:

- program ini mulai dari mana?
- logika reusable seharusnya disimpan di mana?
- test diletakkan di mana?
- konfigurasi berada di mana?
- feature baru sebaiknya dimasukkan ke folder yang mana?

Struktur yang baik mengurangi beban berpikir dan membantu project tetap sehat saat berkembang.

## Teori Inti

### Kenapa Struktur Penting

Penempatan file yang acak membuat code yang sebenarnya lumayan pun menjadi sulit dikerjakan.

Project yang terstruktur dengan baik lebih mudah untuk:

- menemukan entry point
- memahami tanggung jawab tiap bagian
- menguji bagian sistem secara terpisah
- meng-onboard developer baru

Struktur yang baik bukan soal terlihat canggih.
Struktur yang baik soal mudah dinavigasi.

### Komponen Project yang Umum

Sebuah project Python sederhana bisa berisi:

```text
my_project/
  app/
    __init__.py
    main.py
    utils.py
  tests/
    test_main.py
  README.md
  requirements.txt
```

Ketika project tumbuh, kamu juga bisa melihat:

- `docs/`
- `.venv/`
- `pyproject.toml`
- file konfigurasi
- folder data atau aset

### Contoh Struktur yang Lebih Lengkap

Project yang lebih besar sering punya layout seperti ini:

```text
my_project/
  src/
    my_project/
      __init__.py
      cli.py
      core.py
  tests/
    test_core.py
  docs/
  pyproject.toml
  README.md
  .gitignore
```

Struktur dengan `src/` membantu memastikan modul hanya diimpor ketika project diinstal atau dijalankan dari root yang benar.

### Package vs Module

Sebuah package Python adalah folder dengan `__init__.py`.
Module adalah file Python tunggal.
Dalam project yang terstruktur, kamu biasanya membuat package untuk logika utama dan module kecil untuk utilitas.

### Kenapa `src/` Layout Bermanfaat

`src/` layout mencegah import kode project secara tidak sengaja ketika sedang berada di direktori lain.
Itu juga memisahkan source dari file konfigurasi dan dokumentasi.

### Kapan Menggunakan `src/` Layout

Layout ini sangat berguna ketika project bisa dijalankan di banyak cara atau dikonsumsi sebagai library.
Jika kamu hanya membuat script sekali pakai, layout sederhana tanpa `src/` mungkin masih wajar.
Tapi untuk project yang ingin diuji, didistribusikan, atau dikembangkan oleh tim, `src/` membantu membuat batas antara kode aplikasi dan artefak build.

### Struktur Berdasarkan Tipe Project

Struktur project juga bergantung pada tujuan utama:

- Library: fokus pada `src/<package>/` dan `tests/`.
- Aplikasi web: tambahkan `app/`, `templates/`, `static/`, dan `config/`.
- Command-line tool: gunakan `src/<package>/cli.py` dengan entry point yang jelas.

### Penamaan File dan Folder

Penamaan yang jelas membantu orang lain langsung memahami tujuan file.
Contoh nama yang baik:

- `cli.py` untuk command-line interface
- `config.py` untuk pengaturan
- `models.py` untuk definisi data
- `service.py` untuk logika bisnis

Hindari nama samar seperti `stuff.py` atau `helper.py` jika fungsinya tidak jelas.

### Contoh Nyata: Dari Script ke Package

Bayangkan sebuah script kecil `weather.py` yang mengambil data dan menampilkan hasil.
Kalau aplikasi tumbuh, lebih baik pecah menjadi:

```text
weather_app/
  src/
    weather_app/
      __init__.py
      cli.py
      api.py
      formatter.py
  tests/
    test_api.py
    test_formatter.py
```

Dengan begitu, setiap bagian memiliki tanggung jawabnya sendiri dan test lebih mudah ditulis.

### Prinsip Pemisahan yang Umum

Project yang sehat biasanya mengikuti beberapa prinsip:

- entry point harus mudah ditemukan
- logika reusable jangan bercampur dengan script sekali pakai
- test sebaiknya terpisah dari application code
- konfigurasi harus eksplisit
- nama file dan folder harus membantu orientasi dengan cepat

Ini tidak berarti semua project harus punya layout yang sama persis.
Artinya hanya satu: batas tanggung jawab sebaiknya dirancang dengan sengaja.

### Kenapa `main.py` Sering Ada

`main.py` sering berperan sebagai entry point.

File ini membantu menjawab:

`Program ini mulai dari mana?`

Pertanyaan itu semakin penting ketika project memiliki semakin banyak file dan tanggung jawab.

### Logika Reusable vs Logika Eksekusi

Salah satu kesalahan umum adalah mencampur semuanya dalam satu tempat:

- input/output
- business rules
- helper function
- startup code

Biasanya lebih baik memisahkan:

- logika reusable ke module sendiri
- logika eksekusi ke entry point
- test ke lokasi yang jelas

Pemisahan seperti ini membuat perubahan berikutnya lebih aman.

### Penamaan dan Kejelasan

Struktur yang baik membantu orang memahami project dengan cepat.

Orang baru seharusnya bisa melihat:

- bagaimana cara menjalankan aplikasi
- di mana mengubah logika utama
- di mana menambahkan test
- di mana mencari konfigurasi

Nama file dan folder seharusnya membuat jawaban itu lebih mudah ditemukan.

### Studi Kasus: Dari Script Menjadi Paket

Bayangkan aplikasi awalnya hanya satu file `weather.py`.
Seiring fitur bertambah, kamu bisa memecahnya menjadi:

```text
my_app/
  src/
    my_app/
      __init__.py
      cli.py
      service.py
      formatter.py
  tests/
    test_service.py
    test_formatter.py
``` 

Struktur ini membuat setiap tanggung jawab lebih jelas dan memudahkan test otomatis.

### Kapan Mengubah Struktur

Struktur project bukan sesuatu yang harus berubah setiap saat.
Ubah struktur ketika:

- kode menjadi sulit dijelajahi
- test sulit ditempatkan
- komponen mulai memiliki tanggung jawab berbeda

Lebih baik melakukan perubahan struktur secara terencana daripada karena merasa ingin coba-coba.

## Walkthrough Singkat

Bayangkan ada aplikasi command-line kecil:

```text
weather_app/
  app/
    __init__.py
    main.py
    api.py
    formatting.py
  tests/
    test_formatting.py
  README.md
  pyproject.toml
```

Kemungkinan tanggung jawabnya:

- `main.py` menjalankan aplikasi
- `api.py` mengambil atau memproses data cuaca
- `formatting.py` menyiapkan output yang enak dibaca
- `tests/` memeriksa perilaku yang diharapkan

Bahkan pemisahan sederhana seperti ini sudah membuat pertumbuhan project jauh lebih mudah.

### Contoh Struktur `src/`

```text
my_project/
  src/
    my_project/
      __init__.py
      main.py
      utils.py
  tests/
    test_utils.py
  pyproject.toml
  README.md
```

Contoh `main.py`:

```python
from my_project.utils import greet

if __name__ == "__main__":
    print(greet("World"))
```

## Aturan Praktis

- buat entry point mudah ditemukan
- kelompokkan logika yang saling terkait
- hindari satu file samar yang menampung banyak helper acak
- beri test tempat yang konsisten
- lebih baik struktur sederhana yang jelas daripada struktur dalam yang terasa pintar tetapi membingungkan

## Mental Model

Struktur project adalah alat komunikasi.

Struktur menyampaikan:

- niat
- batas tanggung jawab
- ownership

Project yang terstruktur dengan baik membantu pembaca memahami bukan hanya apa yang dilakukan code, tetapi juga di mana setiap concern seharusnya hidup.

## Kesalahan yang Sering Terjadi

- menumpuk semua logika ke satu file
- mencampur test dengan production code secara acak
- memberi nama file terlalu samar seperti `helpers.py` atau `stuff.py`
- membuat folder bertingkat dalam tanpa tujuan yang jelas
- terlalu sering mengubah struktur tanpa alasan yang kuat

## Prompt Latihan

1. Kenapa struktur makin penting saat project bertambah besar?
2. Kenapa test biasanya sebaiknya punya tempat yang jelas?
3. Apa yang dibantu oleh entry point yang baik?
4. Kenapa struktur folder yang terlalu dalam juga bisa menjadi masalah?

## Mini Exercise

1. Gambar layout folder untuk aplikasi CLI kecil.
2. Ambil ide script satu file lalu pecah menjadi file entry point dan satu helper module.
3. Tentukan di mana test dan dokumentasi akan diletakkan pada project itu.

## Checklist Penguasaan

- Saya paham kenapa struktur memengaruhi maintainability.
- Saya bisa menjelaskan tujuan layout project sederhana.
- Saya tahu kenapa entry point dan reusable module perlu dipisahkan.
- Saya paham kenapa test perlu punya tempat yang jelas.
- Saya tahu bahwa desain folder juga bagian dari desain software.

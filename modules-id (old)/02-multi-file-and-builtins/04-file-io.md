# Modul 9: File I/O

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa arti File I/O dalam programming praktis
- bagaimana Python membaca, menulis, dan menambahkan isi file
- kenapa pekerjaan dengan file butuh perhatian terhadap path, encoding, dan error
- bagaimana context manager membuat pekerjaan dengan file lebih aman

## Ide Besar

File I/O berarti input dan output yang melibatkan file.

Program sering perlu:

- membaca konfigurasi
- menyimpan hasil
- memuat dataset
- menulis log

Memahami file handling itu penting karena program nyata sering memindahkan data antara memori dan penyimpanan permanen.

## Kenapa Ini Penting

Berbeda dari variabel di memori, file hidup di luar program yang sedang berjalan.
Artinya pekerjaan dengan file membawa perhatian tambahan:

- file bisa saja tidak ada
- izin akses bisa menolak operasi
- isi file bisa rusak atau tidak sesuai format
- path bisa berbeda antar environment

File I/O adalah tempat di mana script sederhana mulai benar-benar berinteraksi dengan dunia nyata.

## Teori Inti

### Membaca File

Pola umum untuk membaca file:

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    content = file.read()
```

`read()` memuat seluruh isi file menjadi satu string.

Kalau kamu ingin memproses file per baris, pola seperti ini sering lebih cocok:

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    for line in file:
        print(line.strip())
```

### Menulis File

Mode menulis membuat atau mengganti isi file:

```python
with open("notes.txt", "w", encoding="utf-8") as file:
    file.write("Hello, world!")
```

Hati-hati: `"w"` akan mengganti isi lama file.

### Mode Append

Mode append menambahkan isi di akhir file, bukan mengganti seluruh isi.

```python
with open("notes.txt", "a", encoding="utf-8") as file:
    file.write("\nBaris baru")
```

Mode ini berguna untuk log, riwayat, atau hasil yang dikumpulkan bertahap.

### Kenapa `with` Penting

Statement `with` membuat context manager.

Ini membantu memastikan resource dibersihkan dengan benar.
Dalam pekerjaan file, artinya file akan ditutup otomatis bahkan jika terjadi error.

Tanpa `with`, kamu harus ingat menutup file secara manual.
Itu mudah terlupa dan bisa menyebabkan masalah halus.

### Mode yang Umum

Beberapa mode file yang sering dipakai:

- `"r"` read
- `"w"` write dan mengganti isi lama
- `"a"` append
- `"rb"` read binary
- `"wb"` write binary

Text mode cocok untuk string.
Binary mode dipakai untuk file seperti gambar, PDF, atau data non-teks lainnya.

### Encoding Itu Penting

File teks memerlukan encoding agar Python tahu bagaimana byte harus diterjemahkan menjadi karakter.

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    content = file.read()
```

`utf-8` adalah default yang kuat untuk banyak file teks modern.

### Penanganan Path

Menggunakan `pathlib` sering lebih jelas dan lebih aman daripada path string manual.

```python
from pathlib import Path

path = Path("data") / "notes.txt"
```

Ini membuat penyusunan path lebih mudah dibaca dan lebih portable.

### Error File Adalah Hal Normal

Beberapa exception yang sering muncul saat bekerja dengan file:

- `FileNotFoundError`
- `PermissionError`
- `IsADirectoryError`

Karena itu, file I/O perlu diperlakukan dengan kehati-hatian yang sama seperti error handling lainnya.

## Walkthrough Singkat

Bayangkan ada penulis laporan sederhana:

```python
from pathlib import Path

report_path = Path("reports") / "summary.txt"
report_path.parent.mkdir(exist_ok=True)

with report_path.open("w", encoding="utf-8") as file:
    file.write("Daily summary\n")
    file.write("Tasks completed: 5\n")
```

Contoh ini menunjukkan:

- `pathlib` untuk membangun path
- pembuatan folder sebelum menulis file
- output teks dengan encoding yang eksplisit
- penanganan file yang aman lewat context manager

## Aturan Praktis

- lebih aman memakai `with` saat bekerja dengan file
- ingat bahwa `"w"` akan menimpa isi lama
- gunakan `utf-8` kecuali ada alasan lain
- hindari hardcode path rapuh jika `pathlib` bisa membuatnya lebih jelas
- anggap operasi file bisa gagal dan rancang code dengan asumsi itu

## Mental Model

File I/O menghubungkan programmu dengan data persisten di luar memori.

Artinya:

- kemungkinan gagal lebih besar
- path penting
- izin akses penting
- cleanup penting

Bayangkan file handling sebagai proses melintasi batas antara programmu dan lingkungan luar.

## Kesalahan yang Sering Terjadi

- lupa bahwa `"w"` akan menimpa isi file yang lama
- lupa menutup file jika tidak memakai `with`
- menganggap file pasti selalu ada
- hardcode path yang rapuh
- membaca file yang sangat besar sekaligus ketika pemrosesan per baris akan lebih aman

## Prompt Latihan

1. Apa arti File I/O?
2. Kenapa `with open(...)` lebih baik daripada open/close manual dalam kebanyakan kasus?
3. Apa perbedaan `"w"` dan `"a"`?
4. Kenapa `pathlib` sering lebih baik daripada path string manual?

## Mini Exercise

1. Tulis teks ke sebuah file lalu baca lagi isi file itu.
2. Tambahkan satu baris baru ke file yang sudah ada.
3. Gunakan `pathlib` untuk membangun path di dalam folder `data`.

## Checklist Penguasaan

- Saya bisa menjelaskan dasar membaca dan menulis file.
- Saya paham kenapa `with` penting.
- Saya tahu mode file yang umum dan kapan memakainya.
- Saya paham kenapa encoding penting untuk file teks.
- Saya tahu bahwa file handling butuh kesadaran terhadap path dan error.

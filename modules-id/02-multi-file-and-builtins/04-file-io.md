# Modul 9: File I/O

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa arti File I/O
- bagaimana Python membaca dan menulis file
- kenapa penanganan file perlu kehati-hatian
- bagaimana context manager membuat pekerjaan dengan file lebih aman

## Ide Besar

File I/O berarti input dan output yang berhubungan dengan file.

Program sering perlu:

- membaca konfigurasi
- menyimpan hasil
- memuat dataset
- menulis log

Memahami file handling sangat penting untuk programming di dunia nyata.

## Teori Inti

### Membaca File

```python
with open("notes.txt", "r", encoding="utf-8") as file:
    content = file.read()
```

### Menulis File

```python
with open("notes.txt", "w", encoding="utf-8") as file:
    file.write("Hello, world!")
```

### Mode Append

```python
with open("notes.txt", "a", encoding="utf-8") as file:
    file.write("\nBaris baru")
```

### Kenapa `with` Penting

Statement `with` membuat context manager.

Ini membantu memastikan resource dibersihkan dengan benar.
Dalam pekerjaan file, artinya file akan ditutup otomatis bahkan jika terjadi error.

### Mode yang Umum

- `"r"` read
- `"w"` write dan mengganti isi lama
- `"a"` append
- `"rb"` read binary
- `"wb"` write binary

### Penanganan Path

Menggunakan `pathlib` sering lebih jelas dibanding menyusun path sebagai string manual.

```python
from pathlib import Path

path = Path("data") / "notes.txt"
```

## Mental Model

File I/O menghubungkan programmu dengan data persisten di luar memori.

Artinya:

- kemungkinan gagal lebih besar
- path penting
- izin akses penting
- cleanup penting

## Kesalahan yang Sering Terjadi

- lupa bahwa `"w"` akan menimpa isi file yang lama
- lupa menutup file jika tidak memakai `with`
- menganggap file pasti selalu ada
- hardcode path yang rapuh

## Prompt Latihan

1. Apa arti File I/O?
2. Kenapa `with open(...)` lebih baik daripada open/close manual dalam kebanyakan kasus?
3. Apa perbedaan `"w"` dan `"a"`?

## Checklist Penguasaan

- Saya bisa menjelaskan dasar membaca dan menulis file.
- Saya paham kenapa `with` penting.
- Saya tahu mode file yang umum.
- Saya paham bahwa file handling membutuhkan kesadaran terhadap error.

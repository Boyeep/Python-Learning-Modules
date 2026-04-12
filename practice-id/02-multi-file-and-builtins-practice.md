# Latihan Track 2: Multi-File dan Built-ins

Workbook ini mencakup latihan untuk:

- Modul 6: Modules dan `__main__`
- Modul 7: Docstring
- Modul 8: Python Standard Library
- Modul 9: File I/O

## Latihan Modul 6: Modules dan `__main__`

### Pertanyaan Cepat

1. Masalah apa yang diselesaikan oleh module?
2. Apa yang terjadi secara berbeda ketika file di-import dibanding dijalankan langsung?
3. Kenapa `if __name__ == "__main__":` berguna?

### Tugas Coding Singkat

1. Buat file `math_utils.py` dengan dua function kecil.
2. Buat file lain yang meng-import dan memakai function tersebut.
3. Tambahkan `main()` function dan blok `__main__` ke salah satu file.

## Latihan Modul 7: Docstring

### Pertanyaan Cepat

1. Apa perbedaan docstring dan comment?
2. Hal pertama apa yang seharusnya dijelaskan docstring yang baik?
3. Kenapa docstring penting di codebase yang lebih besar?

### Tugas Coding Singkat

1. Tulis function tanpa docstring lalu perbaiki dengan docstring.
2. Tambahkan docstring ke satu module dan dua function.
3. Ubah satu docstring yang lemah menjadi lebih jelas.

## Latihan Modul 8: Python Standard Library

### Pertanyaan Cepat

1. Apa itu standard library?
2. Kenapa sebaiknya memeriksa standard library sebelum meng-install package lain?
3. Apa salah satu kegunaan praktis `json`?

### Tugas Coding Singkat

1. Gunakan `math` untuk menghitung akar kuadrat.
2. Gunakan `random` untuk mensimulasikan lemparan dadu.
3. Gunakan `datetime` untuk mencetak tanggal dan waktu saat ini.
4. Gunakan `json` untuk encode dan decode dictionary kecil.
5. Gunakan `pathlib` untuk mengecek apakah sebuah file ada.

## Latihan Modul 9: File I/O

### Pertanyaan Cepat

1. Apa arti File I/O?
2. Kenapa `with open(...)` biasanya pola yang paling aman?
3. Apa perbedaan mode write dan append?

### Tugas Coding Singkat

1. Buat file lalu tulis tiga baris ke dalamnya.
2. Baca kembali file tersebut dan cetak isinya.
3. Tambahkan satu baris lagi dengan append.
4. Gunakan `pathlib` untuk membuat path file, bukan penggabungan string manual.

## Mini Challenge

Buat project catatan kecil dengan dua file:

- satu file menyimpan function reusable
- satu file menjalankan program

Project itu seharusnya:

- memungkinkan user menambah catatan
- menyimpan catatan ke file teks
- membaca semua catatan yang tersimpan
- memakai docstring pada helper function utama

## Self-Check

- Apakah saya bisa membagi code ke beberapa file tanpa bingung?
- Apakah saya bisa menjelaskan kapan memakai built-in module dibanding package pihak ketiga?

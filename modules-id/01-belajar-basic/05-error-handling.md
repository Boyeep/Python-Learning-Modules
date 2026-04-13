# Modul 5: Error Handling

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu exception dan bagaimana bedanya dengan syntax error
- bagaimana `try`, `except`, `else`, dan `finally` bekerja bersama
- kenapa error handling sebaiknya spesifik dan disengaja
- kapan masuk akal untuk melempar exception sendiri

## Ide Besar

Error bukan gangguan aneh dari luar dunia programming.
Error adalah bagian normal dari perilaku program.

Developer yang baik tidak berpura-pura bahwa error tidak akan pernah terjadi.
Mereka menentukan error mana yang bisa ditangani, mana yang perlu dilaporkan, dan mana yang harus menghentikan program.

## Kenapa Ini Penting

Program berinteraksi dengan banyak hal yang tidak selalu bisa diandalkan:

- input user
- file
- respons network
- library eksternal

Semua hal itu bisa gagal.
Kalau kamu tidak merencanakan kegagalan, program akan jadi rapuh dan membingungkan.

Kalau kamu terlalu agresif menangkap semua error, kamu justru bisa menyembunyikan bug yang penting.

Error handling adalah soal keseimbangan.

## Teori Inti

### Syntax Error vs Exception

Syntax error berarti Python tidak bisa memahami struktur code itu sendiri.

Exception berarti code-nya valid secara syntax, tetapi sesuatu berjalan salah saat dieksekusi.

Contohnya:

- lupa titik dua setelah `if` bisa menyebabkan syntax error
- membagi dengan nol akan menimbulkan `ZeroDivisionError`

Perbedaan ini penting karena exception sering bisa ditangani oleh code, sedangkan syntax error harus diperbaiki di source code.

### Exception yang Umum

Beberapa exception yang sering ditemui pemula:

- `ValueError`
- `TypeError`
- `ZeroDivisionError`
- `FileNotFoundError`
- `KeyError`
- `IndexError`

Mengenali nama-nama ini membantu kamu memahami apa yang sedang dikeluhkan program.

### `try` dan `except` Dasar

Gunakan `try` untuk menandai code yang berpotensi gagal, lalu `except` untuk menentukan responsnya.

```python
try:
    number = int("hello")
except ValueError:
    print("Itu bukan integer yang valid")
```

Dengan pola ini, program bisa menangani masalah yang dapat diprediksi tanpa langsung crash.

### `else` dan `finally`

Python juga menyediakan dua bagian tambahan yang berguna:

- `else` berjalan hanya jika tidak ada exception
- `finally` berjalan baik exception terjadi maupun tidak

```python
try:
    result = 10 / 2
except ZeroDivisionError:
    print("Tidak bisa membagi dengan nol")
else:
    print(result)
finally:
    print("Done")
```

Ini berguna ketika kamu ingin memisahkan dengan jelas logika gagal, logika sukses, dan logika cleanup.

### Tangkap Exception yang Spesifik

Menangkap exception yang spesifik biasanya lebih baik daripada menangkap semuanya.

Lebih baik:

```python
try:
    age = int(user_input)
except ValueError:
    print("Masukkan angka yang valid")
```

Lebih berisiko:

```python
try:
    age = int(user_input)
except Exception:
    print("Ada masalah")
```

Versi yang terlalu luas bisa menyembunyikan bug yang sebenarnya tidak ada hubungannya dengan konversi input.

### Melempar Exception Sendiri

Code milikmu sendiri juga bisa melempar exception ketika ada kondisi yang tidak boleh dibiarkan.

```python
def set_age(age):
    if age < 0:
        raise ValueError("Umur tidak boleh negatif")
```

Ini adalah cara untuk menjaga aturan program tetap konsisten.

### Validasi dan Recovery

Tidak semua error harus ditangani di tempat yang sama.

Kadang kamu ingin:

- memvalidasi lebih awal agar error tidak terjadi
- menangkap error lalu menampilkan pesan yang ramah
- membiarkan program gagal dengan jelas karena bug-nya memang harus diperbaiki

Keputusan ini tergantung konteks.

## Walkthrough Singkat

Bayangkan ada program yang meminta angka:

```python
text = input("Masukkan angka: ")

try:
    number = int(text)
except ValueError:
    print("Input harus berupa digit")
else:
    print(number * 2)
```

Pola ini kuat untuk pemula karena:

- baris yang berisiko kecil dan jelas
- tipe exception yang ditangkap spesifik
- jalur sukses tetap mudah dibaca

## Aturan Praktis

- buat blok `try` sekecil mungkin
- tangkap exception yang paling spesifik yang kamu tahu
- gunakan exception untuk situasi yang benar-benar exceptional, bukan untuk alur biasa
- lempar exception ketika input yang salah akan merusak kebenaran program
- jangan diamkan error kecuali kamu benar-benar tahu kenapa itu aman

## Mental Model

Exception adalah cara Python mengatakan, "Aku tidak bisa melanjutkan secara normal dengan asumsi yang sekarang."

Error handling memberi kamu kesempatan untuk menentukan apa yang harus terjadi setelah itu:

- memulihkan keadaan
- membersihkan resource
- memberi tahu user
- menghentikan program dengan jelas

## Kesalahan yang Sering Terjadi

- terlalu cepat memakai `except Exception`
- menyembunyikan error dengan pesan umum dan kehilangan penyebab aslinya
- menaruh terlalu banyak code di dalam blok `try`
- mencampur validasi dengan error handling
- memakai exception sebagai cara utama mengatur alur normal program

## Prompt Latihan

1. Kenapa `except ValueError` sering lebih baik daripada `except Exception`?
2. Apa peran `finally`, bahkan saat tidak ada error?
3. Kapan code milikmu sendiri sebaiknya melempar exception daripada diam-diam melanjutkan?
4. Apa perbedaan syntax error dan exception?

## Mini Exercise

1. Tulis code yang menangkap `ZeroDivisionError`.
2. Tulis function yang melempar `ValueError` jika menerima harga negatif.
3. Buat script kecil yang meminta integer lalu menampilkan pesan yang membantu jika input tidak valid.

## Checklist Penguasaan

- Saya paham apa itu exception.
- Saya bisa menjelaskan perbedaan syntax error dan runtime exception.
- Saya bisa membaca dan menulis blok `try`/`except` dasar.
- Saya tahu kenapa menangkap error terlalu luas bisa berbahaya.
- Saya paham bahwa melempar exception bisa menjaga kebenaran program.

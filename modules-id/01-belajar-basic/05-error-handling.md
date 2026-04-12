# Modul 5: Error Handling

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- kenapa error bisa terjadi
- apa itu exception
- bagaimana `try`, `except`, `else`, dan `finally` bekerja
- kenapa error handling harus dilakukan dengan sengaja, bukan asal tangkap

## Ide Besar

Program tidak gagal hanya karena developer buruk.
Program gagal karena dunia nyata memang tidak selalu bisa diprediksi:

- user memasukkan input yang salah
- file hilang
- konversi gagal
- network call timeout

Error handling adalah cara agar program tetap merespons dengan aman.

## Teori Inti

### Exception

Di Python, banyak runtime error direpresentasikan sebagai exception.

Contoh:

- `ValueError`
- `TypeError`
- `KeyError`
- `FileNotFoundError`

### Penanganan Dasar

```python
try:
    number = int("hello")
except ValueError:
    print("Itu bukan integer yang valid")
```

### Struktur Lengkap

```python
try:
    result = 10 / 2
except ZeroDivisionError:
    print("Tidak bisa membagi dengan nol")
else:
    print("Berhasil:", result)
finally:
    print("Bagian ini selalu jalan")
```

Artinya:

- `try`: code yang mungkin gagal
- `except`: apa yang dilakukan kalau gagal
- `else`: apa yang dilakukan kalau tidak ada exception
- `finally`: cleanup yang harus selalu berjalan

### Kenapa Tidak Boleh Menangkap Semua Error Sembarangan

Ini praktik yang buruk:

```python
try:
    do_something()
except:
    print("Error")
```

Kenapa berisiko:

- menyembunyikan masalah sebenarnya
- mempersulit debugging
- bisa menangkap error yang sebenarnya tidak ingin kamu tangkap

Lebih baik tangkap tipe exception yang spesifik jika memungkinkan.

### Melempar Exception Sendiri

Kamu juga bisa membuat exception sendiri dengan `raise`.

```python
def divide(a, b):
    if b == 0:
        raise ValueError("b tidak boleh nol")
    return a / b
```

Ini berguna ketika function harus menegakkan aturan tertentu.

## Mental Model

Error handling bukan berarti berharap semuanya salah.
Error handling berarti mendesain apa yang harus dilakukan program ketika hal buruk benar-benar terjadi.

## Kesalahan yang Sering Terjadi

- menangkap semua exception tanpa paham penyebabnya
- mengabaikan pesan error
- terlalu sering memakai exception untuk alur normal
- lupa membersihkan resource

## Prompt Latihan

1. Apa itu exception?
2. Kenapa `except ValueError` biasanya lebih baik daripada `except` kosong?
3. Apa tujuan dari `finally`?

## Checklist Penguasaan

- Saya paham apa itu exception di Python.
- Saya bisa membaca blok `try`/`except` dan menjelaskan perilakunya.
- Saya tahu kenapa menangkap error terlalu luas bisa berbahaya.
- Saya paham bahwa software yang baik merencanakan kemungkinan gagal.

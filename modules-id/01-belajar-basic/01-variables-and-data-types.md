# Modul 1: Variables dan Data Types

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa yang sebenarnya direpresentasikan oleh variabel di Python
- bagaimana memilih nama variabel yang jelas dan valid
- bagaimana tipe data bawaan memengaruhi operasi yang bisa dilakukan
- kenapa kesadaran terhadap tipe mencegah banyak bug dasar
- kapan value perlu dikonversi ke tipe lain

## Ide Besar

Programming pada dasarnya bekerja dengan value.

Variabel memberi nama pada value tersebut, dan tipe data memberi tahu Python bagaimana value itu seharusnya diperlakukan.

Kalau kamu paham jenis data yang sedang dipegang, banyak keputusan dalam programming akan terasa jauh lebih masuk akal.

## Kenapa Ini Penting

Hampir semua program Python menerima data, mengubah data, lalu menghasilkan sesuatu.

Itu berarti kamu terus-menerus perlu menjawab pertanyaan seperti:

- apakah ini teks atau angka?
- apakah dua value ini bisa dibandingkan langsung?
- apakah ini hasil akhir, atau hanya placeholder sementara?

Banyak kebingungan pemula muncul karena kehilangan jejak jawaban dari pertanyaan-pertanyaan itu.

## Teori Inti

### Variabel Mengikat Nama ke Value

Variabel adalah nama yang menunjuk ke sebuah value.

```python
name = "Alya"
age = 21
is_student = True
```

Di sini, `name`, `age`, dan `is_student` adalah label.
Value yang sebenarnya adalah `"Alya"`, `21`, dan `True`.

Ini terlihat sederhana, tetapi penting:

- kamu menulis nama variabel di code
- Python bekerja terhadap value yang dirujuk oleh nama itu

### Aturan Penamaan Variabel

Nama variabel sebaiknya membantu pembaca memahami peran data yang disimpan.

Aturan dasar:

- nama tidak boleh diawali angka
- nama tidak boleh mengandung spasi
- nama sebaiknya bukan keyword Python
- nama yang deskriptif biasanya lebih baik daripada nama yang samar

Contoh:

```python
age = 18
total_price = 99.5
is_logged_in = True
```

Contoh yang kurang membantu:

```python
x = 18
data = 99.5
value = True
```

Contoh itu tidak selalu salah, tetapi sering membuat pembaca harus menebak arti variabelnya.

### Tipe Data Bawaan yang Umum

Kamu tidak perlu menghafal semua tipe sekaligus.
Mulailah dari tipe yang paling sering dipakai:

- `int`
  Bilangan bulat seperti `1`, `25`, dan `-10`
- `float`
  Bilangan desimal seperti `3.14` dan `0.5`
- `str`
  Value teks seperti `"hello"` atau `"123"`
- `bool`
  Value logika: `True` atau `False`
- `NoneType`
  Tipe dari `None`, yang biasanya berarti "belum ada value" atau "tidak ada sesuatu yang bermakna di sini"

Setiap tipe ada karena punya peran berbeda.
Angka dipakai untuk perhitungan, string untuk teks, boolean untuk keputusan, dan `None` sering dipakai untuk mewakili ketiadaan.

### Cara Berpikir "Primitive Type" di Berbagai Bahasa

Kalau kamu datang dari slide atau bahasa lain, kamu mungkin sering mendengar kategori seperti:

- integer
- float atau double
- boolean
- char
- string

Di Python, ide itu dipetakan sedikit berbeda:

- integer -> `int`
- angka desimal -> `float`
- boolean -> `bool`
- karakter tunggal -> biasanya `str` dengan panjang satu
- string -> `str`

Jadi walaupun beberapa bahasa memisahkan `char` dan `string`, Python biasanya menganggap keduanya sebagai string dengan panjang berbeda.

### Assignment Bisa Mengubah Rujukan Nama

Assignment di Python tidak membuat variabel terkunci selamanya.

```python
score = 80
score = 95
```

Setelah baris kedua, `score` merujuk ke `95`, bukan lagi `80`.

Ini berguna karena program memang sering memperbarui state.
Tetapi ini juga berarti kamu perlu memberi nama variabel dengan hati-hati agar maknanya tetap jelas.

### Dynamic Typing

Python bersifat dynamically typed.
Kamu tidak perlu mendeklarasikan tipe secara terpisah sebelum memberi value.

```python
value = 10
value = "ten"
```

Satu nama bisa merujuk ke tipe yang berbeda di waktu yang berbeda.

Fleksibilitas ini kuat, tetapi menuntut kamu untuk sadar terhadap tipe value saat ini, bukan hanya mengingat tipe yang pernah dipakai beberapa baris sebelumnya.

### Kesadaran Tipe dalam Expression Nyata

Tipe data yang berbeda mendukung operasi yang berbeda.

```python
count = 3
title = "Python"
price = 19.99
```

- angka bisa dijumlahkan, dikurangi, dikalikan, dan dibandingkan
- string bisa digabung, di-slice, dan diubah dengan method string
- boolean sering dipakai di `if` statement dan loop

Kesalahan tipe sering terlihat seperti ini:

```python
"5" + "2"   # hasilnya "52"
5 + 2       # hasilnya 7
```

Kedua baris valid, tetapi maknanya sangat berbeda.

### Konversi Tipe

Kadang kamu perlu mengubah tipe secara eksplisit.

Ini sangat umum saat menerima input dari user:

```python
age_text = input("Masukkan umurmu: ")
age_number = int(age_text)
```

`input()` selalu menghasilkan string.
Kalau kamu ingin melakukan perhitungan, biasanya kamu perlu memakai `int()` atau `float()`.

Fungsi konversi yang umum:

- `int()`
- `float()`
- `str()`
- `bool()`

Tetapi hati-hati: tidak semua value bisa dikonversi dengan masuk akal.

## Walkthrough Singkat

Bayangkan kamu sedang menulis script checkout sederhana:

```python
item_name = "Notebook"
quantity = 3
unit_price = 4.5
is_discounted = True

total = quantity * unit_price
print(f"{item_name}: {total}")
```

Setiap variabel punya peran yang jelas:

- `item_name` adalah teks
- `quantity` adalah bilangan bulat
- `unit_price` adalah angka desimal
- `is_discounted` adalah value ya/tidak

Karena tipenya sesuai, code terasa alami untuk dibaca.

## Aturan Praktis

- gunakan nama yang menjelaskan peran value, bukan hanya tipenya
- jangan anggap input user pasti numerik sebelum dikonversi
- perlakukan `"5"` dan `5` sebagai value yang benar-benar berbeda
- gunakan `None` hanya ketika ketiadaan value memang bermakna
- gunakan `snake_case` untuk penamaan variabel biasa di Python

## Built-in yang Berguna

Built-in berikut membantu kamu memeriksa atau mengonversi value:

```python
type("hello")
isinstance(42, int)
float("3.14")
str(99)
```

`type()` menunjukkan tipe tepatnya.
`isinstance()` sering lebih berguna saat kamu ingin memeriksa apakah sebuah value termasuk jenis tertentu.

## Mental Model

Bayangkan variabel sebagai sticky note yang ditempel pada value.

Sticky note itu adalah nama variabel.
Objek yang ditempeli adalah value sebenarnya.

Ketika kamu menulis assignment baru, kamu tidak mengubah nama variabelnya.
Kamu hanya menyuruh nama itu menunjuk ke value lain.

## Kesalahan yang Sering Terjadi

- mengira angka yang tercetak pasti disimpan sebagai tipe angka
- lupa bahwa `input()` selalu menghasilkan string
- mencampur teks dan angka tanpa konversi
- memakai nama variabel terlalu samar seperti `data` atau `value`
- menganggap `None`, `0`, dan `""` punya arti yang sama

## Prompt Latihan

1. Jelaskan perbedaan `int`, `float`, `str`, dan `bool` dengan kata-katamu sendiri.
2. Kenapa `"25"` berbeda dari `25`, walaupun terlihat mirip?
3. Kenapa dynamic typing terasa nyaman di awal tetapi menuntut perhatian lebih saat program membesar?
4. Apa yang membuat nama variabel terasa jelas dan deskriptif?
5. Beri contoh variabel pada program nyata yang mungkin sebaiknya diawali dengan `None`.

## Mini Exercise

1. Buat variabel untuk nama seseorang, umur, tinggi badan, dan status keanggotaan.
2. Ubah string `"42"` menjadi integer, lalu tambahkan `8`.
3. Tulis snippet singkat yang mencetak tipe dari tiga value berbeda.
4. Ganti tiga nama variabel yang samar menjadi nama Python yang lebih jelas.

## Checklist Penguasaan

- Saya bisa menjelaskan bahwa variabel adalah nama yang terikat ke value.
- Saya tahu aturan dasar penamaan variabel yang jelas.
- Saya bisa menyebutkan tipe data Python yang paling umum.
- Saya paham kenapa tipe memengaruhi operasi yang valid.
- Saya tahu kapan perlu melakukan konversi tipe secara eksplisit.
- Saya bisa mengenali kesalahan dasar yang melibatkan string, angka, dan `None`.

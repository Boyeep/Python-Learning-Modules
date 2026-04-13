# Track 1: Belajar Basic

Track ini adalah fondasi untuk memahami cara kerja programming sebelum masuk ke project yang lebih besar.

Tujuannya bukan hanya supaya kamu bisa menulis syntax Python, tetapi juga supaya kamu bisa berpikir seperti programmer:

- memahami masalah
- memecah masalah menjadi langkah
- mengubah langkah menjadi code
- mengelola data
- mengontrol alur program
- menangani error dengan aman

## Lesson dalam Track Ini

1. [Variables dan Data Types](./01-variables-and-data-types.md)
2. [Operator dan Manipulasi String](./02-operators-and-string-manipulation.md)
3. [Conditional dan Control Flow](./03-conditionals-and-control-flow.md)
4. [Data Structure dan Function](./04-data-structures-and-functions.md)
5. [Error Handling](./05-error-handling.md)

## Cara Memakai Track Ini

README ini berfungsi sebagai overview besar untuk seluruh Module 1.

Gunakan file ini untuk:

- melihat peta konsep dasarnya
- memahami hubungan antar topik
- mendapat gambaran sebelum membaca lesson satu per satu

Setelah itu, lanjutkan ke file lesson detail agar tiap bagian dipelajari lebih dalam.

## Section 1 — Basic Programming

### 1. Apa Itu Programming

Programming adalah proses memberi instruksi ke komputer untuk menyelesaikan masalah.

Komputer tidak memahami maksud yang samar.
Komputer hanya memahami instruksi yang jelas, logis, dan terstruktur.

Karena itu, tujuan utama belajar programming bukan sekadar menghafal syntax, tetapi belajar mengubah masalah menjadi solusi berbasis logika.

### 2. Bagaimana Program Bekerja

Alur dasar hampir semua program bisa diringkas menjadi:

`Input -> Process -> Output`

Contoh sederhana:

- user memasukkan angka
- program menghitung angka tersebut
- hasilnya ditampilkan ke layar

Pola ini muncul terus-menerus dalam dunia programming, dari kalkulator sederhana sampai aplikasi besar.

### 3. Logika Programming

Fokus utama programmer bukan pertama-tama pada bahasa, tetapi pada logika.

Programmer harus bisa:

- memahami masalah
- memecahnya menjadi langkah kecil
- menyusun langkah yang masuk akal
- mengimplementasikan langkah itu ke dalam code

Kalau logika dasarnya kuat, belajar bahasa baru akan jauh lebih mudah.

## Section 2 — Variables & Data Types

### 4. Variables

Variable adalah tempat menyimpan data.

Nilai di dalam variable bisa berubah selama program berjalan.
Dalam Python, penulisannya biasanya seperti ini:

```python
umur = 18
```

Di bahasa lain kamu mungkin melihat bentuk seperti `int umur = 18;`, tetapi di Python tipe tidak ditulis di depan nama variable.

### 5. Aturan Penamaan Variable

Nama variable harus jelas dan tidak boleh sembarangan.

Aturan dasar:

- tidak boleh diawali angka
- tidak boleh memakai spasi
- tidak boleh memakai nama yang membingungkan

Gunakan nama yang deskriptif, misalnya:

- `umur`
- `total_harga`
- `is_logged_in`

Nama yang baik membuat code lebih mudah dipahami tanpa banyak penjelasan tambahan.

### 6. Gambaran Umum Data Types

Setiap data punya tipe yang berbeda.

Tipe data menentukan:

- bentuk data
- operasi apa yang bisa dilakukan
- bagaimana Python memproses data tersebut

Memahami tipe data adalah salah satu fondasi paling penting dalam programming.

### 7. Primitive Data Types

Tipe dasar yang sering diperkenalkan di banyak bahasa pemrograman:

- Integer -> angka bulat
- Float atau Double -> angka desimal
- Boolean -> `true` atau `false`
- Char -> satu karakter

Dalam Python, tipe yang sering kamu temui di awal adalah:

- `int`
- `float`
- `bool`
- `str`

Python tidak memakai tipe `char` terpisah seperti beberapa bahasa lain.
Satu karakter di Python biasanya tetap direpresentasikan sebagai string panjang satu.

### 8. String Data Type

String adalah kumpulan karakter yang digunakan untuk merepresentasikan teks.

Contoh:

```python
pesan = "Hello World"
```

String dipakai untuk:

- nama user
- alamat
- pesan error
- judul
- data teks lainnya

## Section 3 — Operators & String

### 9. Arithmetic Operators

Operator aritmetika digunakan untuk perhitungan matematika.

Contoh operator yang umum:

- `+`
- `-`
- `*`
- `/`
- `%`

Operator ini dipakai saat program perlu menghitung total, rata-rata, sisa bagi, dan banyak hal lain.

### 10. Comparison Operators

Operator perbandingan digunakan untuk membandingkan dua nilai.

Hasilnya selalu boolean.

Contoh:

- `==`
- `!=`
- `>`
- `<`
- `>=`
- `<=`

Operator ini sangat penting untuk pengambilan keputusan.

### 11. Logical Operators

Operator logika digunakan untuk menggabungkan beberapa kondisi.

Di banyak bahasa kamu akan melihat:

- `&&` untuk AND
- `||` untuk OR
- `!` untuk NOT

Di Python, bentuk yang dipakai adalah:

- `and`
- `or`
- `not`

Konsepnya tetap sama: menggabungkan atau membalik nilai boolean.

### 12. String Manipulation

String bisa diproses dengan berbagai operasi, misalnya:

- menggabungkan teks
- mengambil karakter tertentu
- menghitung panjang string

Contoh sederhana:

```python
"Hello" + " World"
```

Manipulasi string penting karena banyak program berinteraksi dengan teks, input user, file, dan data tampilan.

## Section 4 — Conditional & Control Flow

### 13. Conditional Statement

Conditional dipakai untuk pengambilan keputusan.

Program memilih aksi berdasarkan kondisi tertentu.
Kalau kondisi berubah, jalur program juga bisa berubah.

### 14. If-Else

Struktur dasar conditional:

- jika kondisi benar -> jalankan satu aksi
- jika kondisi salah -> jalankan alternatif

Dalam Python:

```python
if umur >= 18:
    print("Dewasa")
else:
    print("Belum dewasa")
```

### 15. Nested Condition

`if` bisa berada di dalam `if` lain.

Ini disebut nested condition, dan biasanya dipakai ketika keputusan bergantung pada beberapa lapisan kondisi.

Konsep ini berguna, tetapi perlu dijaga agar tidak membuat code terlalu rumit.

### 16. Switch Case dan Alternatif di Python

Di banyak bahasa, `switch case` dipakai sebagai alternatif `if` untuk banyak pilihan tetap.

Python tradisional lebih sering memakai:

- `if` / `elif` / `else`

Di Python modern juga ada:

- `match` / `case`

Untuk pembelajaran dasar, `if` / `elif` / `else` biasanya tetap menjadi titik awal yang paling penting.

### 17. Konsep Looping

Looping digunakan untuk pengulangan.

Tujuannya adalah menghindari penulisan code yang sama berulang kali.

Kalau suatu aksi perlu dilakukan berkali-kali, loop biasanya menjadi solusi yang lebih rapi.

### 18. For Loop

`for` loop digunakan saat jumlah perulangan sudah diketahui atau saat kamu sedang mengiterasi sekumpulan data.

Contoh:

```python
for angka in range(5):
    print(angka)
```

### 19. While Loop

`while` loop digunakan saat kondisi menjadi penentu apakah pengulangan masih perlu berlangsung.

Contoh:

```python
count = 0

while count < 5:
    print(count)
    count += 1
```

## Section 5 — Data Structure & Function

### 20. Data Structure

Data structure adalah cara untuk menyimpan dan mengatur data.

Semakin besar jumlah data, semakin penting struktur penyimpanan yang rapi.
Tanpa data structure, pengolahan data akan cepat menjadi berantakan.

### 21. Array

Dalam banyak bahasa, array digunakan untuk menyimpan banyak data dengan tipe yang sama dan diakses menggunakan index.

Di Python, konsep yang paling dekat dan paling sering dipakai pemula adalah `list`.

Contoh:

```python
angka = [10, 20, 30]
print(angka[0])
```

### 22. Linked List

Linked list adalah struktur data yang terdiri dari node-node yang saling terhubung.

Konsep ini lebih fleksibel daripada array dalam beberapa kasus, walaupun biasanya tidak menjadi struktur pertama yang dipakai pemula di Python sehari-hari.

Tetapi konsep linked list tetap penting untuk memahami cara data bisa diorganisasi di luar bentuk list biasa.

### 23. Stack & Queue

Dua konsep dasar struktur data yang penting:

- Stack -> LIFO (Last In First Out)
- Queue -> FIFO (First In First Out)

Konsep ini sering muncul dalam:

- pemrosesan tugas
- undo history
- antrian sistem
- traversal data

Di Python, konsep queue sering diimplementasikan dengan bantuan `collections.deque`.

### 24. Function

Function adalah blok code yang bisa digunakan kembali.

Function membantu program dibagi menjadi bagian-bagian kecil dengan tujuan yang jelas.

Contoh:

```python
def sapa(nama):
    print(f"Halo, {nama}")
```

### 25. Manfaat Function

Function sangat penting karena:

- mengurangi duplikasi code
- membuat program lebih rapi
- membuat code lebih mudah dipahami
- memudahkan testing dan perawatan

Semakin besar program, semakin terasa manfaat function.

## Section 6 — Error Handling

### 26. Jenis-Jenis Error

Secara umum, error dalam programming bisa dibagi menjadi:

- Syntax Error -> salah penulisan code
- Runtime Error -> error saat program dijalankan
- Logical Error -> program jalan, tetapi hasilnya salah

Memahami perbedaan ini penting karena cara menanganinya juga berbeda.

### 27. Debugging

Debugging adalah proses mencari dan memperbaiki error.

Ini adalah skill yang sangat penting dalam programming.
Belajar coding bukan berarti menulis code tanpa salah.
Belajar coding berarti mampu menemukan dan memperbaiki kesalahan dengan tenang dan sistematis.

### 28. Input Validation

Input validation berarti mengecek input dari user agar program tetap aman dan masuk akal.

Contohnya:

- memastikan input umur benar-benar angka
- memastikan kolom tidak kosong
- memastikan nilai ada dalam rentang tertentu

Validasi membuat program lebih kuat dan lebih aman.

### 29. Exception Handling

Exception handling digunakan untuk menangani error agar program tidak langsung crash.

Konsep ini sangat penting di bahasa seperti Python dan Java.

Contoh di Python:

```python
try:
    angka = int(input("Masukkan angka: "))
except ValueError:
    print("Input harus berupa angka")
```

### 30. Kesimpulan

Programming dimulai dari fondasi dasar:

- variable
- tipe data
- operator
- control flow
- data structure
- function
- error handling

Semua konsep ini saling terhubung.

Kalau fondasinya kuat, belajar topik yang lebih kompleks akan jauh lebih mudah.

## Yang Harus Kamu Pahami Setelah Track Ini

- apa arti programming secara logis
- bagaimana program bergerak dari input ke output
- bagaimana data disimpan dan diproses
- bagaimana program membuat keputusan
- bagaimana pengulangan dan function membantu struktur code
- bagaimana error dikenali, dicek, dan ditangani

## Mental Model Inti

Sebuah program Python adalah sistem instruksi yang:

1. menerima input
2. memproses data
3. menghasilkan output
4. mengambil keputusan
5. mengelola struktur data dan logika
6. menangani kemungkinan error

Kalau alur besar ini sudah kamu pahami, fondasi programming-mu sudah mulai kokoh.

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

Kalau lesson lain adalah pembahasan per topik, file ini adalah "peta besar" yang menunjukkan bagaimana semua konsep dasar saling terhubung dalam satu modul.

## Section 1 — Basic Programming

### 1. Apa Itu Programming

Programming adalah proses memberi instruksi ke komputer untuk menyelesaikan masalah.

Komputer tidak memahami maksud yang samar.
Komputer hanya memahami instruksi yang jelas, logis, dan terstruktur.

Karena itu, tujuan utama belajar programming bukan sekadar menghafal syntax, tetapi belajar mengubah masalah menjadi solusi berbasis logika.

Programming juga berarti belajar berpikir sistematis.
Saat manusia melihat masalah sebagai "sesuatu yang ingin diselesaikan", programmer mencoba melihatnya sebagai:

- input apa yang tersedia
- aturan apa yang berlaku
- langkah apa yang perlu dijalankan
- output apa yang diharapkan

### 2. Bagaimana Program Bekerja

Alur dasar hampir semua program bisa diringkas menjadi:

`Input -> Process -> Output`

Contoh sederhana:

- user memasukkan angka
- program menghitung angka tersebut
- hasilnya ditampilkan ke layar

Pola ini muncul terus-menerus dalam dunia programming, dari kalkulator sederhana sampai aplikasi besar.

Contoh code:

```python
angka = int(input("Masukkan angka: "))  # input
hasil = angka * 2                       # process
print("Hasil:", hasil)                 # output
```

Ketika kamu membaca code, selalu coba tanyakan:

- bagian mana yang menerima input?
- bagian mana yang memproses data?
- bagian mana yang menghasilkan output?

### 3. Logika Programming

Fokus utama programmer bukan pertama-tama pada bahasa, tetapi pada logika.

Programmer harus bisa:

- memahami masalah
- memecahnya menjadi langkah kecil
- menyusun langkah yang masuk akal
- mengimplementasikan langkah itu ke dalam code

Kalau logika dasarnya kuat, belajar bahasa baru akan jauh lebih mudah.

Contoh masalah:

`Hitung total belanja setelah diskon.`

Cara berpikir logis:

1. minta harga awal
2. minta persen diskon
3. hitung besar diskon
4. kurangi harga awal dengan diskon
5. tampilkan hasil

Contoh code:

```python
harga_awal = 100000
diskon_persen = 10
besar_diskon = harga_awal * diskon_persen / 100
total_bayar = harga_awal - besar_diskon

print("Total bayar:", total_bayar)
```

## Section 2 — Variables & Data Types

### 4. Variables

Variable adalah tempat menyimpan data.

Nilai di dalam variable bisa berubah selama program berjalan.
Dalam Python, penulisannya biasanya seperti ini:

```python
umur = 18
```

Di bahasa lain kamu mungkin melihat bentuk seperti `int umur = 18;`, tetapi di Python tipe tidak ditulis di depan nama variable.

Contoh beberapa variable:

```python
nama = "Alya"
umur = 18
tinggi = 165.5
is_student = True
```

Variable membantu program "mengingat" data agar bisa dipakai lagi nanti.

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

Contoh yang kurang baik:

```python
x = 18
y = 200000
```

Contoh yang lebih jelas:

```python
umur = 18
total_harga = 200000
```

Contoh nama yang salah:

```python
# 2umur = 18
# total harga = 100
# class = "Python"
```

Di Python, gaya penamaan yang paling umum untuk variable adalah `snake_case`.

### 6. Gambaran Umum Data Types

Setiap data punya tipe yang berbeda.

Tipe data menentukan:

- bentuk data
- operasi apa yang bisa dilakukan
- bagaimana Python memproses data tersebut

Memahami tipe data adalah salah satu fondasi paling penting dalam programming.

Contoh:

```python
umur = 18
nama = "Alya"
aktif = True

print(type(umur))
print(type(nama))
print(type(aktif))
```

Kalau tipe data salah dipahami, hasil program bisa membingungkan atau bahkan error.

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

Contoh:

```python
angka_bulat = 10
angka_desimal = 3.14
status_aktif = True
huruf = "A"

print(type(angka_bulat))
print(type(angka_desimal))
print(type(status_aktif))
print(type(huruf))
```

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

Contoh operasi dasar pada string:

```python
pesan = "Hello World"

print(pesan[0])      # karakter pertama
print(len(pesan))    # panjang string
print(pesan.lower()) # ubah jadi huruf kecil
```

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

Contoh:

```python
a = 10
b = 3

print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)
```

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

Contoh:

```python
umur = 18

print(umur == 18)
print(umur != 20)
print(umur >= 17)
```

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

Contoh:

```python
umur = 20
punya_kartu = True

print(umur >= 18 and punya_kartu)
print(umur < 18 or punya_kartu)
print(not punya_kartu)
```

### 12. String Manipulation

String bisa diproses dengan berbagai operasi, misalnya:

- menggabungkan teks
- mengambil karakter tertentu
- menghitung panjang string
- mengganti isi tertentu
- membersihkan spasi

Contoh sederhana:

```python
depan = "Hello"
belakang = "World"

gabung = depan + " " + belakang
print(gabung)
print(gabung[0])
print(len(gabung))
print(gabung.replace("World", "Python"))
```

Manipulasi string penting karena banyak program berinteraksi dengan teks, input user, file, dan data tampilan.

## Section 4 — Conditional & Control Flow

### 13. Conditional Statement

Conditional dipakai untuk pengambilan keputusan.

Program memilih aksi berdasarkan kondisi tertentu.
Kalau kondisi berubah, jalur program juga bisa berubah.

Contoh sederhana:

```python
nilai = 80

if nilai >= 75:
    print("Lulus")
```

### 14. If-Else

Struktur dasar conditional:

- jika kondisi benar -> jalankan satu aksi
- jika kondisi salah -> jalankan alternatif

Dalam Python:

```python
umur = 16

if umur >= 18:
    print("Dewasa")
else:
    print("Belum dewasa")
```

Kalau pilihan lebih dari dua, kamu bisa memakai `elif`:

```python
nilai = 85

if nilai >= 90:
    print("A")
elif nilai >= 80:
    print("B")
else:
    print("Perlu belajar lagi")
```

### 15. Nested Condition

`if` bisa berada di dalam `if` lain.

Ini disebut nested condition, dan biasanya dipakai ketika keputusan bergantung pada beberapa lapisan kondisi.

Konsep ini berguna, tetapi perlu dijaga agar tidak membuat code terlalu rumit.

Contoh:

```python
umur = 20
punya_tiket = True

if umur >= 18:
    if punya_tiket:
        print("Boleh masuk")
    else:
        print("Harus beli tiket dulu")
else:
    print("Belum cukup umur")
```

### 16. Switch Case dan Alternatif di Python

Di banyak bahasa, `switch case` dipakai sebagai alternatif `if` untuk banyak pilihan tetap.

Python tradisional lebih sering memakai:

- `if` / `elif` / `else`

Di Python modern juga ada:

- `match` / `case`

Untuk pembelajaran dasar, `if` / `elif` / `else` biasanya tetap menjadi titik awal yang paling penting.

Contoh `match`:

```python
hari = "senin"

match hari:
    case "senin":
        print("Mulai kerja")
    case "minggu":
        print("Libur")
    case _:
        print("Hari biasa")
```

### 17. Konsep Looping

Looping digunakan untuk pengulangan.

Tujuannya adalah menghindari penulisan code yang sama berulang kali.

Kalau suatu aksi perlu dilakukan berkali-kali, loop biasanya menjadi solusi yang lebih rapi.

Contoh tanpa loop terasa membosankan:

```python
print("Halo")
print("Halo")
print("Halo")
```

Loop membuatnya lebih singkat:

```python
for _ in range(3):
    print("Halo")
```

### 18. For Loop

`for` loop digunakan saat jumlah perulangan sudah diketahui atau saat kamu sedang mengiterasi sekumpulan data.

Contoh:

```python
for angka in range(5):
    print(angka)
```

Contoh iterasi list:

```python
buah = ["apel", "mangga", "jeruk"]

for item in buah:
    print(item)
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

`while` sering dipakai saat kita belum tahu pasti berapa kali loop harus berjalan, selama kondisi tertentu masih bernilai true.

## Section 5 — Data Structure & Function

### 20. Data Structure

Data structure adalah cara untuk menyimpan dan mengatur data.

Semakin besar jumlah data, semakin penting struktur penyimpanan yang rapi.
Tanpa data structure, pengolahan data akan cepat menjadi berantakan.

Dalam Python dasar, data structure yang paling sering ditemui adalah:

- `list`
- `tuple`
- `set`
- `dict`

Masing-masing punya perilaku yang berbeda.

### 21. Array

Dalam banyak bahasa, array digunakan untuk menyimpan banyak data dengan tipe yang sama dan diakses menggunakan index.

Di Python, konsep yang paling dekat dan paling sering dipakai pemula adalah `list`.

Contoh:

```python
angka = [10, 20, 30]
print(angka[0])
angka.append(40)
print(angka)
```

Kalau kamu memahami index, berarti kamu mulai memahami bagaimana data berurutan disimpan dan diakses.

### 22. Linked List

Linked list adalah struktur data yang terdiri dari node-node yang saling terhubung.

Konsep ini lebih fleksibel daripada array dalam beberapa kasus, walaupun biasanya tidak menjadi struktur pertama yang dipakai pemula di Python sehari-hari.

Tetapi konsep linked list tetap penting untuk memahami cara data bisa diorganisasi di luar bentuk list biasa.

Contoh ilustrasi sederhana:

```python
class Node:
    def __init__(self, data, next_node=None):
        self.data = data
        self.next = next_node

node3 = Node(30)
node2 = Node(20, node3)
node1 = Node(10, node2)

print(node1.data)
print(node1.next.data)
```

Code ini tidak harus langsung dihafal.
Yang penting adalah memahami idenya: setiap node menyimpan data dan referensi ke node berikutnya.

### 23. Stack & Queue

Dua konsep dasar struktur data yang penting:

- Stack -> LIFO (Last In First Out)
- Queue -> FIFO (First In First Out)

Konsep ini sering muncul dalam:

- pemrosesan tugas
- undo history
- antrian sistem
- traversal data

Contoh stack:

```python
stack = []
stack.append("A")
stack.append("B")
stack.append("C")

print(stack.pop())  # C
print(stack.pop())  # B
```

Contoh queue:

```python
from collections import deque

queue = deque(["A", "B"])
queue.append("C")

print(queue.popleft())  # A
print(queue.popleft())  # B
```

### 24. Function

Function adalah blok code yang bisa digunakan kembali.

Function membantu program dibagi menjadi bagian-bagian kecil dengan tujuan yang jelas.

Contoh:

```python
def sapa(nama):
    print(f"Halo, {nama}")

sapa("Alya")
```

Function biasanya menerima input lewat parameter dan kadang mengembalikan hasil dengan `return`.

```python
def tambah(a, b):
    return a + b

hasil = tambah(2, 3)
print(hasil)
```

### 25. Manfaat Function

Function sangat penting karena:

- mengurangi duplikasi code
- membuat program lebih rapi
- membuat code lebih mudah dipahami
- memudahkan testing dan perawatan

Semakin besar program, semakin terasa manfaat function.

Contoh tanpa function:

```python
print(5 * 2)
print(10 * 2)
print(20 * 2)
```

Contoh dengan function:

```python
def kali_dua(angka):
    return angka * 2

print(kali_dua(5))
print(kali_dua(10))
print(kali_dua(20))
```

## Section 6 — Error Handling

### 26. Jenis-Jenis Error

Secara umum, error dalam programming bisa dibagi menjadi:

- Syntax Error -> salah penulisan code
- Runtime Error -> error saat program dijalankan
- Logical Error -> program jalan, tetapi hasilnya salah

Memahami perbedaan ini penting karena cara menanganinya juga berbeda.

Contoh:

```python
# Syntax Error
# if True
#     print("Halo")

# Runtime Error
# print(10 / 0)

umur = 18

# Logical Error
if umur > 18:  # seharusnya >= 18
    print("Dewasa")
```

### 27. Debugging

Debugging adalah proses mencari dan memperbaiki error.

Ini adalah skill yang sangat penting dalam programming.
Belajar coding bukan berarti menulis code tanpa salah.
Belajar coding berarti mampu menemukan dan memperbaiki kesalahan dengan tenang dan sistematis.

Salah satu bentuk debugging paling sederhana adalah memeriksa nilai variable saat program berjalan:

```python
angka = 5
hasil = angka * 2

print("angka =", angka)
print("hasil =", hasil)
```

Debugging yang baik biasanya melibatkan:

- membaca pesan error
- memeriksa input
- memeriksa nilai variable
- menguji asumsi satu per satu

### 28. Input Validation

Input validation berarti mengecek input dari user agar program tetap aman dan masuk akal.

Contohnya:

- memastikan input umur benar-benar angka
- memastikan kolom tidak kosong
- memastikan nilai ada dalam rentang tertentu

Validasi membuat program lebih kuat dan lebih aman.

Contoh:

```python
umur_text = input("Masukkan umur: ")

if umur_text.isdigit():
    umur = int(umur_text)
    print("Umur valid:", umur)
else:
    print("Input harus berupa angka")
```

### 29. Exception Handling

Exception handling digunakan untuk menangani error agar program tidak langsung crash.

Konsep ini sangat penting di bahasa seperti Python dan Java.

Contoh di Python:

```python
try:
    angka = int(input("Masukkan angka: "))
    hasil = 10 / angka
except ValueError:
    print("Input harus berupa angka")
except ZeroDivisionError:
    print("Angka tidak boleh nol")
else:
    print("Hasil:", hasil)
finally:
    print("Program selesai")
```

Pola ini membantu program tetap memberi respons yang jelas ketika sesuatu berjalan salah.

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

## Ringkasan Code Cepat Module 1

Kalau kamu ingin melihat hubungan semua materi dalam satu potongan code kecil, contoh di bawah ini bisa membantu:

```python
from collections import deque

nama = "Alya"
umur = 18
nilai = [80, 90, 85]
antrian = deque(["task-1", "task-2"])

def rata_rata(data):
    return sum(data) / len(data)

try:
    if umur >= 18 and len(nama) > 0:
        print(f"{nama} adalah user aktif.")

    for item in nilai:
        print("Nilai:", item)

    print("Rata-rata:", rata_rata(nilai))
    print("Task pertama:", antrian.popleft())
except Exception as error:
    print("Terjadi error:", error)
```

Code di atas memperlihatkan:

- variable dan data type
- operator
- conditional
- loop
- data structure
- function
- error handling

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

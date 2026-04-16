# Modul 4: Data Structure dan Function

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- bagaimana data structure utama di Python berbeda satu sama lain
- bagaimana memilih structure berdasarkan masalah yang sedang dihadapi
- kenapa function penting untuk code yang reusable dan mudah dibaca
- bagaimana parameter, return value, dan scope saling berhubungan

## Ide Besar

Program menjadi lebih kuat ketika bisa mengorganisasi kumpulan value dan membungkus perilaku yang berulang.

Data structure membantu kamu membentuk informasi.
Function membantu kamu membentuk logika.

## Kenapa Ini Penting

Begitu program tumbuh lebih dari beberapa baris, kamu akan mulai bertanya:

- kumpulan data ini sebaiknya disimpan dalam bentuk apa?
- bagaimana caranya agar logika yang sama tidak ditulis berulang-ulang?
- bagaimana satu bagian program menerima data tanpa harus tahu semua detail bagian lain?

Jawaban untuk pertanyaan-pertanyaan itu biasanya melibatkan data structure dan function.

## Teori Inti

### List

List adalah koleksi yang terurut dan bisa diubah.

```python
fruits = ["apple", "banana", "cherry"]
```

List cocok ketika:

- urutan penting
- item bisa ditambah atau dihapus
- duplikasi diperbolehkan

Operasi list yang umum:

```python
fruits.append("mango")
fruits[0]
len(fruits)
```

### Tuple

Tuple adalah koleksi yang terurut tetapi immutable.

```python
coordinates = (10, 20)
```

Tuple berguna saat beberapa value memang satu paket dan sebaiknya tidak diubah sembarangan.

Contohnya:

- koordinat
- nilai RGB
- hasil function yang mengembalikan beberapa value terkait

### Set

Set menyimpan value yang unik.

```python
tags = {"python", "beginner", "tutorial"}
```

Set sangat berguna ketika:

- duplikasi perlu dihilangkan
- pengecekan membership penting
- urutan bukan fokus utama

### Dictionary

Dictionary menyimpan pasangan key-value.

```python
user = {"name": "Alya", "age": 21}
```

Gunakan dictionary ketika value perlu diakses berdasarkan label yang bermakna, bukan berdasarkan posisi angka.

Karena itu dictionary cocok untuk:

- data user
- konfigurasi
- counter
- data terstruktur seperti hasil API

### Memilih Structure yang Tepat

Kamu tidak memilih structure hanya karena structure itu ada.
Kamu memilihnya karena perilakunya cocok dengan kebutuhanmu.

- pakai `list` untuk koleksi terurut
- pakai `tuple` untuk kelompok value yang relatif tetap
- pakai `set` untuk keunikan
- pakai `dict` untuk lookup berdasarkan nama

Kebiasaan memilih structure berdasarkan kebutuhan adalah salah satu skill penting dalam programming.

### Function Mengemas Perilaku

Function memungkinkan kamu memberi nama pada blok logika yang bisa dipakai ulang.

```python
def greet(name):
    print(f"Hello, {name}")
```

Daripada menulis ulang code yang sama berkali-kali, kamu cukup memanggil function ketika membutuhkannya.

Ini meningkatkan:

- keterbacaan
- reuse
- testing
- maintainability

### Parameter dan Return Value

Parameter membawa data masuk ke dalam function.
Return value membawa hasil keluar dari function.

```python
def add(a, b):
    return a + b
```

Ini penting karena function yang baik biasanya menerima input, mengerjakan satu tugas yang fokus, lalu menghasilkan output yang jelas.

`print()` dan `return` tidak sama:

- `print()` menampilkan sesuatu ke user
- `return` memberikan value kembali ke pemanggil function

### Scope

Scope menjelaskan di mana sebuah variabel bisa diakses.

```python
def example():
    message = "hello"
    print(message)
```

`message` hanya ada di dalam function itu, kecuali dikembalikan atau disimpan di tempat lain.

Ini membantu menjaga detail sementara tetap lokal, bukan bocor ke seluruh program.

## Walkthrough Singkat

Bayangkan ada program data siswa kecil:

```python
student = {
    "name": "Alya",
    "scores": [80, 90, 85],
}

def average(scores):
    return sum(scores) / len(scores)

result = average(student["scores"])
print(f"{student['name']} has an average of {result}")
```

Contoh ini menggunakan:

- dictionary untuk data siswa yang berlabel
- list untuk banyak nilai
- function untuk perhitungan yang reusable
- return value agar hasilnya bisa dipakai di tempat lain

Contoh kecil ini cukup realistis untuk menunjukkan bagaimana konsep-konsep ini saling bekerja sama.

## Aturan Praktis

- pilih data structure berdasarkan perilakunya, bukan karena kebiasaan
- buat function tetap fokus pada satu tugas yang jelas
- lebih baik return value daripada print di utility function
- gunakan nama parameter yang deskriptif
- hindari ketergantungan pada variabel global jika parameter function sudah cukup

## Mental Model

Data structure mengorganisasi apa yang diketahui programmu.
Function mengorganisasi apa yang dilakukan programmu.

Kalau variabel adalah kotak-kotak individual, data structure adalah rak dari banyak kotak, dan function adalah alat yang diberi label untuk bekerja dengan kotak-kotak itu.

## Kesalahan yang Sering Terjadi

- memakai list padahal dictionary akan membuat data lebih jelas
- memakai set padahal urutan sebenarnya penting
- membuat function yang mengerjakan terlalu banyak hal sekaligus
- lupa mengembalikan value
- mengira variabel yang dibuat di dalam function bisa dipakai di mana-mana

## Prompt Latihan

1. Kapan dictionary lebih tepat daripada list?
2. Kenapa tuple bisa lebih aman daripada list dalam beberapa situasi?
3. Apa perbedaan parameter dan argument?
4. Kenapa return value berbeda dari sekadar print?

## Mini Exercise

1. Buat dictionary yang merepresentasikan sebuah buku dengan judul, penulis, dan tahun terbit.
2. Tulis function yang menerima list angka dan mengembalikan angka terbesar.
3. Buat set dari list yang berisi value berulang lalu periksa hasilnya.

## Checklist Penguasaan

- Saya bisa menjelaskan list, tuple, set, dan dictionary secara praktis.
- Saya bisa memilih data structure berdasarkan cara akses yang dibutuhkan.
- Saya paham kenapa function mengurangi pengulangan dan memperjelas code.
- Saya tahu fungsi parameter dan return value.
- Saya paham ide dasar local scope.

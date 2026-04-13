# Modul 4: Data Structure dan Function

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- bagaimana data structure utama di Python berbeda satu sama lain
- bagaimana memilih structure berdasarkan masalah yang sedang dihadapi
- bagaimana konsep klasik seperti array, linked list, stack, dan queue berhubungan dengan Python
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

### Data Structure Membantu Mengatur Informasi

Data structure adalah cara menyimpan dan mengatur value agar program bisa memakainya dengan rapi.

Semakin banyak data yang ditangani, semakin penting struktur yang jelas.
Tanpa struktur, code cepat terasa berantakan karena kamu kehilangan gambaran data itu disimpan di mana dan harus diakses bagaimana.

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

### Array dan Python List

Di banyak materi programming, array diperkenalkan sebagai kumpulan data berindeks.
Di Python pemula, padanan sehari-harinya biasanya adalah `list`.

Contoh:

```python
numbers = [10, 20, 30]
print(numbers[0])
numbers.append(40)
print(numbers)
```

Jadi ketika materi lama membahas array, sering kali kamu bisa memetakan ide itu ke Python list sambil mengingat bahwa list Python lebih fleksibel daripada banyak array level rendah.

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

### Linked List Sebagai Konsep

Linked list adalah struktur data yang terdiri dari node-node yang saling terhubung.
Setiap node menyimpan data dan referensi ke node berikutnya.

Di Python dasar, kamu tidak akan memakai linked list sesering list atau dictionary, tetapi konsep ini penting karena menunjukkan bahwa data bisa dihubungkan sebagai rantai, bukan hanya disimpan lewat index.

Contoh:

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

Yang terpenting bukan menghafal code-nya.
Yang terpenting adalah memahami bahwa tiap node menunjuk ke node berikutnya.

### Stack dan Queue

Dua perilaku data structure yang klasik adalah:

- stack -> LIFO, atau Last In First Out
- queue -> FIFO, atau First In First Out

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

Konsep ini sering muncul pada antrian tugas, sistem undo, penjadwalan, dan banyak skenario lain.

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
3. Bagaimana Python list mirip dengan konsep array di banyak bahasa?
4. Apa ide inti dari linked list?
5. Apa perbedaan stack dan queue?
6. Apa perbedaan parameter dan argument?
7. Kenapa return value berbeda dari sekadar print?

## Mini Exercise

1. Buat dictionary yang merepresentasikan sebuah buku dengan judul, penulis, dan tahun terbit.
2. Tulis function yang menerima list angka dan mengembalikan angka terbesar.
3. Buat set dari list yang berisi value berulang lalu periksa hasilnya.
4. Buat stack sederhana dengan Python list lalu keluarkan dua item.
5. Buat queue sederhana dengan `collections.deque` lalu keluarkan dua item.

## Checklist Penguasaan

- Saya bisa menjelaskan list, tuple, set, dan dictionary secara praktis.
- Saya paham bagaimana cara berpikir array dipetakan ke Python list.
- Saya tahu ide dasar linked list, stack, dan queue.
- Saya bisa memilih data structure berdasarkan cara akses yang dibutuhkan.
- Saya paham kenapa function mengurangi pengulangan dan memperjelas code.
- Saya tahu fungsi parameter dan return value.
- Saya paham ide dasar local scope.

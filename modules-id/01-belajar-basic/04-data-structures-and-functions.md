# Modul 4: Data Structure dan Function

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- kenapa data structure itu ada
- fungsi dari list, tuple, set, dan dictionary
- apa itu function
- kenapa function sangat penting untuk code yang mudah dibaca

## Ide Besar

Data structure mengorganisasi informasi.
Function mengorganisasi perilaku.

Keduanya membuat program bisa berkembang lebih jauh dari sekadar beberapa baris code.

## Teori Inti

### List

List menyimpan kumpulan data yang terurut dan bisa diubah.

```python
numbers = [1, 2, 3]
numbers.append(4)
```

Gunakan list ketika:

- urutan penting
- duplikasi diperbolehkan
- value bisa berubah

### Tuple

Tuple terurut tetapi tidak bisa diubah.

```python
point = (10, 20)
```

Gunakan tuple ketika value seharusnya tetap.

### Set

Set menyimpan value yang unik.

```python
tags = {"python", "backend", "python"}
```

Hasilnya menjadi:

```python
{"python", "backend"}
```

Gunakan set ketika keunikan value penting.

### Dictionary

Dictionary menyimpan pasangan key-value.

```python
student = {
    "name": "Alya",
    "age": 21,
    "major": "Computer Science",
}
```

Gunakan dictionary ketika kamu ingin data yang memiliki label.

### Function

Function adalah blok code yang bisa dipakai ulang dan punya tujuan yang jelas.

```python
def greet(name):
    return f"Hello, {name}"
```

Kenapa function penting:

- mengurangi pengulangan
- meningkatkan keterbacaan
- memisahkan tanggung jawab
- memudahkan testing

### Parameter dan Return Value

- parameter adalah input
- return value adalah output

```python
def add(a, b):
    return a + b
```

### Scope

Variabel yang dibuat di dalam function biasanya hanya berlaku di dalam function itu.

Ini penting karena membantu mencegah gangguan yang tidak disengaja antara bagian program yang berbeda.

## Mental Model

Gunakan data structure untuk memodelkan bentuk informasi.
Gunakan function untuk memodelkan tugas yang dilakukan program.

## Kesalahan yang Sering Terjadi

- memakai data structure yang kurang tepat
- membuat function yang melakukan terlalu banyak hal
- lupa mengembalikan value
- terlalu bergantung pada variabel global

## Prompt Latihan

1. Kapan dictionary lebih tepat daripada list?
2. Kenapa kamu mungkin memilih set dibanding list?
3. Apa perbedaan parameter dan return value?

## Checklist Penguasaan

- Saya bisa menjelaskan data structure bawaan Python yang umum.
- Saya bisa memilih structure dasar sesuai masalahnya.
- Saya paham function dipakai untuk apa.
- Saya bisa membaca signature function sederhana dan menjelaskan input serta output-nya.

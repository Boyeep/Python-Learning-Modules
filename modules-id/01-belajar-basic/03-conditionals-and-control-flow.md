# Modul 3: Conditional dan Control Flow

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- bagaimana program membuat keputusan
- apa arti control flow
- bagaimana `if`, `elif`, dan `else` bekerja
- kapan loop berguna

## Ide Besar

Control flow adalah urutan bagaimana code dijalankan.

Tanpa control flow, program hanya berjalan lurus dari atas ke bawah.
Dengan control flow, program bisa membuat keputusan dan mengulang pekerjaan.

## Teori Inti

### Conditional Statement

Conditional memungkinkan program memilih di antara beberapa jalur.

```python
age = 20

if age >= 18:
    print("Adult")
else:
    print("Minor")
```

### Banyak Cabang

```python
score = 85

if score >= 90:
    print("Excellent")
elif score >= 75:
    print("Good")
else:
    print("Keep improving")
```

Hal penting:

Kondisi pertama yang cocok akan dijalankan.

### Truthy dan Falsy

Di Python, beberapa value diperlakukan sebagai false dalam kondisi:

- `False`
- `None`
- `0`
- `0.0`
- `""`
- `[]`
- `{}`

Ini penting karena kondisi tidak selalu harus berupa boolean eksplisit.

### Loop

Loop digunakan untuk mengulang instruksi.

#### `for` loop

Dipakai ketika kamu ingin mengiterasi sebuah sequence.

```python
for letter in "python":
    print(letter)
```

#### `while` loop

Dipakai ketika kamu ingin mengulang sampai kondisinya berubah.

```python
count = 0

while count < 3:
    print(count)
    count += 1
```

### Kontrol pada Loop

```python
for number in range(10):
    if number == 5:
        break
```

- `break` menghentikan loop
- `continue` melompat ke iterasi berikutnya

## Mental Model

Control flow menjawab pertanyaan:

`Apa yang harus terjadi berikutnya?`

Pertanyaan itu ada di pusat hampir semua program.

## Kesalahan yang Sering Terjadi

- menulis kondisi yang saling tumpang tindih tanpa sadar
- lupa indentation
- membuat `while` loop tanpa akhir
- memakai loop padahal built-in lain bisa lebih jelas

## Prompt Latihan

1. Apa itu control flow?
2. Kapan sebaiknya memakai `for` dibanding `while`?
3. Value apa saja yang umum dianggap falsy di Python?

## Checklist Penguasaan

- Saya bisa menjelaskan cara kerja `if`, `elif`, dan `else`.
- Saya tahu perbedaan `for` dan `while`.
- Saya paham truthy dan falsy value.
- Saya bisa menalar jalur mana yang akan diambil program.

# Modul 2: Operator dan Manipulasi String

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa fungsi operator
- bagaimana Python mengevaluasi expression
- bagaimana manipulasi string bekerja
- kenapa string adalah salah satu tipe data terpenting dalam program nyata

## Ide Besar

Operator memungkinkan kamu menggabungkan atau membandingkan value.
Manipulasi string memungkinkan kamu mengubah teks menjadi bentuk yang berguna.

## Teori Inti

### Operator Aritmetika

Operator aritmetika bekerja pada value numerik.

```python
10 + 5
10 - 5
10 * 5
10 / 5
10 % 3
10 ** 2
```

Hal penting:

- `/` menghasilkan float
- `%` memberikan sisa hasil bagi
- `**` berarti pangkat

### Operator Perbandingan

Operator perbandingan menghasilkan boolean.

```python
5 > 3
5 == 5
5 != 2
```

Operator ini sangat penting untuk pengambilan keputusan.

### Operator Logika

Operator logika menggabungkan kondisi.

```python
age >= 18 and has_id
is_admin or is_moderator
not is_banned
```

### Dasar String

String adalah value teks.

```python
first_name = "Alya"
last_name = "Putri"
full_name = first_name + " " + last_name
```

### Operasi String yang Umum

```python
text = "python programming"

text.upper()
text.lower()
text.title()
text.strip()
text.replace("python", "Python")
text.split()
```

### Formatting String

Python modern sering menggunakan f-string.

```python
name = "Alya"
score = 95
message = f"{name} got a score of {score}"
```

Kenapa ini penting:

- lebih jelas daripada penggabungan manual
- lebih mudah dibaca
- banyak dipakai di code nyata

### Indexing dan Slicing

String adalah sequence yang terurut.

```python
word = "python"
word[0]
word[-1]
word[0:3]
```

Artinya, kamu bisa mengambil karakter berdasarkan posisinya.

## Mental Model

Expression adalah sesuatu yang menghasilkan value.

Contoh:

```python
2 + 3
```

Itu bukan sekadar tulisan.
Itu adalah instruksi yang akan dievaluasi menjadi `5`.

## Kesalahan yang Sering Terjadi

- memakai `=` padahal yang dimaksud `==`
- lupa bahwa string bersifat case-sensitive
- mencoba menambahkan string dan angka langsung tanpa konversi

Contoh:

```python
age = 20
"Age: " + str(age)
```

## Prompt Latihan

1. Apa perbedaan `=` dan `==`?
2. Kenapa `%` berguna?
3. Kenapa f-string lebih baik daripada banyak penggabungan string?

## Checklist Penguasaan

- Saya bisa menjelaskan operator aritmetika, perbandingan, dan logika.
- Saya bisa memanipulasi string dengan method umum.
- Saya tahu cara memformat output dengan f-string.
- Saya paham bahwa string adalah sequence.

# Modul 1: Variables dan Data Types

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu variabel
- apa itu tipe data
- kenapa tipe data penting dalam programming
- bagaimana Python menangani tipe data bawaan yang umum

## Ide Besar

Variabel adalah nama yang merujuk ke sebuah value.

Tipe data menjelaskan value itu termasuk jenis apa dan operasi apa yang masuk akal untuk value tersebut.

## Kenapa Ini Penting

Programming pada dasarnya adalah memindahkan dan mengubah data.
Kalau kamu tidak paham bentuk data yang sedang kamu pegang, code akan cepat terasa membingungkan.

## Teori Inti

### Variabel

Variabel memungkinkan kamu menyimpan value agar bisa dipakai lagi nanti.

```python
name = "Alya"
age = 21
is_student = True
```

Di Python, kamu tidak perlu mendeklarasikan tipenya terlebih dahulu.
Python akan mengenali tipenya dari value yang kamu berikan.

### Tipe Data Bawaan yang Umum

- `int`
  Bilangan bulat seperti `1`, `25`, `-10`
- `float`
  Bilangan desimal seperti `3.14`, `0.5`
- `str`
  Teks seperti `"hello"`
- `bool`
  `True` atau `False`
- `NoneType`
  Direpresentasikan dengan `None`, artinya tidak ada value bermakna

### Dynamic Typing

Python bersifat dynamically typed.
Artinya, satu nama variabel bisa saja nanti merujuk ke value dengan tipe yang berbeda.

```python
value = 10
value = "ten"
```

Ini fleksibel, tetapi juga menuntut kamu untuk lebih disiplin secara mental.

### Kesadaran terhadap Tipe

Tipe data yang berbeda mendukung operasi yang berbeda juga.

```python
count = 10
price = 19.99
title = "Python"
```

- angka bisa ditambah dan dikalikan
- string bisa digabung dan di-slice
- boolean dipakai dalam kondisi

## Built-in yang Berguna

```python
type("hello")
type(42)
type(True)
```

Gunakan `type()` untuk melihat jenis value yang sedang kamu pakai.

## Mental Model

Bayangkan variabel sebagai label dan value sebagai objek yang sebenarnya.

Nama variabel bukan datanya.
Nama variabel hanyalah pegangan untuk mengakses data itu.

## Kesalahan yang Sering Terjadi

- memperlakukan angka dan string seolah-olah sama
- lupa bahwa `"5"` berbeda dengan `5`
- mengira `None` sama dengan string kosong atau angka nol

## Prompt Latihan

1. Jelaskan perbedaan `int`, `float`, dan `str`.
2. Apa tipe dari `False`?
3. Kenapa dynamic typing bisa membantu sekaligus berisiko?

## Checklist Penguasaan

- Saya bisa menjelaskan apa yang disimpan oleh variabel.
- Saya bisa menyebutkan tipe data Python yang paling umum.
- Saya bisa membedakan text dan numeric value.
- Saya paham bahwa tipe data memengaruhi operasi yang valid.

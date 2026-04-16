# Modul 3: Conditional dan Control Flow

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- bagaimana Python memutuskan code mana yang berjalan berikutnya
- bagaimana conditional membuat program bercabang
- bagaimana loop mengulang pekerjaan tanpa menyalin code
- apa arti truthy dan falsy dalam program nyata

## Ide Besar

Control flow adalah bagian dari programming yang mengubah script biasa menjadi sistem yang bisa mengambil keputusan.

Tanpa control flow, program hanya bergerak lurus ke bawah, baris demi baris, tanpa kemampuan untuk bereaksi, mengulang, atau memilih jalur.

## Kenapa Ini Penting

Program nyata terus-menerus membuat keputusan:

- apakah user boleh melanjutkan?
- apakah input lolos validasi?
- apakah data masih perlu diproses?
- apakah target sudah tercapai?

Conditional menjawab pertanyaan "jalur mana?"
Loop menjawab pertanyaan "berapa kali?"

Keduanya mengendalikan perilaku hampir semua program yang tidak sepele.

## Teori Inti

### Conditional Statement

Conditional memungkinkan code dijalankan hanya ketika sebuah kondisi bernilai true.

```python
age = 20

if age >= 18:
    print("Adult")
```

Kalau kondisi bernilai `True`, blok yang ter-indent akan dijalankan.
Kalau `False`, Python akan melewatinya.

### Banyak Cabang

Gunakan `elif` dan `else` ketika ada beberapa kemungkinan hasil.

```python
score = 85

if score >= 90:
    print("A")
elif score >= 80:
    print("B")
else:
    print("Keep practicing")
```

Dalam contoh ini, hanya satu cabang yang dijalankan.
Python memeriksa dari atas ke bawah dan berhenti pada kondisi pertama yang benar.

### Truthy dan Falsy

Dalam kondisi, Python tidak selalu butuh `True` atau `False` yang literal.
Banyak value bisa diperlakukan sebagai truthy atau falsy.

Value yang umum dianggap falsy:

- `0`
- `0.0`
- `""`
- `[]`
- `{}`
- `set()`
- `None`

Sebagian besar value lainnya dianggap truthy.

Ini berguna, tetapi kondisi tetap sebaiknya ditulis dengan jelas agar niatnya mudah dipahami.

### `for` Loop

Gunakan `for` loop ketika kamu ingin mengulang pekerjaan pada sebuah koleksi atau sequence.

```python
for name in ["Alya", "Bima", "Citra"]:
    print(name)
```

`for` cocok ketika Python sudah tahu kumpulan value yang ingin diiterasi.

Kamu juga akan sering memakainya bersama `range()`:

```python
for number in range(3):
    print(number)
```

Code itu mencetak `0`, `1`, dan `2`.

### `while` Loop

Gunakan `while` loop ketika pengulangan bergantung pada kondisi yang masih bernilai true.

```python
count = 0

while count < 3:
    print(count)
    count += 1
```

Ini berguna ketika jumlah pengulangan tidak diketahui sejak awal.

### Kontrol pada Loop

Python memberi beberapa alat untuk mengubah perilaku loop:

- `break` menghentikan loop langsung
- `continue` melewati sisa iterasi saat ini
- `pass` adalah placeholder yang tidak melakukan apa-apa

Contoh:

```python
for number in range(5):
    if number == 2:
        continue
    if number == 4:
        break
    print(number)
```

### Kondisi Harus Mudah Dibaca

Kondisi bukan hanya syarat teknis.
Kondisi juga merupakan kalimat yang kamu tulis untuk pembaca code di masa depan.

Bandingkan:

```python
if is_logged_in and not is_banned:
    print("Allow access")
```

```python
if user_status == "active" and has_permission:
    print("Allow access")
```

Nama kondisi yang baik membuat logika program jauh lebih mudah diikuti.

## Walkthrough Singkat

Bayangkan ada sistem percobaan login sederhana:

```python
attempts = 0
max_attempts = 3

while attempts < max_attempts:
    password = input("Password: ")

    if password == "python123":
        print("Access granted")
        break

    attempts += 1
    print("Wrong password")

if attempts == max_attempts:
    print("Account locked")
```

Contoh ini menunjukkan:

- `while` loop untuk percobaan berulang
- `if` statement untuk keberhasilan
- `break` untuk keluar lebih awal
- pengecekan akhir setelah loop selesai

Pola seperti ini sangat umum pada program interaktif.

## Aturan Praktis

- gunakan `if` untuk keputusan dan loop untuk pengulangan
- lebih cocok pakai `for` saat mengiterasi koleksi yang sudah jelas
- gunakan `while` saat pengulangan bergantung pada kondisi yang berubah
- pastikan ada sesuatu di dalam `while` yang bisa mengubah kondisinya
- tulis kondisi agar mudah dibaca, walaupun bisa dibuat lebih singkat

## Mental Model

Bayangkan programmu seperti jalan dan persimpangan.

- `if` adalah percabangan jalan
- loop adalah jalan melingkar sampai kondisinya berubah
- `break` adalah pintu keluar darurat

Mental model ini membantu kamu menalar jalur yang sedang ditempuh program.

## Kesalahan yang Sering Terjadi

- lupa indentation
- membuat `while` loop yang kondisinya tidak pernah berubah
- bingung antara `=` dan `==`
- menulis kondisi rumit tanpa nama variabel yang jelas
- terlalu cepat membuat nested loop atau nested `if` sebelum logikanya benar-benar jelas

## Prompt Latihan

1. Apa perbedaan `if`, `for`, dan `while`?
2. Kenapa string kosong bisa dipakai sebagai value falsy dalam kondisi?
3. Kapan `break` berguna, dan kapan justru bisa menyembunyikan desain loop yang kurang jelas?
4. Kenapa `while True` perlu dipakai dengan hati-hati?

## Mini Exercise

1. Tulis program yang mencetak `"even"` untuk angka genap dan `"odd"` untuk angka ganjil dari `1` sampai `5`.
2. Buat loop yang menghitung mundur dari `5` ke `1`.
3. Tulis `if` statement yang hanya mencetak pesan ketika sebuah list tidak kosong.

## Checklist Penguasaan

- Saya bisa menjelaskan cara kerja `if`, `elif`, dan `else`.
- Saya paham perbedaan `for` dan `while`.
- Saya tahu arti truthy dan falsy value.
- Saya bisa memakai `break` dan `continue` dengan sengaja.
- Saya paham bagaimana control flow mengubah jalur yang ditempuh program.

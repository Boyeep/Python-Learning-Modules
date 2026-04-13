# Modul 2: Operator dan Manipulasi String

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- bagaimana operator mengubah value menjadi value baru
- bagaimana Python mengevaluasi expression dan perbandingan
- bagaimana string bisa digabung, dibersihkan, dan diformat ulang
- bagaimana mengukur panjang string dan mengambil bagiannya secara langsung
- kenapa pengolahan teks muncul hampir di semua program nyata

## Ide Besar

Operator adalah tata bahasa dari expression Python.
Operator memungkinkan kamu menghitung, membandingkan, dan menggabungkan value.

Manipulasi string penting karena program terus-menerus berurusan dengan nama, pesan, path file, URL, command, dan input user.

## Kenapa Ini Penting

Kalau variabel adalah wadah dalam program, operator adalah tindakan yang dilakukan terhadap isi wadah itu.

Kamu akan memakai operator untuk:

- menjumlahkan total
- membandingkan value
- mengecek beberapa kondisi sekaligus
- membuat output yang mudah dibaca
- mengubah teks mentah menjadi bentuk yang berguna

Lesson ini adalah titik ketika Python mulai terasa bukan hanya sebagai data yang disimpan, tetapi sebagai logika yang aktif bekerja.

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

- `/` selalu menghasilkan float
- `//` melakukan floor division
- `%` memberikan sisa hasil bagi
- `**` berarti pangkat

Detail ini penting karena operator yang terlihat mirip bisa menghasilkan hasil yang berbeda.

### Operator Perbandingan

Operator perbandingan menjawab pertanyaan ya/tidak.

```python
5 > 3
5 == 5
5 != 2
7 <= 9
```

Hasilnya selalu boolean: `True` atau `False`.

Karena itu operator ini menjadi dasar untuk `if` statement, validasi, filtering, dan banyak aturan logika lainnya.

### Operator Logika

Operator logika menggabungkan expression boolean.

```python
age >= 18 and has_id
is_admin or is_moderator
not is_banned
```

Gunakan operator ini ketika satu kondisi saja belum cukup.

- `and` berarti kedua kondisi harus benar
- `or` berarti minimal satu kondisi benar
- `not` membalikkan true menjadi false, atau false menjadi true

### Prioritas Operator

Python mengevaluasi beberapa bagian expression lebih dulu daripada yang lain.

```python
2 + 3 * 4
```

Hasilnya `14`, bukan `20`, karena perkalian dikerjakan sebelum penjumlahan.

Kalau keterbacaan lebih penting daripada kepintaran singkat, gunakan tanda kurung:

```python
(2 + 3) * 4
```

### String Adalah Sequence Karakter

String memang value teks, tetapi string juga sequence yang terurut.

```python
first_name = "Alya"
last_name = "Putri"
full_name = first_name + " " + last_name
```

Karena string terurut, kamu bisa mengambil karakter atau potongan karakter berdasarkan posisi.

### Penggabungan, Panjang, dan Akses Karakter

Tiga operasi string yang sangat umum untuk pemula adalah:

- menggabungkan string
- menghitung panjang string
- mengambil karakter tertentu

Contoh:

```python
first_name = "Alya"
last_name = "Putri"
full_name = first_name + " " + last_name

print(full_name)
print(len(full_name))
print(full_name[0])
```

Operasi seperti ini sering muncul di tampilan UI, nama file, validasi, dan format output.

### Operasi String yang Umum

Method string membantu kamu membersihkan atau mengubah teks.

```python
text = "  python programming  "

text.strip()
text.upper()
text.lower()
text.title()
text.replace("python", "Python")
text.split()
```

Method-method ini sangat berguna saat menangani input user yang berantakan atau menyiapkan output yang lebih rapi.

### Formatting String

Python modern biasanya memakai f-string untuk output yang mudah dibaca.

```python
name = "Alya"
score = 95
message = f"{name} got a score of {score}"
```

Kenapa f-string sering jadi default yang baik:

- lebih mudah dibaca
- mengurangi penggabungan string secara manual
- lebih nyaman saat pesan mulai lebih kompleks

### Indexing dan Slicing

Karena string terurut, kamu bisa mengambil bagian-bagiannya berdasarkan posisi.

```python
word = "python"
word[0]
word[-1]
word[0:3]
```

Hasilnya:

- `word[0]` memberi `"p"`
- `word[-1]` memberi `"n"`
- `word[0:3]` memberi `"pyt"`

### String Bersifat Immutable

Kamu tidak bisa mengganti satu karakter di string secara langsung.

```python
word = "cat"
# word[0] = "b"  # ini akan gagal
word = "b" + word[1:]
```

Ini penting karena operasi string biasanya menghasilkan string baru, bukan mengubah string lama di tempat.

## Walkthrough Singkat

Bayangkan ada program yang membentuk username dari input mentah:

```python
full_name = "  alya putri  "
clean_name = full_name.strip().title()
username = clean_name.lower().replace(" ", "_")

print(clean_name)
print(username)
```

Contoh kecil ini memakai beberapa ide sekaligus:

- `strip()` menghapus spasi yang tidak perlu
- `title()` memperbaiki tampilan teks
- `lower()` menormalkan huruf
- `replace()` mengubah spasi menjadi underscore

Ini pola yang realistis: teks masuk dalam keadaan berantakan, lalu operator dan method string membuatnya usable.

Contoh kecil lain juga menunjukkan bagaimana beberapa tool string saling bekerja sama:

```python
text = "Python"

print(text + " Basics")
print(len(text))
print(text[0])
print(text[-1])
```

Ini mengingatkan bahwa string bukan hanya teks pasif.
String adalah value yang bisa diperiksa dan diubah dengan sengaja.

## Aturan Praktis

- gunakan `==` untuk perbandingan dan `=` untuk assignment
- lebih baik pakai f-string daripada concatenation yang rumit
- normalkan input user sebelum membandingkannya
- gunakan tanda kurung kalau prioritas operator bisa membingungkan pembaca
- ingat bahwa kebanyakan method string mengembalikan string baru

## Mental Model

Expression adalah potongan code yang menghasilkan value.

```python
2 + 3
```

Expression itu menghasilkan `5`.

```python
name.upper()
```

Expression itu menghasilkan string yang sudah diubah.

Kalau kamu terbiasa bertanya "expression ini menghasilkan value apa?", kemampuan menalar code akan meningkat pesat.

## Kesalahan yang Sering Terjadi

- menulis `=` padahal yang dimaksud `==`
- mengira `"5" + "2"` bekerja seperti penjumlahan angka
- lupa bahwa perbandingan string peka terhadap huruf besar-kecil
- mencoba mengubah satu karakter string secara langsung
- menulis expression yang technically benar tetapi sulit dibaca

## Prompt Latihan

1. Apa perbedaan `=` dan `==`?
2. Kenapa `%` berguna di luar soal matematika sekolah?
3. Kenapa f-string biasanya lebih baik daripada penggabungan string berulang?
4. Apa arti pernyataan bahwa string bersifat immutable?

## Mini Exercise

1. Tulis expression yang mengecek apakah sebuah angka berada di antara `10` dan `20`.
2. Buat string lalu cetak karakter pertama, terakhir, dan tiga karakter pertamanya.
3. Ubah teks `"  hello world  "` menjadi `"Hello World"`.
4. Buat dua string, gabungkan menjadi satu kalimat penuh, lalu cetak panjang kalimat itu.

## Checklist Penguasaan

- Saya bisa menjelaskan operator aritmetika, perbandingan, dan logika.
- Saya paham bahwa expression menghasilkan value.
- Saya bisa memanipulasi string dengan method umum.
- Saya bisa memakai concatenation, indexing, slicing, dan `len()` pada string.
- Saya tahu cara memformat output dengan f-string.
- Saya paham bahwa string adalah sequence yang terurut dan immutable.

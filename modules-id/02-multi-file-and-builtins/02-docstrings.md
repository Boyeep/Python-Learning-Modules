# Modul 7: Docstring

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu docstring dan di mana docstring muncul
- kenapa docstring penting untuk maintenance dan onboarding
- bagaimana docstring berbeda dari comment biasa
- informasi apa yang sebaiknya ada dalam docstring yang berguna

## Ide Besar

Docstring menjelaskan tujuan dan perilaku dari module, class, function, atau method.

Docstring bukan hiasan.
Docstring adalah bagian dari antarmuka antara codemu dan orang yang perlu memahaminya.

## Kenapa Ini Penting

Begitu code dipakai ulang, dibagikan, atau dibaca lagi di masa depan, seseorang harus menjawab pertanyaan seperti:

- function ini sebenarnya untuk apa?
- input seperti apa yang diharapkan?
- output-nya merepresentasikan apa?
- asumsi apa yang sedang dipakai?

Docstring yang baik mengurangi tebakan-tebakan itu.

## Teori Inti

### Bentuk Docstring

Docstring biasanya adalah string literal pertama di dalam sebuah definisi.

```python
def calculate_total(price, tax_rate):
    """Return the final price after tax."""
    return price + (price * tax_rate)
```

Python bisa mengakses docstring secara programatis, dan tool seperti `help()` juga bisa menampilkannya.

### Docstring Bisa Muncul di Mana Saja

Docstring bisa ditulis untuk:

- module
- function
- class
- method

Artinya, dokumentasi bisa hidup dekat dengan code yang dijelaskannya.

### Docstring vs Comment

Comment dan docstring saling terkait, tetapi tidak sama.

- comment biasanya menjelaskan detail implementasi
- docstring biasanya menjelaskan tujuan umum, cara pakai, atau perilaku yang diharapkan

Contoh:

```python
def greet(name):
    """Mengembalikan sapaan ramah untuk nama yang diberikan."""
    # Format dibuat sederhana untuk output terminal.
    return f"Hello, {name}"
```

Docstring menjelaskan fungsi code itu bagi pemakainya.
Comment menjelaskan keputusan implementasi di dalamnya.

### Isi Docstring yang Baik

Docstring yang berguna biasanya menjelaskan:

- function atau class ini melakukan apa
- input-nya merepresentasikan apa
- output-nya berarti apa
- side effect penting yang perlu diketahui
- asumsi atau batasan penting
- exception penting, jika relevan bagi pemanggil

Tidak semua docstring harus panjang.
Yang penting, docstring menjawab pertanyaan pertama yang kemungkinan muncul di kepala pembaca.

### Gaya Penting, Tetapi Kejelasan Lebih Penting

Setiap tim bisa memakai gaya docstring yang berbeda.
Ada yang suka docstring satu baris, ada juga yang suka format terstruktur yang merinci argument dan return value.

Tujuan utamanya tetap sama:

- akurat
- ringkas
- berguna

### Kenapa Ini Penting

Docstring membantu:

- keterbacaan
- onboarding
- maintenance
- bantuan dari IDE
- pembuatan dokumentasi otomatis

Di project yang lebih besar, docstring menghemat waktu karena pembaca tidak perlu menebak niat code hanya dari implementasinya.

## Walkthrough Singkat

Bandingkan dua versi ini:

```python
def discount(price, percentage):
    return price - (price * percentage)
```

```python
def discount(price, percentage):
    """Mengembalikan harga setelah diskon dengan persentase berbentuk desimal."""
    return price - (price * percentage)
```

Versi kedua langsung memberi tahu sesuatu yang penting:
`percentage` kemungkinan diharapkan berupa desimal seperti `0.2`, bukan integer seperti `20`.

Klarifikasi kecil seperti itu sering mencegah kebingungan dan bug.

## Aturan Praktis

- tulis docstring untuk code yang akan dipakai ulang orang lain
- jelaskan tujuan sebelum detail implementasi
- perbarui docstring saat perilaku code berubah
- jangan hanya mengulang nama function tanpa menambah makna
- kalau ada perilaku yang mengejutkan, dokumentasikan dengan jelas

## Mental Model

Docstring adalah janji tentang niat.

Docstring seharusnya menjawab pertanyaan:

`Code ini seharusnya melakukan apa bagi orang yang memakainya?`

## Kesalahan yang Sering Terjadi

- menulis docstring yang hanya mengulang nama function
- membiarkan docstring menjadi usang
- memakai docstring untuk deskripsi yang terlalu dangkal seperti "Function untuk data"
- mendokumentasikan helper kecil yang sepele tetapi mengabaikan function publik yang penting
- membuat docstring terlalu panjang ketika nama function dan ringkasan singkat sebenarnya sudah cukup

## Prompt Latihan

1. Apa perbedaan comment dan docstring?
2. Kenapa docstring makin penting saat codebase membesar?
3. Pertanyaan utama apa yang harus dijawab docstring yang baik?
4. Kapan docstring satu baris sudah cukup?

## Mini Exercise

1. Tambahkan docstring ke dua function kecil buatanmu sendiri.
2. Ubah docstring yang samar agar menjelaskan input dan output dengan lebih jelas.
3. Gunakan `help()` pada function yang punya docstring lalu lihat hasilnya.

## Checklist Penguasaan

- Saya paham fungsi docstring.
- Saya bisa membedakan docstring dari comment.
- Saya tahu apa yang seharusnya dijelaskan oleh docstring yang berguna.
- Saya paham bahwa docstring adalah bagian dari interface yang maintainable.
- Saya tahu bahwa kualitas dokumentasi memengaruhi kecepatan kolaborasi.

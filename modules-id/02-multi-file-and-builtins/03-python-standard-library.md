# Modul 8: Python Standard Library

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu Python standard library
- kenapa standard library penting dalam pekerjaan sehari-hari
- beberapa module standar yang menyelesaikan masalah umum
- kenapa built-in tool sering lebih baik daripada custom code yang tidak perlu atau dependency yang terlalu cepat ditambah

## Ide Besar

Python datang dengan standard library yang besar.

Artinya, banyak masalah programming umum sebenarnya sudah punya tools bawaan yang tepercaya, jadi kamu sering tidak perlu memasang package tambahan atau menulis solusi dari nol.

## Kenapa Ini Penting

Pemula kadang mengira setiap tugas butuh package pihak ketiga.
Padahal Python sudah menyediakan tool untuk banyak hal:

- matematika
- tanggal dan waktu
- path file
- JSON
- random
- command-line arguments
- operasi file

Memahami standard library membuatmu lebih cepat dan membantu menghasilkan program yang lebih sederhana serta lebih mudah dibagikan.

## Teori Inti

### Apa Itu Standard Library

Standard library adalah kumpulan module yang sudah disertakan bersama Python.

Kalau sebuah module termasuk standard library, biasanya kamu bisa langsung meng-import-nya tanpa instalasi tambahan.

Contoh hal yang dicakup:

- tanggal dan waktu
- path file
- JSON
- matematika
- nilai random
- command-line arguments
- operasi file

### Module yang Berguna untuk Diketahui Lebih Awal

#### `math`

Berguna untuk fungsi matematika dan konstanta.

```python
import math

math.sqrt(16)
math.pi
```

#### `random`

Berguna untuk memilih value acak atau membuat angka acak sederhana.

```python
import random

random.randint(1, 10)
random.choice(["red", "blue", "green"])
```

#### `datetime`

Berguna untuk bekerja dengan tanggal dan waktu.

```python
from datetime import datetime

datetime.now()
```

#### `json`

Berguna untuk mengubah data Python menjadi JSON dan sebaliknya.

```python
import json

json.dumps({"name": "Alya"})
json.loads('{"name": "Alya"}')
```

Ini penting karena JSON ada di mana-mana: API, konfigurasi, dan data yang disimpan.

#### `pathlib`

Berguna untuk menangani path file dengan cara yang lebih rapi dan lebih berorientasi objek.

```python
from pathlib import Path

Path("notes.txt").exists()
Path("data") / "report.txt"
```

`pathlib` sering lebih mudah dibaca daripada menyusun path dengan string manual.

#### `collections`

Berguna untuk container khusus seperti counter dan default dictionary.

```python
from collections import Counter

Counter(["a", "b", "a"])
```

### Kenapa Standard Library Penting

Memakai standard library sering lebih baik daripada membuat solusi sendiri karena:

- sudah teruji
- banyak developer familiar
- mengurangi dependency yang tidak perlu
- membuat code lebih idiomatik
- membantu portability untuk developer lain

Ini bukan berarti package pihak ketiga itu buruk.
Artinya hanya satu: periksa dulu apakah Python sudah punya solusi bawaan yang cukup bagus.

## Walkthrough Singkat

Bayangkan ada script yang mencatat waktu sekarang lalu menyimpan file JSON:

```python
from datetime import datetime
from pathlib import Path
import json

data = {
    "created_at": datetime.now().isoformat(),
    "status": "ok",
}

path = Path("output.json")
path.write_text(json.dumps(data, indent=2), encoding="utf-8")
```

Script kecil ini hanya memakai standard library, tetapi sudah menangani:

- timestamp
- data terstruktur
- path file
- penulisan file

Ini contoh yang bagus betapa banyak hal yang diberikan Python secara bawaan.

## Aturan Praktis

- sebelum memasang package, cek dulu apakah standard library sudah menyelesaikan masalahnya
- pelajari beberapa module inti dengan baik daripada hafal banyak module secara dangkal
- kalau built-in tool sudah jelas, gunakan itu daripada menulis utility sendiri
- baca dokumentasi resmi saat menjelajahi module yang belum familiar
- jaga daftar dependency tetap ramping jika solusi bawaan sudah cukup

## Mental Model

Sebelum memasang package atau menulis tool dari nol, tanyakan:

`Apakah Python sudah punya cara standar untuk melakukan ini?`

Pertanyaan itu bisa menghemat waktu, mengurangi pekerjaan maintenance, dan membuat code lebih mudah dipahami orang lain.

## Kesalahan yang Sering Terjadi

- tidak mempelajari built-in tools yang sudah ada
- terlalu cepat menambah dependency
- menulis ulang utility sederhana yang sebenarnya sudah tersedia
- memakai package pihak ketiga untuk tugas kecil yang sudah punya solusi bawaan
- mengira standard library hanya cocok untuk project pemula

## Prompt Latihan

1. Apa itu standard library?
2. Kenapa `json` berguna dalam program nyata?
3. Kenapa `pathlib` sering lebih baik daripada membangun path sebagai string manual?
4. Kapan masuk akal memakai package pihak ketiga dibanding standard library?

## Mini Exercise

1. Gunakan `random.choice()` untuk memilih item acak dari sebuah list.
2. Ubah dictionary Python menjadi JSON lalu kembalikan lagi menjadi data Python.
3. Bangun path file dengan `pathlib` daripada concatenation string manual.

## Checklist Penguasaan

- Saya paham apa itu standard library.
- Saya bisa menyebutkan beberapa module bawaan yang berguna.
- Saya tahu kenapa built-in tool sering meningkatkan reliability dan kejelasan.
- Saya paham bahwa built-in tool bisa mengurangi dependency yang tidak perlu.
- Saya tahu bahwa standard library layak dicek sebelum menulis solusi sederhana dari nol.

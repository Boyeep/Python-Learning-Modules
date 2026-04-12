# Modul 8: Python Standard Library

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu Python standard library
- kenapa ini penting
- kategori module bawaan yang umum
- kenapa memakai built-in sering lebih baik daripada menulis ulang alat dasar sendiri

## Ide Besar

Python datang dengan standard library yang besar.

Artinya, banyak masalah programming umum sebenarnya sudah punya tools bawaan yang tepercaya.

## Teori Inti

### Apa Itu Standard Library

Standard library adalah kumpulan module yang sudah disertakan bersama Python.

Contoh hal yang dicakup:

- tanggal dan waktu
- path file
- JSON
- matematika
- nilai random
- command-line arguments
- copy file

### Module yang Berguna untuk Diketahui Lebih Awal

#### `math`

```python
import math
math.sqrt(16)
math.pi
```

#### `random`

```python
import random
random.randint(1, 10)
```

#### `datetime`

```python
from datetime import datetime
datetime.now()
```

#### `json`

```python
import json
json.dumps({"name": "Alya"})
json.loads('{"name": "Alya"}')
```

#### `pathlib`

```python
from pathlib import Path
Path("notes.txt").exists()
```

### Kenapa Standard Library Penting

Memakai standard library sering lebih baik daripada membuat solusi dari nol karena:

- sudah teruji
- banyak orang familiar
- mengurangi dependency yang tidak perlu
- membuat code lebih idiomatik

## Mental Model

Sebelum memasang package atau menulis tool dari nol, tanyakan:

`Apakah Python sudah punya cara standar untuk melakukan ini?`

Pertanyaan itu bisa menghemat banyak waktu.

## Kesalahan yang Sering Terjadi

- tidak mempelajari built-in tools yang sudah ada
- terlalu cepat menambah dependency
- memakai package pihak ketiga untuk masalah sederhana yang sebenarnya sudah ada di standard library

## Prompt Latihan

1. Apa itu standard library?
2. Kenapa `json` berguna dalam program nyata?
3. Kenapa `pathlib` sering lebih baik daripada membangun path sebagai string manual?

## Checklist Penguasaan

- Saya paham apa itu standard library.
- Saya bisa menyebutkan beberapa module bawaan yang berguna.
- Saya tahu kenapa built-in tools sering meningkatkan reliability.
- Saya paham bahwa tools standar meningkatkan keterbacaan antar developer.

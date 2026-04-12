# Modul 6: Modules dan `__main__`

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu module
- kenapa code dibagi ke beberapa file
- bagaimana import bekerja
- apa arti `if __name__ == "__main__":`

## Ide Besar

Module adalah file Python yang bisa mendefinisikan function, class, dan variable untuk dipakai ulang.

Saat code mulai bertambah besar, membagi logika ke beberapa module membuat program lebih mudah dibaca, diuji, dan dirawat.

## Teori Inti

### Kenapa Code Multi-File Itu Ada

Program satu file akan sulit dikelola ketika:

- banyak tanggung jawab bercampur
- logika yang bisa dipakai ulang terus diulang
- beberapa orang bekerja di codebase yang sama

Module membantu menyelesaikan itu dengan memisahkan logika yang saling berkaitan.

### Import Dasar

Misalnya kamu punya:

```python
# math_utils.py
def add(a, b):
    return a + b
```

Lalu di file lain:

```python
from math_utils import add

print(add(2, 3))
```

### Gaya Import

Bentuk yang umum:

```python
import math
from math import sqrt
import math as m
```

Setiap gaya mengubah cara nama diakses.

### `__name__` dan `__main__`

Python memberi setiap module sebuah variabel khusus bernama `__name__`.

Ketika file dijalankan langsung, `__name__` bernilai `"__main__"`.
Ketika file di-import, `__name__` akan bernilai nama module tersebut.

```python
def main():
    print("Running directly")

if __name__ == "__main__":
    main()
```

Kenapa ini penting:

- kamu bisa menyimpan code yang reusable di dalam file
- kamu tetap bisa menjalankan file tersebut langsung untuk uji coba atau eksekusi

## Mental Model

Import memungkinkan satu bagian program menggunakan bagian lain tanpa menyalin code.

Itulah yang membuat software menjadi modular, bukan berantakan.

## Kesalahan yang Sering Terjadi

- menaruh terlalu banyak logika yang tidak berhubungan dalam satu file
- membuat circular import
- lupa bahwa code tertentu bisa jalan saat import jika ditulis sembarangan

## Prompt Latihan

1. Masalah apa yang diselesaikan oleh module?
2. Apa yang berubah ketika file dijalankan langsung dibanding saat di-import?
3. Kenapa `if __name__ == "__main__":` berguna?

## Checklist Penguasaan

- Saya paham apa itu module di Python.
- Saya bisa menjelaskan import dasar.
- Saya paham tujuan dari `__main__`.
- Saya tahu kenapa struktur multi-file meningkatkan maintainability.

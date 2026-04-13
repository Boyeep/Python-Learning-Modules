# Modul 6: Modules dan `__main__`

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu module di Python dan kenapa module diperlukan
- bagaimana import membuat file saling berbagi code yang reusable
- bagaimana `__name__` berubah tergantung cara file digunakan
- kenapa struktur multi-file meningkatkan keterbacaan, testing, dan maintenance

## Ide Besar

Module adalah file Python yang bisa berisi function, class, variable, atau constant untuk dipakai ulang.

Ketika program bertambah besar, membagi code ke dalam module yang fokus membuat tanggung jawab menjadi lebih jelas daripada memaksa semuanya tinggal di satu script besar.

## Kenapa Ini Penting

Script satu file masih oke untuk eksperimen kecil.
Tetapi program nyata cepat sekali menemui masalah:

- utility code terus diulang
- logika yang tidak berhubungan bercampur
- testing makin sulit
- developer baru butuh waktu lebih lama untuk orientasi

Module menyelesaikan masalah itu dengan memberi code tempat yang jelas untuk hidup.

## Teori Inti

### Kenapa Code Multi-File Itu Ada

Program satu file mulai sulit ketika:

- banyak tanggung jawab bercampur
- logika yang reusable terus diulang
- beberapa orang perlu mengedit codebase yang sama
- satu bagian program perlu dipakai oleh bagian lain

Module membuat batas.
Batas itu membantu program menjadi lebih mudah dipahami.

### Module Adalah Namespace

Saat kamu meng-import module, Python memberi akses ke nama-nama yang didefinisikan di file tersebut.

Contoh:

```python
# math_utils.py
def add(a, b):
    return a + b
```

Lalu di file lain:

```python
import math_utils

print(math_utils.add(2, 3))
```

Module bertindak seperti wadah untuk nama-nama yang saling terkait.

### Gaya Import Dasar

Bentuk import yang umum:

```python
import math
from math import sqrt
import math as m
```

Setiap bentuk mengubah cara nama diakses:

- `import math` menjaga nama module tetap terlihat
- `from math import sqrt` membawa satu nama langsung ke file saat ini
- `import math as m` membuat alias yang lebih pendek

Sebagai pemula, lebih baik utamakan kejelasan daripada kehematan mengetik.

### Import Menjalankan Code di Level Atas

Importing module bukan hanya memberi nama.
Python juga menjalankan code level atas di file itu satu kali.

Artinya, code seperti ini akan ikut jalan saat import:

```python
print("Ini jalan saat import")
```

Karena itu, code level atas sebaiknya sederhana dan aman.
Biasanya kamu ingin definisi function atau class berada di atas, bukan banyak perilaku otomatis.

### `__name__` dan `__main__`

Python memberi setiap module variabel khusus bernama `__name__`.

Kalau file dijalankan langsung, `__name__` bernilai `"__main__"`.
Kalau file di-import, `__name__` bernilai nama module tersebut.

```python
def main():
    print("Running directly")

if __name__ == "__main__":
    main()
```

Pola ini berguna karena satu file bisa punya dua peran sekaligus:

- sebagai module reusable saat di-import
- sebagai script yang bisa dijalankan langsung

### Pola Pemisahan yang Umum

Pola yang sering dipakai adalah:

- taruh function reusable di helper module
- simpan entry point program di satu tempat yang jelas
- jangan campurkan setup, business logic, dan utility dalam file yang sama

Pemisahan seperti ini memudahkan testing dan pengembangan lebih lanjut.

## Walkthrough Singkat

Bayangkan ada project kalkulator kecil:

```python
# calculator.py
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b
```

```python
# main.py
from calculator import add

def main():
    print(add(2, 3))

if __name__ == "__main__":
    main()
```

Struktur ini memisahkan:

- logika reusable di `calculator.py`
- logika eksekusi di `main.py`

Pemisahan itu akan semakin bernilai ketika program membesar.

## Aturan Praktis

- buat setiap module fokus pada satu area tanggung jawab
- pilih bentuk import yang jelas dibaca
- hindari side effect berat saat import
- gunakan `if __name__ == "__main__":` untuk code yang hanya boleh jalan saat file dieksekusi langsung
- pecah file menjadi beberapa module saat satu file mulai menangani terlalu banyak hal

## Mental Model

Import memungkinkan satu bagian program memakai bagian lain tanpa menyalin code.

Daripada membayangkan codebase sebagai satu script panjang, bayangkan ia sebagai beberapa file yang bekerja sama dengan batas tanggung jawab yang jelas.

## Kesalahan yang Sering Terjadi

- menaruh terlalu banyak logika yang tidak berhubungan dalam satu file
- membuat circular import antar module
- menulis side effect di level atas file secara sembarangan
- memakai `from ... import *` sehingga code sulit dibaca
- menjadikan module sebagai tempat menaruh sisa code acak, bukan batas yang sengaja dirancang

## Prompt Latihan

1. Masalah apa yang diselesaikan oleh module dalam codebase yang mulai membesar?
2. Apa yang berubah ketika file dijalankan langsung dibanding saat di-import?
3. Kenapa `if __name__ == "__main__":` berguna untuk project belajar maupun aplikasi nyata?
4. Kenapa code level atas di module bisa berisiko?

## Mini Exercise

1. Buat module dengan satu function lalu import dari file lain.
2. Tambahkan `main()` ke sebuah file lalu lindungi dengan `if __name__ == "__main__":`.
3. Refactor ide script satu file menjadi dua file: satu untuk helper reusable dan satu untuk eksekusi.

## Checklist Penguasaan

- Saya paham apa itu module di Python.
- Saya bisa menjelaskan import dasar.
- Saya tahu bahwa import juga menjalankan code level atas di module.
- Saya paham tujuan dari `__main__`.
- Saya tahu kenapa struktur multi-file meningkatkan maintainability.

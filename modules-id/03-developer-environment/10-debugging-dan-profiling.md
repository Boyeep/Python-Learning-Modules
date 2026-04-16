# Modul 19: Debugging dan Profiling Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- teknik debugging dasar untuk Python
- bagaimana menggunakan `pdb` dan debugger IDE
- cara mengukur performa dengan profiling
- bagaimana menemukan bottleneck di environment development

## Ide Besar

Developer environment bukan hanya soal menjalankan code.
Ia juga soal menemukan dan memperbaiki masalah ketika code tidak berjalan sebagaimana mestinya.

Debugging dan profiling membantu membuat project lebih mudah dipelihara.

## Kenapa Ini Penting

Bug dan performa buruk sering muncul setelah environment berubah.
Developer yang tahu cara memeriksa dan mengukur dapat memperbaiki masalah lebih cepat.

Tanpa alat debugging yang tepat, mencari akar masalah menjadi lebih sulit.

## Teori Inti

### Debugging dengan `pdb`

`pdb` adalah debugger bawaan Python.
Contoh penggunaan sederhana:

```python
import pdb

x = 1
y = 2
pdb.set_trace()
print(x + y)
```

Saat eksekusi mencapai `set_trace()`, kamu dapat memeriksa variabel dan melangkah baris demi baris.

### Debugger IDE

Editor seperti VS Code menyediakan debugger grafis.
Debugger IDE biasanya memungkinkan kamu:

- memasang breakpoint
- melihat nilai variabel
- melangkah masuk/keluar fungsi
- mengeksekusi perintah di konteks runtime

Debugging di IDE sering lebih cepat daripada debugging manual.

### Logging sebagai Alat Debugging

Logging membantu melihat apa yang terjadi tanpa menghentikan kode.
Gunakan `logging` alih-alih `print` untuk aplikasi produksi.

Contoh konfigurasi logging sederhana:

```python
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

logger.info("Memulai aplikasi")
```

### Profiling Performa

Profiling membantu menemukan fungsi yang memakan waktu.
Gunakan `cProfile` untuk menghasilkan data performa.

Contoh:

```bash
python -m cProfile -o profile.out my_script.py
```

Untuk membaca hasilnya:

```bash
python -m pstats profile.out
```

### Interpretasi Hasil Profiling

Profiling menunjukkan:

- fungsi mana yang paling sering dipanggil
- total waktu eksekusi per fungsi
- panggilan internal yang mungkin mahal

Informasi ini membantu menentukan bagian mana yang perlu dioptimalkan.

### Debugging Environment-specific

Beberapa bug hanya muncul di environment tertentu.
Gunakan container atau virtual environment yang sama di local, test, dan CI agar perbedaan lingkungan tidak menyulitkan penyelesaian bug.

### Remote Debugging dan Logging

Untuk aplikasi yang berjalan di server atau container, debugger grafis bisa digabungkan dengan logging.
Gunakan breakpoint di IDE ketika environment telah mereplikasi sumber masalah, dan log untuk melacak kejadian sebelum crash.

### Debugging Berdasarkan Data

Jika sebuah bug hanya muncul dalam dataset tertentu, gunakan contoh data nyata untuk mereproduksinya.
Debugging yang efektif sering menggabungkan traceback, log, dan contoh input yang sebenarnya.

### Profiling dalam Workflow

Gunakan profiling secara berkala saat fitur baru ditambahkan.
Jangan menunggu performa menjadi masalah besar; profiling kecil membantu menangkap bottleneck sebelum produksi.

## Walkthrough Singkat

1. Tambahkan logging ke aplikasi.
2. Gunakan `pdb` untuk memeriksa nilai saat bug muncul.
3. Jalankan `cProfile` untuk mengukur performa.
4. Tinjau hasil profiling untuk menemukan bottleneck.

### Contoh Debugging dengan `pdb`

```python
import pdb

x = 10
y = 0
pdb.set_trace()
print(x / y)
```

### Contoh Logging Sederhana

```python
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

logger.info("Memulai aplikasi")
```

### Contoh Profiling dengan `cProfile`

```bash
python -m cProfile -o profile.out my_script.py
python -m pstats profile.out
```

## Aturan Praktis

- gunakan logging daripada `print` jika ingin diagnosis yang lebih teratur
- jangan tinggalkan breakpoint debugging di code produksi
- gunakan profiling hanya ketika kamu butuh data performa
- pahami bahwa optimasi prematur biasanya tidak perlu
- debug dengan contoh data yang realistis

## Mental Model

Debugging dan profiling adalah dua sisi dari pemeliharaan.
Debugging menemukan akar masalah, profiling membantu memperbaiki performa yang nyata.

## Kesalahan yang Sering Terjadi

- mengandalkan `print` untuk semua masalah
- lupa mematikan logging debug di production
- melakukan optimasi tanpa data profiling
- debug hanya di satu mesin tanpa mempertimbangkan environment lain
- menggunakan `pdb` dalam kode yang tidak bisa dijalankan ulang

## Prompt Latihan

1. Kapan sebaiknya kamu memilih `pdb` dibanding `print`?
2. Mengapa logging lebih baik untuk aplikasi besar?
3. Apa tujuan utama profiling?
4. Bagaimana kamu tahu bahwa sebuah fungsi perlu dioptimalkan?

## Mini Exercise

1. Tulis contoh snippet Python dengan `pdb.set_trace()`.
2. Jelaskan langkah menjalankan `cProfile` pada script.
3. Sebutkan dua hal penting yang dicatat oleh profiling.

## Checklist Penguasaan

- Saya tahu kapan menggunakan `pdb` untuk debugging.
- Saya mengerti perbedaan debugging manual dan menggunakan debugger IDE.
- Saya bisa menjelaskan manfaat logging.
- Saya tahu fungsi profiling untuk menemukan bottleneck.
- Saya paham bahwa optimasi harus berdasarkan data.

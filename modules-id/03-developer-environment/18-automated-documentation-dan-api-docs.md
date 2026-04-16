# Modul 27: Automated Documentation dan API Docs

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- manfaat otomatisasi dokumentasi untuk project Python
- alat dokumentasi populer seperti Sphinx dan MkDocs
- bagaimana membuat dokumentasi API dasar
- cara menjaga dokumentasi tetap ter-update

## Ide Besar

Dokumentasi harus menjadi bagian dari workflow development, bukan pekerjaan terpisah.
Otomatisasi dokumentasi membantu menjaga dokumentasi sinkron dengan code.

Dokumentasi API membuat penggunaan library atau service lebih mudah.

## Kenapa Ini Penting

Code yang bagus kadang sulit dipahami tanpa dokumentasi.
Dokumentasi otomatis memudahkan developer baru dan tim lain untuk memakai project.

Dengan dokumentasi terautomasi, kesalahan dokumentasi berkurang.

## Teori Inti

### Mengapa Dokumentasi Otomatis

Tool seperti Sphinx atau MkDocs dapat menghasilkan dokumentasi dari docstring dan file markdown.
Ini mengurangi pekerjaan manual untuk menjaga dokumentasi up-to-date.

### Sphinx dan MkDocs

Sphinx umum digunakan untuk dokumentasi Python yang lengkap.
MkDocs cocok untuk dokumentasi sederhana berbasis Markdown.

### Sphinx untuk API Docs

Contoh setup dasar Sphinx:

```bash
python -m pip install sphinx sphinx-rtd-theme
sphinx-quickstart docs
```

Lalu aktifkan ekstensi `autodoc` di `docs/conf.py`.

### Contoh Docstring

```python
def add(a: int, b: int) -> int:
    """Tambah dua bilangan.

    Args:
        a: Bilangan pertama.
        b: Bilangan kedua.

    Returns:
        Jumlah a dan b.
    """
    return a + b
```

Docstring yang baik membantu alat dokumentasi menghasilkan output yang jelas.

### Menjaga Dokumentasi Tetap Segar

Beberapa praktik baik:

- tulis dokumentasi saat menulis fitur
- jalankan build dokumentasi sebelum release
- gunakan CI untuk memeriksa link dan build docs

### Dokumentasi sebagai Bagian dari CI

Jalankan build dokumentasi di CI untuk memastikan docs selalu valid.
Pipeline dapat mendeteksi broken link atau error build sehingga dokumentasi tidak diterbitkan dalam kondisi rusak.
Ini membuat dokumentasi menjadi bagian dari kualitas project, bukan pekerjaan tambahan.

### Menghubungkan Docstring dan Dokumentasi

Pastikan docstring API ditulis dengan format yang jelas.
Alat seperti `sphinx.ext.autodoc` dapat mengambil docstring secara otomatis menjadi dokumentasi HTML.

### Dokumentasi sebagai Sumber Kebenaran

Dokumentasi harus mencerminkan perilaku aktual kode.
Gunakan test kecil atau check otomatis dalam CI untuk memastikan contoh kode dan link tetap benar.

## Walkthrough Singkat

1. Pilih tool dokumentasi (`Sphinx` atau `MkDocs`).
2. Tulis docstring atau Markdown untuk module utama.
3. Jalankan build dokumentasi.
4. Periksa hasil di browser.

## Aturan Praktis

- dokumentasikan public API dan workflow penting
- gunakan docstring untuk fungsi dan kelas utama
- jangan biarkan dokumentasi usang lama-lama
- jalankan dokumentasi build di CI jika memungkinkan
- buat dokumentasi mudah diakses dari README

## Mental Model

Dokumentasi adalah pola pikir bahwa project harus bisa dipakai oleh orang lain.
Automatisasi dokumentasi membuat pola pikir ini menjadi lebih mudah dijaga.

## Kesalahan yang Sering Terjadi

- hanya menulis dokumentasi setelah fitur selesai
- dokumentasi tidak diuji di build otomatis
- dokumentasi tidak terhubung ke API nyata
- mengandalkan docstring yang terlalu singkat
- tidak menyediakan link ke dokumentasi dalam README

## Prompt Latihan

1. Mengapa dokumentasi harus otomatis jika memungkinkan?
2. Apa perbedaan Sphinx dan MkDocs?
3. Mengapa docstring penting untuk dokumentasi API?
4. Bagaimana CI bisa membantu menjaga dokumentasi?

## Mini Exercise

1. Tuliskan docstring sederhana untuk fungsi Python.
2. Jelaskan langkah dasar membuat docs dengan Sphinx.
3. Sebutkan dua keuntungan dokumentasi otomatis.

## Checklist Penguasaan

- Saya paham mengapa dokumentasi otomatis berguna.
- Saya tahu perbedaan Sphinx dan MkDocs.
- Saya mengerti pentingnya docstring untuk API docs.
- Saya tahu bagaimana menjaga dokumentasi tetap ter-update.
- Saya paham bahwa dokumentasi adalah bagian dari workflow development.

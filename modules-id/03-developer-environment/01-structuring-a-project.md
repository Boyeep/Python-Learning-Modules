# Modul 10: Menyusun Struktur Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- kenapa struktur project itu penting
- apa saja isi umum dari project Python yang maintainable
- bagaimana struktur mendukung keterbacaan dan kerja tim

## Ide Besar

Struktur yang baik tidak membuat code menjadi pintar.
Struktur yang baik membuat code lebih mudah dipahami, diubah, dan dikembangkan.

## Teori Inti

### Kenapa Struktur Penting

Saat code membesar, penempatan file yang acak akan membuat bingung:

- di mana business logic seharusnya diletakkan?
- di mana test disimpan?
- di mana konfigurasi berada?
- file mana yang reusable dan file mana yang menjadi entry point?

Struktur mengurangi beban berpikir.

### Komponen Project yang Umum

Sebuah project Python sederhana bisa berisi:

```text
my_project/
  app/
    __init__.py
    main.py
    utils.py
  tests/
    test_main.py
  requirements.txt
  README.md
```

### Prinsip Pemisahan yang Umum

- entry point harus mudah ditemukan
- logika reusable jangan bercampur dengan script sekali pakai
- test sebaiknya terpisah dari application code
- konfigurasi harus jelas

### Kenapa `main.py` Sering Ada

`main.py` sering berperan sebagai entry point.

File ini membantu menjawab:

`Program ini mulai dari mana?`

Pertanyaan itu semakin penting ketika project bertambah besar.

### Penamaan dan Kejelasan

Struktur yang baik membantu orang memahami project dengan cepat.

Orang baru seharusnya bisa melihat:

- bagaimana cara menjalankan aplikasi
- di mana mengubah logika utama
- di mana menambahkan test

## Mental Model

Struktur project adalah alat komunikasi.

Struktur menyampaikan:

- niat
- batas tanggung jawab
- ownership

## Kesalahan yang Sering Terjadi

- menumpuk semua logika ke satu file
- mencampur test dengan production code secara acak
- memberi nama file yang terlalu samar
- membuat folder bertingkat dalam tanpa tujuan jelas

## Prompt Latihan

1. Kenapa struktur makin penting saat project bertambah besar?
2. Kenapa test biasanya sebaiknya punya tempat yang jelas?
3. Apa yang dibantu oleh entry point yang baik?

## Checklist Penguasaan

- Saya paham kenapa struktur memengaruhi maintainability.
- Saya bisa menjelaskan tujuan layout project sederhana.
- Saya tahu kenapa entry point dan reusable module perlu dipisahkan.
- Saya paham bahwa desain folder juga bagian dari desain software.

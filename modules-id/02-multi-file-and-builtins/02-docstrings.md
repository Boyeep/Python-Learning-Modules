# Modul 7: Docstring

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu docstring
- kenapa docstring penting
- apa saja yang biasanya dijelaskan oleh docstring yang baik
- bagaimana docstring berbeda dari comment biasa

## Ide Besar

Docstring menjelaskan tujuan dari module, class, atau function.

Docstring bukan sekadar hiasan.
Docstring adalah bagian dari cara manusia memahami code.

## Teori Inti

### Bentuk Docstring

```python
def calculate_total(price, tax_rate):
    """Return the final price after tax."""
    return price + (price * tax_rate)
```

### Docstring Bisa Muncul di Mana Saja

- module
- function
- class
- method

### Docstring vs Comment

Comment biasanya menjelaskan detail implementasi.
Docstring biasanya menjelaskan tujuan umum dan cara pakai.

Contoh:

```python
def greet(name):
    """Mengembalikan sapaan ramah untuk nama yang diberikan."""
    # Format dibuat sederhana untuk output terminal.
    return f"Hello, {name}"
```

### Isi Docstring yang Baik

Biasanya menjelaskan:

- function ini melakukan apa
- input-nya merepresentasikan apa
- output-nya berarti apa
- perilaku atau asumsi penting

### Kenapa Ini Penting

Docstring membantu:

- keterbacaan
- onboarding
- maintenance
- tooling dokumentasi

Di project yang lebih besar, docstring yang baik mengurangi waktu yang dibutuhkan untuk memahami code.

## Mental Model

Docstring adalah janji tentang tujuan.

Docstring seharusnya menjawab:

`Code ini seharusnya melakukan apa?`

## Kesalahan yang Sering Terjadi

- hanya mengulang nama function tanpa menambah makna
- menulis docstring lalu membiarkannya usang
- memakai docstring untuk deskripsi yang terlalu dangkal

## Prompt Latihan

1. Apa perbedaan comment dan docstring?
2. Kenapa docstring makin penting saat codebase membesar?
3. Pertanyaan utama apa yang harus dijawab docstring yang baik?

## Checklist Penguasaan

- Saya paham fungsi docstring.
- Saya bisa membedakan docstring dari comment.
- Saya tahu apa yang seharusnya dijelaskan oleh docstring yang berguna.
- Saya paham bahwa kualitas dokumentasi memengaruhi maintainability.

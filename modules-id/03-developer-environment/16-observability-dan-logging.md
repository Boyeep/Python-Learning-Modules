# Modul 25: Observability dan Logging untuk Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu observability untuk aplikasi Python
- peran logging dan metrics dalam environment development
- bagaimana menyiapkan logging yang berguna
- alat sederhana untuk memeriksa health dan performa aplikasi

## Ide Besar

Observability membantu developer memahami apa yang terjadi dalam aplikasi ketika berjalan.
Tanpa observability, kesalahan sering menjadi hitam-putih dan sulit dilacak.

Logging dan metrics adalah dua pilar utama observability.

## Kenapa Ini Penting

Aplikasi yang berjalan di environment nyata membutuhkan cara untuk melihat perilakunya.
Logging membuat kejadian dapat dicari, sementara metrics membantu memahami tren dan performa.

Observability yang baik membuat debugging dan operasi lebih cepat.

## Teori Inti

### Logging yang Baik

Gunakan `logging` di Python untuk mencatat informasi penting daripada `print`.

Contoh konfigurasi sederhana:

```python
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s %(levelname)s [%(name)s] %(message)s',
)
logger = logging.getLogger(__name__)

logger.info('Aplikasi dimulai')
```

### Level Logging

Level logging umum:

- DEBUG untuk informasi detail
- INFO untuk alur normal
- WARNING untuk situasi yang perlu perhatian
- ERROR untuk kesalahan yang terjadi
- CRITICAL untuk masalah serius

### Log Structuring

Struktur log membantu analisis.
Tuliskan pesan yang jelas dan sertakan konteks seperti request id atau nama fungsi.

### Metrics dan Health Check

Metrics sederhana dapat berupa:

- jumlah request
- latency
- error rate

Health check membantu memberi tahu apakah aplikasi siap menerima trafik.

### Observability Tools Ringan

Untuk project kecil, kamu bisa memakai:

- file log lokal
- `Prometheus` + `Grafana` untuk metrics
- `Sentry` atau alat serupa untuk error tracking

### Log Structuring dan Traceability

Buat pesan log yang mudah dibaca dan mengandung konteks seperti module, level, dan request id.
Ini membantu saat menelusuri masalah di environment yang kompleks.
Struktur log juga mempermudah pencarian ketika log dikumpulkan di sistem observability.

### Health Check dan Metrics Sederhana

Selain logging, aplikasi bisa menambahkan endpoint health check atau metrics ringan.
Contoh sederhana:

- `GET /healthz` untuk health check
- `GET /metrics` jika memakai Prometheus

Ini membantu tim memantau status aplikasi secara otomatis.

### Log Aggregation

Untuk project yang lebih besar, pertimbangkan log aggregation.
Log lokal berguna saat debugging awal, tetapi sistem seperti Loki atau ELK membantu jika aplikasi berjalan di beberapa host.

## Walkthrough Singkat

1. Tambahkan logging di bagian startup dan error.
2. Pisahkan log level untuk debug dan production.
3. Buat health endpoint atau command sederhana untuk memeriksa status.
4. Gunakan format log yang mudah dibaca.

### Contoh Logging Konfigurasi

```python
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s %(levelname)s [%(name)s] %(message)s',
)
logger = logging.getLogger(__name__)

logger.info('Aplikasi dimulai')
logger.error('Terjadi error saat koneksi ke database')
```

### Contoh Endpoint Health Check (Flask)

```python
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/healthz')
def healthz():
    return jsonify(status='ok')
```

## Aturan Praktis

- gunakan `logging` bukan `print` untuk aplikasi yang serius
- jangan menulis data sensitif ke log
- gunakan level log yang tepat
- pertimbangkan format log terstruktur bila perlu
- jangan biarkan log debug menyebar ke production tanpa kontrol

## Mental Model

Observability adalah mata dan indera aplikasi kamu.
Tanpa itu, aplikasi seperti berjalan dalam kegelapan.

## Kesalahan yang Sering Terjadi

- terlalu sedikit log sehingga sulit menelusuri peristiwa
- terlalu banyak log debug di production
- log tidak punya konteks yang cukup
- menggunakan format yang sulit dicari
- mencatat informasi sensitif secara tidak sengaja

## Prompt Latihan

1. Mengapa log lebih baik daripada `print` di aplikasi production?
2. Apa yang dimaksud dengan log level?
3. Bagaimana observability membantu debugging?
4. Mengapa penting memisahkan log debug dan error?

## Mini Exercise

1. Tulis contoh konfigurasi logging untuk Python.
2. Jelaskan apa yang harus dicantumkan di message log.
3. Sebutkan dua metrik sederhana yang berguna untuk aplikasi web.

## Checklist Penguasaan

- Saya paham peran observability dalam environment developer.
- Saya tahu dasar penggunaan logging di Python.
- Saya mengerti pentingnya kualitas pesan log.
- Saya tahu mengapa metrics dan health check berguna.
- Saya paham bahwa observability membantu operasi dan debugging.

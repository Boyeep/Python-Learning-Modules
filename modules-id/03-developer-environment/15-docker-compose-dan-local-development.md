# Modul 24: Docker Compose dan Local Development

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- bagaimana Docker Compose mendukung local development untuk aplikasi Python
- perbedaan antara Docker dan Docker Compose
- cara membuat `docker-compose.yml` sederhana
- bagaimana menjalankan layanan terkait seperti database bersama aplikasi

## Ide Besar

Docker Compose membantu menjalankan beberapa container sekaligus tanpa mengonfigurasi semuanya secara manual.
Ia sering dipakai ketika sebuah aplikasi memerlukan service tambahan seperti database, cache, atau message broker.

Dengan Compose, environment lokal bisa lebih mirip dengan produksi.

## Kenapa Ini Penting

Aplikasi nyata biasanya tidak hanya satu proses Python.
Sebuah project bisa membutuhkan database, redis, atau service lain.

Compose membuat environment ini lebih mudah di mulai, dihentikan, dan direplikasi.

## Teori Inti

### Docker Compose vs Docker

- Docker membuat image dan menjalankan container tunggal.
- Docker Compose mengorkestrasi beberapa service dalam satu file.

Compose menggunakan file `docker-compose.yml` untuk mendefinisikan container, volume, dan jaringan.

### Contoh `docker-compose.yml`

Contoh file untuk aplikasi Python dengan database PostgreSQL:

```yaml
version: '3.9'
services:
  app:
    build: .
    command: python -m my_project
    volumes:
      - .:/app
    ports:
      - "8000:8000"
    depends_on:
      - db

  db:
    image: postgres:15
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: mydb
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

### Local Development dengan Compose

Untuk memulai environment lokal:

```bash
docker compose up --build
```

Untuk menghentikan dan membersihkan:

```bash
docker compose down
```

Compose juga dapat menghubungkan container ke kode lokal melalui volume mount.

### Konfigurasi Service Tambahan

Layanan umum yang sering ditambahkan ke Docker Compose:

- database (PostgreSQL, MySQL)
- cache (Redis)
- message broker (RabbitMQ)
- tool observability ringan (Grafana, Prometheus)

### Networking dan Environment Variables

Compose membuat service berkomunikasi lewat jaringan internal.
Gunakan nama service sebagai host, misalnya `db` untuk database dari container app.
Simpan credential dalam `.env` dan rujuk di `docker-compose.yml` agar konfigurasi tetap fleksibel.

### Health Check dan Dependensi

Gunakan `healthcheck` di Compose untuk memastikan service pendukung siap sebelum aplikasi utama dijalankan.
Hal ini membantu mengurangi error start-up ketika service seperti database belum siap.

### Debugging Compose

Untuk debugging, jalankan `docker compose logs -f` dan periksa jaringan service.
`docker compose exec app bash` juga berguna untuk memeriksa kondisi container langsung.

## Walkthrough Singkat

1. Buat `Dockerfile` untuk aplikasi Python.
2. Buat `docker-compose.yml` dengan service app dan dependency.
3. Jalankan `docker compose up --build`.
4. Pastikan aplikasi bisa berkomunikasi dengan service lain.

### Contoh Perintah Compose

```bash
docker compose up --build
# lalu jika ingin menjalankan ulang setelah perubahan
docker compose down
docker compose up --build
```

### Contoh `.env`

```text
POSTGRES_USER=user
POSTGRES_PASSWORD=secret
POSTGRES_DB=mydb
```

## Aturan Praktis

- gunakan file `docker-compose.yml` untuk environment development, bukan produksi langsung
- pastikan service dependency jelas dan mudah di-start
- simpan konfigurasi environment sensitif di `.env`, bukan di file Compose
- gunakan volume mount untuk kode saat development
- jangan commit file `.env` yang berisi rahasia

## Mental Model

Docker Compose adalah cara membuat beberapa container bekerja seperti satu sistem.
Ia membangun environment lokal yang lebih realistis tanpa mengubah cara kode ditulis.

## Kesalahan yang Sering Terjadi

- memasukkan credential sensitif ke file Compose
- menganggap Compose sebagai pengganti semua environment local
- menggunakan image yang terlalu berat untuk development
- tidak membersihkan volume container setelah selesai
- mengandalkan environment host tanpa kontrol versi

## Prompt Latihan

1. Apa perbedaan Docker Compose dan Docker saja?
2. Mengapa volume mount berguna untuk development?
3. Apa tujuan `depends_on` di Compose?
4. Mengapa kita tidak sebaiknya menyimpan password langsung di `docker-compose.yml`?

## Mini Exercise

1. Tulis contoh `docker-compose.yml` untuk aplikasi Python dan PostgreSQL.
2. Jelaskan langkah menjalankan Compose untuk development.
3. Sebutkan dua benefit menggunakan Compose dalam local environment.

## Checklist Penguasaan

- Saya paham fungsi Docker Compose untuk development.
- Saya tahu bagaimana mendefinisikan service di `docker-compose.yml`.
- Saya mengerti perbedaan image dan service.
- Saya tahu kapan menggunakan volume mount dalam Compose.
- Saya paham pentingnya memisahkan credential dari file Compose.

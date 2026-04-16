# Modul 20: Docker dan Containerisasi untuk Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa peran Docker dalam environment developer Python
- bagaimana membuat Dockerfile sederhana untuk aplikasi Python
- perbedaan antara image dan container
- manfaat containerisasi untuk pengujian dan deployment

## Ide Besar

Docker membantu membuat environment lebih konsisten di banyak mesin.
Dengan container, kamu dapat menjalankan aplikasi Python di lingkungan yang sama dengan yang dipakai di CI atau produksi.

Containerisasi bukan wajib, tetapi sangat berguna untuk developer environment modern.

## Kenapa Ini Penting

Tanpa container, project sering bergantung pada setup lokal yang spesifik.
Dengan Docker, developer mendapat environment yang terisolasi dan mudah direproduksi.

Ini membantu mengurangi masalah "berjalan di mesin saya".

## Teori Inti

### Image vs Container

- Image adalah file blueprint untuk environment.
- Container adalah instance berjalan dari image.

Image dibuat sekali, lalu bisa dijalankan berkali-kali sebagai container.

### Dockerfile Sederhana

Contoh Dockerfile untuk aplikasi Python:

```dockerfile
FROM python:3.12-slim
WORKDIR /app
COPY pyproject.toml .
COPY requirements.lock .
RUN python -m pip install --upgrade pip && pip install -r requirements.lock
COPY . .
CMD ["python", "-m", "my_project"]
```

Dockerfile sebaiknya menjelaskan:

- base image yang digunakan
- working directory
- dependency yang di-install
- perintah menjalankan aplikasi

### Build dan Run

Bangun image dengan:

```bash
docker build -t my_project:latest .
```

Jalankan container dengan:

```bash
docker run --rm my_project:latest
```

Untuk development, kamu bisa mount volume agar kode lokal langsung terbaca:

```bash
docker run --rm -v "$PWD":/app my_project:latest
```

### Manfaat Containerisasi

- environment terisolasi
- dependency terkontrol
- bisa dipakai di CI dan tim dengan cara yang sama
- memudahkan reproduksi bug antar mesin

### Batasan dan Perhatian

Docker bukan pengganti virtual environment Python.
Ia lebih cocok sebagai tambahan untuk packaging environment secara system-level.

Privasi file dan secret harus dikelola dengan hati-hati ketika menggunakan container.

### Build-time vs Runtime Dependency

Pisahkan dependency yang hanya diperlukan untuk membangun image dari dependency yang diperlukan saat runtime.
Ini membantu membuat image lebih kecil dan lebih mudah dipelihara.
Biasanya tool build dan test tidak perlu dibawa ke image final.

### Multi-stage Build

Multi-stage build memungkinkan kamu membangun image di satu stage, kemudian menyalin hasil build ke image runtime yang lebih kecil.
Ini sangat berguna untuk menjaga image produksi ringan.

### Volume dan Runtime

Sementara volume mount berguna di development, jelaskan perbedaan antara kode lokal yang dipasang dan image yang berisi paket siap produksi.
Pahami kapan harus menggunakan volume dan kapan harus mengandalkan image saja.

## Walkthrough Singkat

1. Buat Dockerfile dengan base image Python.
2. Gunakan `requirements.lock` untuk install dependency.
3. Bangun image dan jalankan container.
4. Coba perubahan kode dengan volume mount di development.

### Contoh `Dockerfile`

```dockerfile
FROM python:3.12-slim
WORKDIR /app
COPY requirements.lock .
RUN python -m pip install --upgrade pip && pip install -r requirements.lock
COPY . .
CMD ["python", "-m", "my_project"]
```

### Perintah Build dan Run

```bash
docker build -t my_project:latest .
docker run --rm my_project:latest
```

## Aturan Praktis

- gunakan `requirements.lock` atau `pyproject.toml` di Dockerfile
- jangan commit file environment lokal seperti `.env`
- minimalkan ukuran image dengan base image ringan
- gunakan `--rm` saat menjalankan container lokal
- jangan mem-bundle credential langsung ke image

## Mental Model

Docker membuat environment menjadi objek yang dapat dipindahkan.
Dengan image, setup tidak lagi tergantung pada konfigurasi satu laptop.

## Kesalahan yang Sering Terjadi

- melakukan install dependency langsung dari container tanpa lockfile
- menyimpan kode tidak perlu di image
- memasukkan secret ke dalam Dockerfile
- menjalankan container tanpa membersihkan file sementara
- mengandalkan volume mount di production

## Prompt Latihan

1. Apa perbedaan image dan container?
2. Mengapa Docker membantu reproducibility?
3. Apa yang harus dicantumkan di Dockerfile untuk aplikasi Python?
4. Kenapa secret tidak boleh dimasukkan langsung ke image?

## Mini Exercise

1. Tulis contoh Dockerfile minimal untuk aplikasi Python.
2. Jelaskan langkah build dan run container.
3. Sebutkan tiga keuntungan menggunakan Docker di workflow development.

## Checklist Penguasaan

- Saya paham perbedaan image dan container.
- Saya tahu bagaimana membuat Dockerfile sederhana.
- Saya mengerti bagaimana Docker membantu environment developer.
- Saya tahu alasan keamanan untuk tidak menyimpan secret di image.
- Saya dapat menjelaskan kapan containerisasi berguna.

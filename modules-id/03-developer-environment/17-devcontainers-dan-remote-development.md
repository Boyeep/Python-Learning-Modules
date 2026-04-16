# Modul 26: Dev Containers dan Remote Development

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- apa itu Dev Container
- bagaimana dev container membantu environment yang konsisten
- perbedaan antara development lokal biasa dan remote development
- bagaimana menggunakan konfigurasi `devcontainer.json`

## Ide Besar

Dev Container adalah cara mendefinisikan environment developer sebagai kode.
Ia memungkinkan project berjalan dengan setelan yang sama di semua mesin dan editor.

Dengan Dev Container, pengembang dapat membuka project di VS Code dalam environment yang sudah dipersiapkan.

## Kenapa Ini Penting

Tanpa Dev Container, developer sering bergantung pada setup lokal yang berbeda.
Hal ini menyebabkan masalah "works on my machine".

Dev Container membuat environment project lebih reproducible dan cepat di-setup.

## Teori Inti

### Apa itu Dev Container

Dev Container adalah konfigurasi untuk menjalankan project di container khusus pengembangan.
Ini biasanya digunakan bersama VS Code Remote Containers atau GitHub Codespaces.

File utama yang digunakan adalah `devcontainer.json`.

### Konfigurasi Dasar

Contoh `devcontainer.json` sederhana:

```json
{
  "name": "Python Dev Container",
  "image": "mcr.microsoft.com/devcontainers/python:3.12",
  "workspaceFolder": "/workspace",
  "postCreateCommand": "pip install -r requirements.lock",
  "settings": {
    "python.pythonPath": "/usr/local/bin/python"
  }
}
```

### Keuntungan Dev Container

- environment konsisten untuk semua developer
- dependency di-install di container tunggal
- editor dapat terhubung ke environment tersebut
- tidak perlu mengubah setup host

### Perbedaan Remote Development

Remote development berarti editor berjalan di mesin lokal, tetapi code dan runtime berada di lingkungan lain.
Ini bisa berupa container lokal, mesin remote, atau cloud environment.

Kelebihannya adalah host lokal lebih bersih, sementara environment tetap terkontrol.

### Workflow Umum

1. buka project di VS Code.
2. pilih "Reopen in Container".
3. VS Code membuat container berdasarkan konfigurasi.
4. dependency di-install dan project siap.

### Extensions dan Setting yang Konsisten

Dev Container dapat menambahkan ekstensi editor dan preferensi workspace.
Gunakan `settings`, `extensions`, dan `forwardPorts` di `devcontainer.json` agar semua developer bekerja dengan environment editor yang konsisten.

### Dev Container dan Docker Compose

Dev Container ideal untuk lingkungan editor.
Docker Compose lebih cocok untuk menjalankan banyak service lokal.
Keduanya dapat dipakai bersama: gunakan Dev Container untuk menulis kode, dan Compose untuk menjalankan database atau dependency lain.

### Onboarding Otomatis

Sertakan instruksi singkat di `README` tentang cara membuka project di Dev Container.
Jika developer baru bisa langsung klik "Reopen in Container", proses onboarding menjadi jauh lebih cepat.

## Walkthrough Singkat

1. Buat folder `.devcontainer`.
2. Tambahkan file `devcontainer.json`.
3. Pastikan `requirements.lock` atau `requirements.txt` tersedia.
4. Buka project di VS Code dengan remote container.

## Aturan Praktis

- jangan menggunakan container terlalu berat untuk workflow development
- simpan konfigurasi environment di repository
- jangan commit rahasia ke `devcontainer.json`
- gunakan image base yang sesuai versi Python project
- tambahkan perintah `postCreateCommand` hanya untuk setup yang ringan

## Mental Model

Dev Container adalah laptop virtual yang bisa dibagi-bagi.
Setiap developer mendapatkan environment yang sama tanpa mengubah komputer masing-masing.

## Kesalahan yang Sering Terjadi

- menganggap dev container hanya untuk produksi
- memasukkan secret ke dalam konfigurasi container
- menggunakan image yang terlalu besar dan lambat di-build
- tidak menjelaskan cara membuka container di README
- menggabungkan setup container dengan host-specific command

## Prompt Latihan

1. Apa keuntungan memakai Dev Container untuk project Python?
2. Kapan remote development lebih baik daripada setup lokal biasa?
3. Bagaimana `postCreateCommand` digunakan?
4. Mengapa secret tidak boleh disimpan dalam `devcontainer.json`?

## Mini Exercise

1. Tulis contoh `devcontainer.json` minimal.
2. Jelaskan langkah membuka project di Dev Container.
3. Sebutkan dua alasan mengapa Dev Container membantu tim.

## Checklist Penguasaan

- Saya paham apa itu Dev Container.
- Saya tahu perbedaan remote dan local development.
- Saya mengerti bagaimana `devcontainer.json` bekerja.
- Saya tahu mengapa environment development harus bisa direproduksi.
- Saya bisa menjelaskan manfaat Dev Container untuk tim.

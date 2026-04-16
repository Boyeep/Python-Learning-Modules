# Modul 21: Team Workflow dan Release Management untuk Project Python

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- model workflow tim yang umum untuk Git
- prinsip branch, pull request, dan code review
- peran release management dalam project software
- bagaimana environment developer mempengaruhi workflow tim

## Ide Besar

Developer environment bukan hanya setup lokal.
Environment juga mencakup cara tim berkolaborasi dan melepaskan perubahan dengan aman.

Workflow Git yang baik membantu menjaga kode tetap rapi dan memudahkan koordinasi.

## Kenapa Ini Penting

Tanpa workflow yang jelas, perubahan bisa tumpang tindih dan konflik meningkat.
Dengan alur kerja tim yang konsisten, review dan pengujian menjadi lebih dapat diandalkan.

Release management memastikan perubahan dirilis dengan kontrol dan dokumentasi.

## Teori Inti

### Branching Model Sederhana

Beberapa model branch biasa dipakai:

- `main` atau `master` untuk kode stabil
- branch fitur (`feature/...`) untuk perubahan baru
- branch perbaikan cepat (`hotfix/...`) untuk bug produksi

Tugas developer biasanya dibuat di branch terpisah lalu digabung lewat pull request.

### Pull Request dan Code Review

Pull request membantu tim meninjau perubahan sebelum digabung.
Review yang baik biasanya memeriksa:

- apakah kode mengikuti style project
- apakah test sudah ditambahkan atau diupdate
- apakah perubahan mudah dipahami
- apakah ada dokumentasi yang perlu diperbarui

### Continuous Delivery vs Release Manual

Beberapa project menerapkan CD untuk rilis otomatis dari branch tertentu.
Lainnya menggunakan release manual dengan tag dan changelog.

Untuk track pembelajaran ini, penting memahami bahwa release harus terencana.

### Release Management Dasar

Bagian dasar release management:

- `CHANGELOG.md` untuk catatan perubahan
- tag versi Git untuk rilis
- versi package yang jelas di `pyproject.toml`
- proses QA atau review sebelum release

### Branch Protection dan Quality Gates

Branch protection membantu memastikan branch utama hanya menerima perubahan yang sudah di-review dan lulus pipeline.
Quality gates seperti linter, test, dan audit dapat dipasang sebagai syarat merge.

### Release Cadence

Tentukan kapan tim akan merilis: mingguan, setiap sprint, atau sesuai kebutuhan.
Catat versi dan perubahan secara konsisten agar setiap rilis dapat dilacak dan dikomunikasikan.

### Perbaikan Berkelanjutan dalam Workflow

Workflow tim sebaiknya ditinjau secara berkala.
Jika merge request tetap sering mengalami konflik atau review lambat, evaluasi apakah branch model atau aturan review perlu disederhanakan.

Workflow yang sehat membuat developer bisa fokus membangun tanpa overhead proses berlebihan.

### Documenting Release Process

Tuliskan alur release di dokumentasi tim.
Ini bisa berupa checklist:

- buat branch fitur
- jalankan test dan lint
- ajukan PR
- review dan merge
- buat rilis dengan tag

Checklist ini membantu tim baru mengikuti proses dengan benar.

## Walkthrough Singkat

1. Buat branch fitur untuk pekerjaan baru.
2. Jalankan test dan linting sebelum membuat pull request.
3. Mintalah review dari satu atau dua rekan.
4. Setelah merge, buat catatan rilis sederhana.

### Contoh Nama Branch

- `feature/add-login`
- `fix/login-button`
- `hotfix/production-crash`

### Contoh `CHANGELOG.md`

```markdown
## [0.1.1] - 2026-04-15
### Added
- Tambahkan halaman login dengan validasi form.

### Fixed
- Perbaiki masalah timeout pada koneksi database.
```

## Aturan Praktis

- buat branch kecil dan fokus pada satu fungsi
- jalankan test sebelum push atau request review
- gunakan nama branch yang jelas dan konsisten
- perbarui changelog atau dokumentasi rilis
- jangan merge tanpa review jika tim memiliki aturan review

## Mental Model

Workflow tim adalah bagian dari environment project.
Semua orang perlu tahu bagaimana kode bergerak dari pengembangan ke branch utama ke rilis.

## Kesalahan yang Sering Terjadi

- langsung commit ke branch utama tanpa review
- branch terlalu besar dan sulit ditinjau
- tidak menjalankan test sebelum membuat pull request
- rilis tanpa mencatat perubahan penting
- versi package tidak konsisten dengan kode yang dirilis

## Prompt Latihan

1. Apa manfaat membuat branch terpisah untuk fitur baru?
2. Mengapa code review penting sebelum merge?
3. Apa fungsi `CHANGELOG.md`?
4. Bagaimana release management mempengaruhi developer environment?

## Mini Exercise

1. Tuliskan nama branch yang baik untuk fitur login.
2. Buat daftar tiga hal yang dicek sebelum merge.
3. Jelaskan apa yang masuk ke catatan rilis dasar.

## Checklist Penguasaan

- Saya mengerti model branch sederhana untuk tim.
- Saya tahu manfaat pull request dan code review.
- Saya paham apa yang perlu dicatat saat release.
- Saya tahu kenapa workflow tim penting untuk environment.
- Saya bisa menjelaskan peran changelog dan versi.

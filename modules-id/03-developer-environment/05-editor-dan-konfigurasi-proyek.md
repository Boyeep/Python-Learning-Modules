# Modul 14: Editor, Dotfiles, dan Konfigurasi Proyek

## Tujuan Belajar

Di akhir lesson ini, kamu diharapkan memahami:

- peran konfigurasi editor dalam developer environment
- mengapa file konfigurasi project penting
- apa itu `.env`, `.gitignore`, dan konfigurasi linter/formatter
- bagaimana menjaga konfigurasi project tetap jelas dan aman

## Ide Besar

Lingkungan developer bukan hanya Python runtime.
Editor, formatter, linter, dan file konfigurasi juga bagian dari cara kerja yang produktif.

Project yang baik memberi petunjuk ke developer melalui konfigurasi yang konsisten.

## Kenapa Ini Penting

Tanpa konfigurasi yang disepakati, setiap orang dapat menggunakan setelan berbeda:

- indentasi yang tidak konsisten
- linting yang berbeda-beda
- variabel environment yang hilang

File konfigurasi membantu setiap developer memulai dengan pola yang sama.

## Teori Inti

### Editor Config

`editorconfig` atau setelan editor lokal membantu menjaga gaya penulisan konsisten.

Contoh `EditorConfig`:

```ini
root = true
[*]
indent_style = space
indent_size = 2
end_of_line = lf
charset = utf-8
```

Dengan ini, beberapa editor bisa mengikuti aturan yang sama.

### Dotfiles Project

Beberapa file konfigurasi yang sering ada di project Python:

- `.gitignore`
- `.env.example`
- `pyproject.toml`
- `.flake8` atau `.prettierrc`
- `.editorconfig`
- `README.md`
- `.vscode/settings.json`

File-file ini bukan hanya untuk tooling, tapi juga untuk komunikasi teknis.

### Kolaborasi lewat Konfigurasi

Jika tim memakai VS Code, `.vscode/settings.json` bisa berisi konfigurasi workspace shared.
Untuk editor lain, `.editorconfig` membantu menjaga konsistensi indentasi dan encoding.

Konfigurasi yang jelas mengurangi perbedaan gaya dan memudahkan onboarding.

### Konfigurasi Project vs Konfigurasi Personal

Beda antara konfigurasi project dan konfigurasi personal:

- file project untuk semua developer (`.gitignore`, `pyproject.toml`)
- file personal untuk preferensi lokal (`.vscode/extensions.json` terkadang tidak perlu di-commit)

Pastikan project config bersifat umum dan tidak memaksa preferensi pribadi.

### Pre-commit dan Konfigurasi Editor

Tooling seperti `pre-commit` membantu menjalankan formatter dan linter otomatis sebelum commit.
File `.vscode/settings.json` dapat membantu tim yang menggunakan VS Code dengan konfigurasi shared.

Contoh `settings.json`:

```json
{
  "python.pythonPath": ".venv/Scripts/python.exe",
  "editor.formatOnSave": true,
  "files.trimTrailingWhitespace": true
}
```

### Jenis Konfigurasi Proyek

Selain file tooling, ada beberapa jenis konfigurasi yang biasa ditemui:

- environment variables (`.env`, `.env.example`)
- formatting dan linting (`pyproject.toml`, `.flake8`, `.prettierrc`)
- editor settings (`.editorconfig`, `.vscode/settings.json`)
- ignore rules (`.gitignore`)
- task runner dan build scripts (`Makefile`, `setup.sh`)

Menjelaskan jenis konfigurasi ini membantu tim tahu di mana mencari aturan yang relevan.

### Menjaga Rahasia Tetap Aman

Rahasia seperti API key, password, atau token tidak boleh dikomit.
Gunakan `.gitignore` untuk mengecualikan file runtime seperti `.env`.

Jika project butuh secret, berikan contoh di `.env.example` tanpa nilai sensitif.

### `.env` dan Konfigurasi Rahasia

File `.env` menyimpan konfigurasi runtime yang berubah-ubah, seperti API key.

Jangan commit `.env` ke repository.
Gunakan `.env.example` untuk memberi contoh variabel yang dibutuhkan.

### Formatter dan Linter

Formatter seperti `black` dan linter seperti `flake8` membuat gaya dan kualitas code lebih konsisten.

Konfigurasi tooling di file project membantu tim memilih standar yang sama.

## Walkthrough Singkat

Project sederhana bisa terlihat seperti ini:

```text
my_project/
  .gitignore
  .env.example
  .editorconfig
  pyproject.toml
  README.md
```

`README.md` menjelaskan cara setup:

- buat virtual environment
- install dependency
- isi `.env` dari `.env.example`

`pyproject.toml` menyimpan dependency dan pengaturan formatter.

### Contoh File Konfigurasi

Contoh `.gitignore` untuk project Python:

```gitignore
.venv/
__pycache__/
*.pyc
*.pyo
*.pyd
.env
.env.*

# Editor folders
.vscode/
.idea/

# Build folders
build/
dist/
*.egg-info/
```

Contoh `.env.example`:

```text
# Contoh file environment untuk project
DATABASE_URL=sqlite:///data.db
SECRET_KEY=change-me
DEBUG=True
```

Contoh `pyproject.toml` minimal untuk dependency dan formatter:

```toml
[project]
name = "my_project"
version = "0.1.0"
description = "Contoh project Python sederhana"
readme = "README.md"
requires-python = ">=3.10"

[project.dependencies]
requests = "^2.31.0"

[tool.black]
line-length = 88
```

### Contoh `.gitignore`

```gitignore
.venv/
__pycache__/
*.pyc
*.pyo
*.pyd
.env
.env.*

# Editor folders
.vscode/
.idea/

# Build folders
build/
dist/
*.egg-info/
```

### Contoh `.editorconfig`

```ini
root = true
[*]
indent_style = space
indent_size = 4
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
```

## Aturan Praktis

- commit file konfigurasi yang bersifat proyek atau tim
- jangan commit file rahasia seperti `.env`
- sediakan contoh `.env.example`
- gunakan `.gitignore` untuk mengecualikan environment lokal
- pastikan konfigurasi editor dan tooling mudah ditemukan

## Mental Model

File konfigurasi adalah kontrak tim.
Mereka menunjukkan bagaimana project diharapkan dijalankan dan dikembangkan.

## Kesalahan yang Sering Terjadi

- commit `.env` yang berisi secret
- tidak menyediakan file contoh untuk variabel environment
- konfigurasi styling hanya ada di kepala developer
- `.gitignore` tidak mencakup virtual environment dan file sementara
- setelan editor berbeda-beda tanpa file konfigurasi bersama

## Prompt Latihan

1. Kenapa `.env` tidak boleh dikomit?
2. Apa fungsi `.env.example`?
3. Mengapa `.gitignore` penting di project Python?
4. Apa keuntungan menggunakan `.editorconfig`?

## Mini Exercise

1. Buat contoh `.gitignore` untuk project Python.
2. Tulis tiga variabel yang bisa ada di `.env.example`.
3. Jelaskan bagaimana linter dan formatter bisa membantu tim.

## Checklist Penguasaan

- Saya paham peran file konfigurasi dalam developer environment.
- Saya tahu apa yang boleh dan tidak boleh dimasukkan ke repository.
- Saya memahami fungsi `.env.example`.
- Saya tahu bagaimana konfigurasi editor membantu konsistensi.
- Saya paham bahwa tooling config adalah dokumentasi teknik untuk tim.

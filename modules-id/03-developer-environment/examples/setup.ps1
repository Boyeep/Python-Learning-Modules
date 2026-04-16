$ErrorActionPreference = 'Stop'
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.lock
Write-Host "Setup selesai. Environment aktif." -ForegroundColor Green
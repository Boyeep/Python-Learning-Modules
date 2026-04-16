#!/usr/bin/env bash
set -e

python -m venv .venv
source .venv/Scripts/activate
python -m pip install --upgrade pip
pip install -r requirements.lock

echo "Setup selesai. Aktifkan .venv dengan 'source .venv/Scripts/activate'"
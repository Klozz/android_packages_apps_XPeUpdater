#!/usr/bin/env bash

set -e

OLD="Copyright (C) 2025 The XPerience Project"
NEW="Copyright (C) 2025 The LineageOS Project"

echo "[*] Restoring LineageOS copyright headers..."

grep -rl "$OLD" res \
| xargs sed -i "s|$OLD|$NEW|g"

echo "[✓] Done."

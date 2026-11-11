#!/usr/bin/env bash
set -euo pipefail
script_dir="$(dirname "$0")"
exec python3 "$script_dir/build.py" "${1:-resume}"

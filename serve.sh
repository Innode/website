#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8080}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR"
echo "Serving Innode website at http://127.0.0.1:${PORT}"
exec python3 -m http.server "$PORT" --bind 127.0.0.1

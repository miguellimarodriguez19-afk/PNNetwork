#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"
HOST="0.0.0.0"

echo "Subindo servidor em http://localhost:${PORT} (bind ${HOST})"
echo "Se estiver em container/VM, encaminhe a porta ${PORT} e acesse pela URL do ambiente."

exec python3 -m http.server "${PORT}" --bind "${HOST}"

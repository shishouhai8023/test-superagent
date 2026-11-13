#!/usr/bin/env bash
set -euo pipefail

expected="hello from test-superagent"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

actual="$("${script_dir}/hello.sh")"

if [[ "${actual}" != "${expected}" ]]; then
  echo "FAIL: expected '${expected}', got '${actual}'" >&2
  exit 1
fi

echo "ok"

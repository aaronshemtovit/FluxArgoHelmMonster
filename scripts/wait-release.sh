#!/usr/bin/env bash
set -euo pipefail
APP=$1 NS=$2 TIMEOUT=${3:-300}
echo "⏳ waiting for $APP rollout…"
kubectl rollout status deploy/"$APP" -n "$NS" --timeout=${TIMEOUT}s
echo "✅ rollout ok"

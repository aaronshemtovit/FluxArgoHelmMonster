#!/usr/bin/env bash
set -euo pipefail
APP=hello-deployment
echo "🔎 comparing POD images:"
echo "Flux  :" $(kubectl -n default get po -l app=$APP -o jsonpath='{.items[0].spec.containers[0].image}')
echo "Argo  :" $(kubectl -n default get po -l app=$APP -o jsonpath='{.items[1].spec.containers[0].image}')

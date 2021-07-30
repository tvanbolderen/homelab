#!/usr/bin/env sh
set -o errexit
set -o nounset

# Generate helm-docs for Helm charts
# Usage ./gen-helm-docs.sh [chart]

# require helm-docs
command -v helm-docs >/dev/null 2>&1 || {
  echo >&2 "helm-docs is not installed. Aborting."
  exit 1
}

# Absolute path of repository
repository=$(git rev-parse --show-toplevel)

# Templates to copy into each chart directory
readme_template="${repository}/tools/templates/README.md.gotmpl"

for train in charts
do
  for chart in ${train}/*; do
    if [ -d "${chart}" ]; then
      chartname=$(basename ${chart})
      chartversion=$(cat ${chart}/Chart.yaml | grep "^version: " | awk -F" " '{ print $2 }')
      
      echo "-] Copying templates to ${repository}/${chart}"
      
      helm-docs \
        --ignore-file=".helmdocsignore" \
        --output-file="README.md" \
        --chart-search-root="${chart}"
    fi
  done
done

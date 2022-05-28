#! /usr/bin/env bash

SCRIPT_FOLDER="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_FOLDER="${SCRIPT_FOLDER%danoan.github.io/*}danoan.github.io"

while read -r BUILD_SCRIPT
do
    echo "Running: ${BUILD_SCRIPT}"
    "${BUILD_SCRIPT}"
done < <(find "${PROJECT_FOLDER}/content/papers" -name "build-site.sh")


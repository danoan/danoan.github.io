#! /usr/bin/env bash

SCRIPT_FOLDER="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_FOLDER="${SCRIPT_FOLDER%danoan.github.io/*}danoan.github.io"

SITE_FOLDER="${PROJECT_FOLDER}/graph-flow"

rm -rf "${SITE_FOLDER}"

mkdocs build -f"${SCRIPT_FOLDER}/mkdocs.yml"


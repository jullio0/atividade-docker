#!/bin/sh

# Verifica se dois argumentos foram passados
if [ "$#" -ne 2 ]; then
  echo "Uso: ./convert.sh <arquivo_entrada> <formato_saida>"
  exit 1
fi

INPUT_FILE=$1
OUTPUT_FORMAT=$2
OUTPUT_FILE="output.${OUTPUT_FORMAT}"

ffmpeg -i "$INPUT_FILE" "$OUTPUT_FILE"


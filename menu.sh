#!/usr/bin/env bash
set -euo pipefail

# Menu interactivo para ejecutar `cargo run --example <name>`.
# Lista los archivos dentro de ./examples y asume que el nombre del ejemplo
# coincide con el nombre del archivo (sin .rs).

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if [[ ! -d "examples" ]]; then
  echo "No existe ./examples. Nada que ejecutar."
  exit 1
fi

mapfile -t EXAMPLES < <(find ./examples -maxdepth 1 -type f -name "*.rs" | sort)

if ((${#EXAMPLES[@]} == 0)); then
  echo "No se encontraron ejemplos en ./examples."
  exit 1
fi

extract_title() {
  local file="$1"
  local title
  title="$(grep -m1 -E '^// Enunciado:' "$file" | sed -E 's/^\/\/ Enunciado:[[:space:]]*//')"
  if [[ -z "${title// }" ]]; then
    title="$(basename "$file")"
  fi
  echo "$title"
}

while true; do
  clear || true
  echo "=============================="
  echo " Portafolio Rust (menu)"
  echo "=============================="
  echo

  for i in "${!EXAMPLES[@]}"; do
    idx=$((i + 1))
    file="${EXAMPLES[$i]}"
    name="$(basename "$file" .rs)"
    title="$(extract_title "$file")"
    printf "%3d) %s\n     %s\n" "$idx" "$title" "$name"
  done

  echo
  echo "  0) Exit"
  echo
  read -r -p "Seleccione una opcion: " choice

  if [[ "$choice" == "0" ]]; then
    echo "Saliendo..."
    exit 0
  fi

  if [[ "$choice" =~ ^[0-9]+$ ]] && (( choice >= 1 && choice <= ${#EXAMPLES[@]} )); then
    file="${EXAMPLES[$((choice - 1))]}"
    name="$(basename "$file" .rs)"

    echo
    echo "Ejecutando: cargo run --example $name"
    echo "--------------------------------"
    cargo run --example "$name"
    echo "--------------------------------"
    echo
    read -r -p "Presione Enter para volver al menu..." _
  else
    echo "Opcion invalida."
    read -r -p "Presione Enter para continuar..." _
  fi
done

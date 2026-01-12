#!/usr/bin/env bash
set -euo pipefail

# subir_portafolio.sh
# -------------------
# Automatiza: detectar cambios -> git add . -> commit con mensaje automático -> push.
#
# Nota de permisos (una sola vez):
#   chmod +x subir_portafolio.sh
#
# Uso:
#   ./subir_portafolio.sh

say() { printf '%s\n' "$*"; }
die() { printf 'Error: %s\n' "$*" >&2; exit 1; }

require_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "No se encontró el comando requerido: $1"
}

require_cmd git

# Asegura que estamos dentro de un repo.
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || die "Este directorio no es un repositorio Git."

repo_root="$(git rev-parse --show-toplevel)"
repo_name="$(basename "$repo_root")"

# Detecta rama actual (falla si HEAD está detached).
branch="$(git branch --show-current)"
[[ -n "$branch" ]] || die "HEAD está detached. Cambia a una rama (ej. main) antes de ejecutar el script."

# Valida que exista el remoto 'origin'.
git remote get-url origin >/dev/null 2>&1 || die "No existe el remoto 'origin'. Configúralo con: git remote add origin <url>"

# Lee cambios (porcelain v1). Si no hay cambios, salimos.
mapfile -t status_lines < <(git status --porcelain)
if (( ${#status_lines[@]} == 0 )); then
  say "[$repo_name] No hay cambios para commitear."
  exit 0
fi

# Extrae paths afectados. Para un mensaje legible:
# - Preferimos mostrar basename
# - Si hay colisiones (mismo basename en carpetas distintas), usamos el path relativo.
declare -a paths=()
declare -a basenames=()
declare -A basename_count=()

for line in "${status_lines[@]}"; do
  # Formato típico: "XY path" o renames: "R  old -> new"
  entry="${line:3}"
  entry="${entry# }"

  if [[ "$entry" == *" -> "* ]]; then
    entry="${entry##* -> }"
  fi

  # Normaliza y guarda.
  path="$entry"
  [[ -n "$path" ]] || continue

  paths+=("$path")
  base="$(basename "$path")"
  basenames+=("$base")
  ((basename_count["$base"]++)) || true
done

# Construye lista de nombres para el mensaje.
declare -a names=()
for i in "${!paths[@]}"; do
  base="${basenames[$i]}"
  if (( basename_count["$base"] > 1 )); then
    names+=("${paths[$i]}")
  else
    names+=("$base")
  fi
done

# Dedup conservando orden.
declare -A seen=()
declare -a unique_names=()
for n in "${names[@]}"; do
  if [[ -z "${seen[$n]+x}" ]]; then
    seen[$n]=1
    unique_names+=("$n")
  fi
done

max_list=6
if (( ${#unique_names[@]} <= max_list )); then
  files_part="$(IFS=", "; echo "${unique_names[*]}")"
else
  shown=("${unique_names[@]:0:max_list}")
  remaining=$(( ${#unique_names[@]} - max_list ))
  files_part="$(IFS=", "; echo "${shown[*]}") y ${remaining} más"
fi

commit_msg="Update: cambios en ${files_part}"

say "[$repo_name] Rama: $branch"
say "[$repo_name] Commit: $commit_msg"

# Secuencia solicitada.
git add .

# Si el index quedó vacío (por ejemplo, solo cambios ignorados), salimos limpio.
if git diff --cached --quiet; then
  say "[$repo_name] No hay cambios stageados (¿todo está ignorado?)."
  exit 0
fi

git commit -m "$commit_msg"

git push origin "$branch"

say "[$repo_name] Push completado a origin/$branch"

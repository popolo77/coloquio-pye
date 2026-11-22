#!/usr/bin/env bash
# Sincroniza el repo del coloquio con GitHub. Lo llaman los hooks de .claude/settings.json.
#   sync.sh pull -> al abrir una sesión: baja lo último de GitHub
#   sync.sh push -> al terminar cada respuesta de Claude: guarda y sube los cambios
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/..}" || exit 0

case "$1" in
  pull)
    git pull --rebase --autostash -q 2>&1 | tail -n 3
    echo '{"systemMessage":"Repo sincronizado con GitHub (git pull)."}'
    ;;
  push)
    git add -A
    if ! git diff --cached --quiet; then
      git commit -q -m "Avance automático $(date '+%Y-%m-%d %H:%M') ($(hostname))"
    fi
    # Si la otra PC subió algo, lo integra antes de subir.
    git pull --rebase --autostash -q >/dev/null 2>&1
    git push -q >/dev/null 2>&1 || echo '{"systemMessage":"No se pudo hacer git push. Revisá la conexión o corré git push a mano."}'
    ;;
esac
exit 0

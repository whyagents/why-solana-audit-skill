#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "WHY Solana Audit Skill custom installer"
echo
echo "Choose install target:"
echo "1) Personal: $HOME/.claude"
echo "2) Project-local: $(pwd)/.claude"
echo "3) Custom path"
printf "Selection [1]: "
read -r selection
selection="${selection:-1}"

case "$selection" in
  1)
    TARGET="$HOME/.claude"
    ;;
  2)
    TARGET="$(pwd)/.claude"
    ;;
  3)
    printf "Enter custom .claude directory path: "
    read -r TARGET
    if [[ -z "$TARGET" ]]; then
      echo "No target provided."
      exit 1
    fi
    ;;
  *)
    echo "Invalid selection."
    exit 1
    ;;
esac

CLAUDE_DIR="$TARGET" bash "$ROOT_DIR/install.sh"

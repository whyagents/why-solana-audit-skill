#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="${CLAUDE_DIR:-$HOME/.claude}"
SKILL_NAME="why-solana-audit"

mkdir -p "$CLAUDE_DIR/skills/$SKILL_NAME"
mkdir -p "$CLAUDE_DIR/commands"
mkdir -p "$CLAUDE_DIR/agents"
mkdir -p "$CLAUDE_DIR/rules"

cp -R "$ROOT_DIR/skill/." "$CLAUDE_DIR/skills/$SKILL_NAME/"
cp -R "$ROOT_DIR/commands/." "$CLAUDE_DIR/commands/"
cp -R "$ROOT_DIR/agents/." "$CLAUDE_DIR/agents/"
cp -R "$ROOT_DIR/rules/." "$CLAUDE_DIR/rules/"

if [[ -f "$ROOT_DIR/CLAUDE.md" ]]; then
  cp "$ROOT_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.why-solana-audit.md"
fi

echo "Installed WHY Solana Audit Skill into $CLAUDE_DIR"
echo "Skill path: $CLAUDE_DIR/skills/$SKILL_NAME"

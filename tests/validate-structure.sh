#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

required_files=(
  "README.md"
  "LICENSE"
  "install.sh"
  "install-custom.sh"
  "CLAUDE.md"
  "skill/SKILL.md"
  "skill/audit-lifecycle.md"
  "skill/solana-program-threats.md"
  "skill/defi-exploit-class-pass.md"
  "skill/evidence-rules.md"
  "skill/report-template.md"
  "skill/resources.md"
  "commands/why-audit.md"
  "commands/why-audit-report.md"
  "agents/audit-lead.md"
  "agents/poc-engineer.md"
  "agents/economic-risk-reviewer.md"
  "rules/solana-audit-evidence.md"
)

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file"
    exit 1
  fi
done

if ! grep -q "Route By Task" skill/SKILL.md; then
  echo "skill/SKILL.md must include progressive routing."
  exit 1
fi

if ! grep -q "DeFi Exploit-Class Pass" skill/defi-exploit-class-pass.md; then
  echo "Missing DeFi exploit-class pass heading."
  exit 1
fi

legacy_brand="$(printf 'C%sPHES' 'Y')"
if grep -Rni "$legacy_brand" . --exclude-dir=.git; then
  echo "Forbidden legacy brand string found."
  exit 1
fi

echo "WHY Solana Audit Skill structure is valid."

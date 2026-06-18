# WHY Solana Audit Skill

Evidence-driven security review workflows for Solana builders using Claude Code, Codex, and the Solana AI Kit.

WHY Solana Audit Skill turns a coding agent into a disciplined Solana audit partner. It does not stop at "scan the code and summarize risks." It forces the agent to map the repo, classify threat surfaces, run a DeFi exploit-class pass when relevant, produce evidence for every claim, and separate real findings from mock-only or speculative issues.

> Built by [WHY](https://why.com) for the Solana AI Kit ecosystem.

## Problem

Solana teams often ask AI agents to audit programs, DeFi integrations, and protocol code. The usual output is noisy: generic security checklists, missing Solana-specific account model risks, weak evidence, and high-severity claims without runnable proof.

This skill solves the recurring workflow problem:

- What should the agent inspect first?
- Which Solana-specific classes matter for this repo?
- When does a DeFi risk require a proof of concept?
- How should mock-dependent findings be labeled?
- What evidence belongs in a report that founders and engineers can act on?

## What It Does

- Routes audit work through a progressive `skill/SKILL.md` entry point.
- Adds Solana-specific review guidance for Anchor, native programs, SPL Token, Token-2022, CPIs, PDAs, upgrade authorities, and remaining accounts.
- Adds a DeFi exploit-class pass for reentrancy-like callback flows, flash-loan capital, oracle manipulation, MEV/order dependence, LP/share accounting, and mock fidelity.
- Requires file/function evidence, test or trace attempts, residual uncertainty, and proof quality for High/Critical claims.
- Provides report templates, command prompts, agent prompts, rules, installer scripts, and a local structure test.

## Repository Structure

```text
why-solana-audit-skill/
├── README.md
├── LICENSE
├── install.sh
├── install-custom.sh
├── CLAUDE.md
├── skill/
│   ├── SKILL.md
│   ├── audit-lifecycle.md
│   ├── solana-program-threats.md
│   ├── defi-exploit-class-pass.md
│   ├── evidence-rules.md
│   ├── report-template.md
│   └── resources.md
├── commands/
│   ├── why-audit.md
│   └── why-audit-report.md
├── agents/
│   ├── audit-lead.md
│   ├── poc-engineer.md
│   └── economic-risk-reviewer.md
├── rules/
│   └── solana-audit-evidence.md
└── tests/
    └── validate-structure.sh
```

## Installation

### Standard Install

```bash
git clone https://github.com/whyagents/why-solana-audit-skill
cd why-solana-audit-skill
bash install.sh
```

Default install target:

- Skill: `~/.claude/skills/why-solana-audit`
- Commands: `~/.claude/commands/`
- Agents: `~/.claude/agents/`
- Rules: `~/.claude/rules/`

### Custom Install

```bash
bash install-custom.sh
```

The custom installer lets you choose a personal, project-local, or custom `.claude` directory.

## Usage Examples

```text
Use the WHY Solana audit skill to review this Anchor repo before mainnet.
```

```text
Run a DeFi exploit-class pass on this vault. I need applicable classes, evidence, tests attempted, and residual uncertainty.
```

```text
Audit this Solana client and program pair. Separate program bugs from frontend transaction-construction risks.
```

```text
Turn these findings into a report suitable for founders and engineers. Do not include speculative severity claims.
```

## Commands

| Command | Purpose |
| --- | --- |
| `/why-audit` | Run the full audit lifecycle with Solana-specific routing. |
| `/why-audit-report` | Convert notes and findings into the final evidence-backed report. |

## Agents

| Agent | Purpose |
| --- | --- |
| `audit-lead` | Owns scope, repo mapping, severity arbitration, and final report quality. |
| `poc-engineer` | Builds runnable tests, traces, and transaction-level reproductions for high-risk claims. |
| `economic-risk-reviewer` | Reviews DeFi accounting, oracle, liquidity, MEV, and incentive risks. |

## Quality Bar

This skill is intentionally strict:

- Every claim needs file/function evidence.
- High or Critical DeFi findings need a runnable proof, local fork trace, invariant test, or transaction-level simulation.
- Mock-only behavior must be labeled as mock-dependent until reproduced against realistic behavior.
- "Not applicable" is allowed only with a clear reason.
- Public audits and patch notes must be cross-checked before treating a finding as novel.

## Local Validation

```bash
bash tests/validate-structure.sh
```

The validation script checks required files, basic routing content, installer presence, and brand hygiene.

## Fit With Solana AI Kit

This repo follows the standard skill shape used by Solana AI Kit-compatible skills:

- `skill/SKILL.md` as the entry point.
- Focused progressive markdown files loaded only when needed.
- Optional `agents/`, `commands/`, and `rules/`.
- Installer scripts and MIT license.

It is designed to complement core Solana development and security skills, not replace them. Use existing Solana, Trail of Bits, QED, Helius, Jupiter, or framework-specific skills for implementation details, then use WHY to force evidence quality and report discipline.

## License

MIT. See [LICENSE](LICENSE).

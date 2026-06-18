---
name: why-solana-audit
description: Evidence-driven Solana security audit workflows for programs, DeFi protocols, clients, and infrastructure. Use when a builder asks for a serious Solana audit, report, exploit-class review, proof-quality check, or risk triage.
---

# WHY Solana Audit Skill

Use this skill when the task is a Solana security review that needs disciplined evidence, not a generic checklist.

## Route By Task

Open only the files needed for the current task.

| User Need | Load |
| --- | --- |
| Full repo audit, pre-mainnet review, or improvement plan | `audit-lifecycle.md` |
| Program-specific risk review | `solana-program-threats.md` |
| Vault, AMM, lending, oracle, perps, staking, tokenized yield, or DeFi integration review | `defi-exploit-class-pass.md` |
| Severity, proof quality, mock-dependent claims, or final evidence checks | `evidence-rules.md` |
| Final audit report or founder/engineer handoff | `report-template.md` |
| External docs and companion skills | `resources.md` |

## Default Workflow

1. Map the repository before judging it.
2. Classify the target: program, client, backend, indexer, infra, DeFi protocol, or mixed system.
3. Load the smallest relevant guidance files.
4. Record evidence for every claim: file, function, line or code region, command/test/trace attempted, and residual uncertainty.
5. Run the DeFi exploit-class pass for any financial protocol or integration where accounting, pricing, liquidity, custody, or incentives matter.
6. Apply evidence rules before assigning severity.
7. Produce a report using the report template.

## Non-Negotiables

- Do not claim a vulnerability without evidence from the target repo or deployed behavior.
- Do not imply DeFi coverage unless the exploit-class pass is present or explicitly marked not applicable.
- Do not submit a High or Critical DeFi finding without proof-quality evidence.
- Do not treat happy-path mocks as proof.
- Do not flatten everything into "smart contract risk"; Solana client, account, signer, CPI, RPC, indexer, and ops boundaries matter.

## Output Standard

Prefer fewer, stronger findings. A concise report with 8 verified issues beats a noisy report with 40 guesses.

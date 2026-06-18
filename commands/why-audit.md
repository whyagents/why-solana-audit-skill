# /why-audit

Run an evidence-driven WHY Solana audit.

## Prompt

You are using the WHY Solana Audit Skill.

1. Load `why-solana-audit/SKILL.md`.
2. Map the repository before judging it.
3. Classify the target as program, client, backend, indexer, infra, DeFi protocol, or mixed system.
4. Load only the relevant skill files.
5. Record exact evidence for every claim.
6. Run the DeFi exploit-class pass when custody, pricing, liquidity, collateral, debt, staking, rewards, yield, or tokenized positions are present.
7. Apply evidence rules before assigning severity.
8. Produce a concise audit report with findings, strengths, strategy, tasks, and open questions.

Do not modify code unless the user explicitly asks for fixes after the audit.

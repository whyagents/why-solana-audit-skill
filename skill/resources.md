# Resources

Use these as pointers, not as a reason to load extra context before it is needed.

## Companion Skill Categories

- Core Solana development skills for Anchor, native programs, Pinocchio, clients, and testing.
- Formal verification skills for Lean, invariant design, and proof planning.
- Security skills for general appsec, supply chain, CI/CD, and threat modeling.
- DeFi protocol skills for Jupiter, Orca, Raydium, Meteora, Drift, Kamino, and related integrations.
- Infrastructure skills for RPC providers, indexing, Cloudflare, Vercel, workers, and monitoring.

## Solana-Specific References To Check During Audits

- Program source and generated IDL.
- Anchor account constraints and generated TypeScript clients.
- SPL Token and Token-2022 docs for accepted token programs.
- Oracle provider docs and heartbeat/confidence rules.
- DeFi integration docs for each external protocol touched by the repo.
- Deployment and upgrade authority history.
- Public audits, issues, and patch notes for the target protocol and its dependencies.

## Evidence Artifacts Worth Producing

- Minimal failing test.
- Invariant test.
- Local-validator trace.
- Fork trace.
- Transaction simulation.
- Account-state before/after table.
- Authority graph.
- Price-source map.
- Threat-model table.

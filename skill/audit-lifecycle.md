# Audit Lifecycle

Use this when the user asks for a full repository audit, pre-launch review, security assessment, or prioritized improvement plan.

## Phase 1: Discovery And Mapping

Read before judging.

- Map directory structure, project type, languages, frameworks, runtime targets, and deployment model.
- Identify entry points, programs, instruction handlers, clients, tests, scripts, indexers, APIs, workers, and ops glue.
- Read manifests, lockfiles, build config, CI config, environment templates, docs, IDLs, generated clients, migrations, and deployment scripts.
- Determine what the project is for, who uses it, and whether it is prototype, internal, beta, or production.
- Note conventions already in use so recommendations fit the repo.

Output a concise repo map:

- Purpose.
- Stack.
- Architecture sketch.
- Key directories.
- Security-critical flows.
- Unknowns or surprises.

## Phase 2: Evidence-Based Audit

Review each dimension that applies.

### Solana Program Security

Load `solana-program-threats.md` when the repo includes programs, IDLs, generated clients, or instruction-building code.

### DeFi And Economic Security

Load `defi-exploit-class-pass.md` when the target includes custody, swaps, liquidity, collateral, debt, staking, rewards, liquidation, prices, yield, or tokenized positions.

### Client And Transaction Construction

Review:

- Account meta ordering.
- Signer and writable account selection.
- Priority fee and compute budget usage.
- Frontend assumptions about IDL, decimals, mints, authorities, and account ownership.
- Wallet adapter flows and transaction preview quality.
- Simulation and preflight behavior.
- Error handling around blockhash expiry and partial failures.

### Backend, Indexer, And Infrastructure

Review:

- RPC trust boundaries.
- Webhook/indexer replay and idempotency.
- Key management.
- Secret handling.
- Admin endpoints.
- Deployment scripts.
- Monitoring and alerting.
- CI/CD permissions.
- Dependency and supply-chain hygiene.

### Testing And Verification

Review:

- Unit, integration, invariant, property, fuzz, and local-validator tests.
- Whether tests assert failure modes, not just happy paths.
- Whether fixtures model realistic token, oracle, account, and liquidity behavior.
- Coverage around upgrades, authority transfer, initialization, pause, recovery, and shutdown paths.

## Phase 3: Strategy

Synthesize findings into 3 to 5 themes.

For each theme:

- Target state.
- Principle behind the recommendation.
- Trade-offs and what not to fix yet.
- Done signals.

Examples of done signals:

- CI fails on formatting, lint, and tests.
- Critical instructions have negative tests.
- High-severity findings have proof-quality artifacts.
- Upgrade/admin authority is documented and monitored.
- DeFi accounting invariants are tested under realistic token and oracle behavior.

## Phase 4: Task Plan

Break work into milestones.

### Milestone 0: Safety Net

Tests, fork traces, CI gates, backups, reproducible setup, and minimum observability needed before risky changes.

### Milestone 1: Critical Fixes

Security, correctness, authority, fund-loss, and launch-blocking issues.

### Milestone 2: High-Leverage Improvements

Boundaries, shared validation, account helpers, typed clients, test harnesses, and instrumentation.

### Milestone 3: Quality And Polish

Docs, onboarding, lower-risk cleanup, dev experience, and follow-up hardening.

## Required Final Sections

- Executive Summary.
- Repo Map.
- Audit Report.
- DeFi Exploit-Class Pass, if applicable.
- Improvement Strategy.
- Task Plan.
- Open Questions.

Keep the report calibrated to project maturity. Do not recommend enterprise overhead for a weekend prototype unless user goals require it.

# Solana Program Threats

Use this for Anchor, native Solana, Pinocchio, Seahorse, Codama/Shank-generated clients, SPL integrations, and any code that builds Solana transactions.

## Account Model

Review:

- Missing ownership checks.
- Missing signer checks.
- Missing writable checks.
- Confused account roles caused by `remaining_accounts`.
- Account substitution between user-controlled accounts and protocol-owned accounts.
- Account reinitialization.
- Close-account and lamport-drain behavior.
- `realloc` growth, shrink, rent, and stale-data behavior.
- Zero-copy and bytemuck/pod assumptions.
- Discriminator checks and account versioning.

Evidence to record:

- Instruction handler.
- Account constraints or manual validation.
- Accounts that can be user supplied.
- Failing test or reason no test was attempted.

## PDAs And Authority

Review:

- Seed uniqueness and collision resistance.
- Missing bump validation.
- User-controlled seeds that cross authority domains.
- Incorrect PDA signer seeds in CPIs.
- Shared authority PDAs that cover unrelated assets or markets.
- Program-derived authorities over token accounts, mints, vaults, escrow, fees, admin, and upgrades.

Ask:

- Can a user create a PDA that looks valid but belongs to a different market, pool, mint, or position?
- Can one instruction's PDA authority be reused in another context?
- Are seeds stable across upgrades?

## CPI Boundaries

Review:

- Invoked program allowlists.
- CPI account forwarding.
- Token program vs Token-2022 program selection.
- Assumptions about SPL Token behavior.
- Callback-like flows through external programs.
- Account ownership after CPI.
- Authority handoff and signer seeds.
- CPI return value assumptions.

## SPL Token And Token-2022

Review:

- Mint decimals.
- Mint authority and freeze authority.
- Token account owner and delegate.
- Transfer hooks.
- Fees on transfer.
- Interest-bearing, confidential, memo, non-transferable, permanent delegate, close authority, default account state, and metadata extensions when Token-2022 is accepted.
- Mismatched token program IDs.
- Native SOL wrapping and rent edge cases.

## Initialization And Upgrade Surface

Review:

- Program deployment and upgrade authority.
- Initializer idempotency.
- Admin key rotation.
- Paused, frozen, emergency, or migration modes.
- Config account authority and timelock behavior.
- Default values and partial initialization.
- Versioned account migration.

## Client And IDL Drift

Review:

- Generated clients compared with deployed IDL.
- Instruction discriminators.
- Account ordering.
- Type widening or precision loss in TypeScript.
- BN/bigint conversion.
- Decimal scaling.
- Stale local IDLs.
- Transaction simulation vs actual send path.

## Compute And Denial Of Service

Review:

- Unbounded loops over accounts.
- User-supplied vector sizes.
- Expensive PDA derivation in loops.
- Compute-budget assumptions.
- Large account reallocs.
- Rent griefing.
- Log-heavy paths.
- Liquidation, crank, keeper, or settlement flows that can be blocked by malicious accounts.

## Finding Template

For every finding:

- Title.
- Severity.
- Instruction or flow.
- Files and functions reviewed.
- What can go wrong.
- Evidence.
- Reproduction status.
- Fix direction.
- Residual uncertainty.

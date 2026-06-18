# Evidence Rules

Use this before severity arbitration, final reporting, bounty-style claims, or any review where proof quality matters.

## Evidence Levels

| Level | Meaning |
| --- | --- |
| Confirmed | Reproduced with a runnable test, local-validator trace, fork trace, transaction simulation, or deployed-code proof. |
| Strong | Backed by exact code evidence and a credible execution path, but not yet reproduced. |
| Plausible | A reasonable risk that needs more testing or product context. Do not label High/Critical without more proof. |
| Mock-Dependent | Depends on mock behavior and is not yet proven against realistic behavior or deployed code. |
| Speculative | Interesting but not report-ready. Move to open questions or research notes. |

## Severity Rules

### Critical

Use when evidence shows likely direct loss of funds, unauthorized asset movement, protocol insolvency, permanent lock, upgrade/admin compromise, or broad denial of critical protocol operation.

Critical DeFi claims need proof-quality evidence.

### High

Use when evidence shows a realistic path to fund loss, severe accounting corruption, bypass of core constraints, admin/authority abuse path, or material economic extraction.

High DeFi claims need proof-quality evidence or a clear explanation of what remains to reproduce.

### Medium

Use for meaningful risk with narrower impact, missing defense in depth around sensitive flows, test gaps around critical logic, or plausible exploit paths that still need stronger assumptions.

### Low

Use for hardening, clarity, lower-likelihood issues, localized mistakes, documentation mismatches, and non-blocking operational risk.

## Mock Rule

If a finding depends on mock-only behavior, label it mock-dependent until reproduced against realistic behavior or deployed code.

Mock-dependent findings should not be submitted as exploit claims.

## Proof Rule

High or Critical DeFi findings need one of:

- Runnable test.
- Local-validator trace.
- Mainnet/devnet fork trace.
- Invariant or property test.
- Transaction-level simulation.
- Clear deployed-code reproduction.

A narrative-only exploit is strategy material, not a confirmed finding.

## Not Applicable Rule

"Not applicable" is acceptable only with a reason.

Example:

```text
Price manipulation is not applicable to this pure escrow because no instruction uses prices, valuation, or external oracle state.
```

## Known-Audit Rule

Before submission or public reporting:

- Cross-reference public audits.
- Check changelogs and patch reviews.
- Search issues, PRs, advisories, and commit history.
- Add a novelty paragraph if adjacent prior art exists.

## Residual Uncertainty

Every serious finding should state what is still unknown:

- Missing tests.
- Unread code areas.
- Environment assumptions.
- Unverified deployment configuration.
- Missing market/liquidity data.
- Dependency or oracle behavior not reproduced locally.

# Report Template

Use this template for final audit reports and founder/engineer handoffs.

## Executive Summary

Maximum 10 sentences.

Include:

- Overall health grade: A, B, C, D, or F.
- Top 3 risks.
- Top 3 opportunities.
- Launch or merge recommendation.
- Biggest unknowns.

## Scope

- Repository or commit reviewed.
- Branch.
- Date.
- Programs, clients, backends, scripts, and docs reviewed.
- Areas lightly reviewed or out of scope.
- Tooling used.

## Repo Map

- Purpose.
- Stack.
- Architecture sketch.
- Key directories.
- Security-critical flows.
- Main trust boundaries.

## Findings

Sort by severity.

For each finding:

```text
ID:
Title:
Severity:
Status:
Affected files/functions:
What was found:
Why it matters:
Evidence:
Reproduction:
Recommended fix:
Residual uncertainty:
```

## DeFi Exploit-Class Pass

Include this section when applicable.

| Class | Applicable | Evidence | Status | Residual Uncertainty |
| --- | --- | --- | --- | --- |
| Callback and reentry-like flows | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| Flash loan and atomic capital | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| Price manipulation | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| Oracle failure modes | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| Mock fidelity | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| MEV and order dependence | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| Share and LP accounting | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| Liquidation and bad debt | Yes/No | Files/functions/tests | Finding/No finding | Notes |
| Bridge and cross-domain | Yes/No | Files/functions/tests | Finding/No finding | Notes |

## Strengths

List what the repo does well and should preserve.

## Improvement Strategy

Use 3 to 5 themes.

For each:

- Current problem.
- Target state.
- Principle.
- Trade-offs.
- Done signals.

## Task Plan

| Milestone | Task | Description | Areas | Acceptance Criteria | Effort | Risk | Dependencies |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 0 |  |  |  |  | S/M/L/XL | Low/Med/High |  |

## Quick Wins

High-impact, small-effort tasks that can be done immediately.

## Open Questions

Questions that need human product, security, legal, market, or operations context.

## Appendix

- Commands run.
- Tests added or proposed.
- Trace links.
- Public audit references.
- Dependency versions.

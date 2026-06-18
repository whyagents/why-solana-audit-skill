# /why-audit-report

Turn audit notes into a WHY Solana audit report.

## Prompt

Use `why-solana-audit/report-template.md` and `why-solana-audit/evidence-rules.md`.

Build a final report that:

- Starts with findings and risk posture.
- Separates confirmed, strong, plausible, mock-dependent, and speculative issues.
- Includes file/function evidence for every finding.
- Includes the DeFi exploit-class pass if applicable.
- Lists tests, traces, simulations, or proof attempts.
- States residual uncertainty honestly.
- Gives founders and engineers a prioritized task plan.

Do not inflate severity. Do not hide uncertainty.

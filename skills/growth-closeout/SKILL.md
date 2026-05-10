---
name: growth-closeout
description: Close Growth sessions and decide whether Company report updates, Brain archive boundaries, domain follow-ups, structured records, or future tasks are implicated.
---
# Growth Closeout Skill

## Trigger Phrases
- "closeout"
- "session close"
- "wrap up"
- "finish the Growth session"
- "standard closeout report"
- "what changed"

## Required Memory
- `memory/00-index.md`
- `memory/01-agent-purpose.md`
- `memory/02-commercial-boundaries.md`
- `memory/03-source-of-truth-hierarchy.md`
- `memory/05-database-access.md`
- `memory/07-recurring-decisions.md`

## Required Docs Or References
- `_system/codex_session_close.ps1` when command-line closeout context is needed.
- Company Growth report only when the user has not deferred report updates and manager-facing state may have changed.

## Workflow
1. Identify changed files and the nature of the session.
2. Read every new or changed document end to end.
3. Run `git diff --name-only`.
4. Run `git status --short --branch`.
5. Decide whether Company report updates, Brain archive lookup, domain follow-ups, structured records, Planner records, or future tasks are implicated.
6. Check whether completed work maps clearly to an open Growth Planner task under `work_domains.key = sales` / `domain_id = 7`.
7. If a task can be cleared, ask before marking it done unless the user explicitly approved the live Planner update.
8. If local docs changed and manager-facing strategy state changed, update or flag the Company Growth report. Brain docs mirrors are retired for Growth and should not be synced or recreated.
9. Confirm that backlog references were not converted into active projects, tasks, approved roadmap, owner assignments, dates, or commitments unless explicitly approved.
10. Confirm that revenue scenarios were not converted into public offers, prices, campaign promises, sponsor obligations, partner offers, financial commitments, launch dates, approved strategy, active projects, tasks, or revenue commitments unless explicitly approved.
11. Confirm that campaign references were not converted into public claims, prices, campaign promises, reward promises, stretch-goal promises, fulfillment promises, launch dates, approved strategy, active projects, tasks, or revenue commitments unless explicitly approved.
12. Confirm that Planner status was not treated as partner commitment, sponsor promise, outreach execution, pricing approval, campaign launch approval, public claim approval, CRM/relationship state, or sales commitment.
13. Confirm what was not changed: Supabase, Planner records, structured records, app behavior, public site behavior, retired Brain docs mirrors, Company reports, test data, and public/commercial commitments as relevant.
14. Give the standard closeout report.

## Expected Output
```markdown
Changed files:
- path

Verification:
- command or read-through performed

Not changed:
- app behavior/database/public site/etc. as relevant

Unresolved questions:
- item or "None"
```

## Write And Approval Rules
- Do not write Company report updates if the user explicitly deferred them.
- Do not write records, future tasks, CRM data, durable Company/domain context, or live structured data without explicit approval.
- Do not create, edit, complete, reopen, archive, delete, schedule, relink, recur, or otherwise write App Planner project/task records without explicit approval and readback.
- Documentation edits must follow the repo write policy.

## Do-Not-Do Boundaries
- Do not skip verification for documentation-only sessions.
- Do not create follow-up records without approval.
- Do not imply public claims, commitments, pricing, campaign promises, partner offers, sponsor obligations, legal commitments, financial commitments, launch dates, roadmap commitments, or sales commitments were made unless explicitly approved.
- Do not treat recommendations or approved internal strategy as public commitments.
- Do not create tasks or active-project follow-ups from backlog material without explicit approval.
- Do not treat Planner project/task status as approval for partner commitments, sponsor promises, outreach actions, pricing, campaign launch dates, public claims, CRM/relationship state, sales commitments, or approved commercial strategy.
- Do not create revenue follow-up records, tasks, or public/commercial commitments from scenario material without explicit approval.
- Do not create campaign follow-up records, tasks, public claims, reward promises, stretch-goal promises, fulfillment promises, launch dates, or public campaign commitments from draft campaign material without explicit approval.

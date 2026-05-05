---
name: growth-closeout
description: Close Growth sessions and decide whether Brain growth brief updates, domain follow-ups, structured records, or future tasks are implicated.
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
- `memory/07-recurring-decisions.md`

## Required Docs Or References
- `_system/codex_session_close.ps1` when command-line closeout context is needed.
- Brain `growth_brief.md` only when the user has not deferred Brain updates and manager-facing state may have changed.

## Workflow
1. Identify changed files and the nature of the session.
2. Read every new or changed document end to end.
3. Run `git diff --name-only`.
4. Run `git status --short --branch`.
5. Decide whether Brain growth brief updates, domain follow-ups, structured records, or future tasks are implicated.
6. If local docs changed and Brain mirrors may need refreshing later, note that sync is implicated; do not update Brain mirrors unless explicitly authorized.
7. Confirm that backlog references were not converted into active projects, tasks, approved roadmap, owner assignments, dates, or commitments unless explicitly approved.
8. Confirm that revenue scenarios were not converted into public offers, prices, campaign promises, sponsor obligations, partner offers, financial commitments, launch dates, approved strategy, active projects, tasks, or revenue commitments unless explicitly approved.
9. Confirm what was not changed: Supabase, structured records, app behavior, public site behavior, Brain mirrored docs, Brain growth brief, test data, and public/commercial commitments as relevant.
10. Give the standard closeout report.

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
- Do not write Brain growth brief updates if the user explicitly deferred them.
- Do not write records, future tasks, CRM data, domain history, or live structured data without explicit approval.
- Documentation edits must follow the repo write policy.

## Do-Not-Do Boundaries
- Do not skip verification for documentation-only sessions.
- Do not create follow-up records without approval.
- Do not imply public claims, commitments, pricing, campaign promises, partner offers, sponsor obligations, legal commitments, financial commitments, launch dates, roadmap commitments, or sales commitments were made unless explicitly approved.
- Do not treat recommendations or approved internal strategy as public commitments.
- Do not create tasks or active-project follow-ups from backlog material without explicit approval.
- Do not create revenue follow-up records, tasks, or public/commercial commitments from scenario material without explicit approval.

# miniBIOTA Growth

Commercial growth, partnerships, sponsorships, sales, fundraising strategy, and campaign planning vault for miniBIOTA.

## Architecture
- `AGENTS.md` contains hard operating rules, source-of-truth routing, write policy, and commercial safety boundaries.
- `memory/` contains durable commercial context, boundaries, source-of-truth hierarchy, operating model, partner/sales context, campaign context, recurring decisions, and unsorted inbox notes.
- `skills/` contains active Growth workflows.
- `skills/*/reference/` is reserved for exact references needed by specific skills.
- `archive/` is reserved for historical or superseded material after explicit migration approval.
- `docs/` remains active only during migration or when exact reference material still lives there.

## Start

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

Then route work through:

1. Read `AGENTS.md`.
2. Read `memory/00-index.md`.
3. Load only the relevant memory files.
4. Use the matching `skills/*/SKILL.md`.
5. Use `docs/` only where still active during migration or when exact reference material still lives there.
6. Verify Brain current strategy state only when strategy-level state matters.
7. Use Supabase only when current structured records matter and record work is approved.

## Brain Relationship

This repo reports to the Strategy Agent through:

`M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\growth_brief.md`

Detailed growth docs live here. Brain mirrors them read-only into:

`M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\docs\`

Do not edit Brain mirrored docs from this repo.

## Archive
Superseded source docs are kept under `archive/`. The former Growth agent protocol now lives at `archive/superseded/agent_protocol.md` for migration history only; active routing is in `AGENTS.md`, `memory/`, and `skills/`.

## GitHub

Remote: `https://github.com/miniBIOTA/miniBIOTA_Growth`

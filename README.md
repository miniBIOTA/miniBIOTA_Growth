# miniBIOTA Growth

Commercial growth, partnerships, sponsorships, sales, fundraising strategy, and campaign planning vault for miniBIOTA.

## Architecture
- `AGENTS.md` contains hard operating rules, source-of-truth routing, write policy, and commercial safety boundaries.
- `memory/` contains durable commercial context, boundaries, source-of-truth hierarchy, operating model, partner/sales context, campaign context, recurring decisions, and unsorted inbox notes.
- `skills/` contains active Growth workflows.
- `skills/*/reference/` is reserved for exact references needed by specific skills.
- `archive/` stores historical or superseded material after explicit migration approval.
- Migrated Growth source material now lives in `memory/` and `skills/*/reference/`.

## Start

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

Then route work through:

1. Read `AGENTS.md`.
2. Read `memory/00-index.md`.
3. Load only the relevant memory files.
4. Use the matching `skills/*/SKILL.md`.
5. Use `skills/*/reference/` for exact migrated reference material.
6. Verify Brain current strategy state only when strategy-level state matters.
7. Use Supabase only when current structured records matter and record work is approved.

## Brain Relationship

This repo reports to the Strategy Agent through:

`M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\growth_brief.md`

Detailed Growth memory and references live here. Do not edit Brain mirrored docs from this repo.

## Archive
Superseded source docs are kept under `archive/`. Active routing and migrated reference material now live in `AGENTS.md`, `memory/`, and `skills/`.

## GitHub

Remote: `https://github.com/miniBIOTA/miniBIOTA_Growth`

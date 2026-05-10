# miniBIOTA Growth

Commercial growth, partnerships, sponsorships, sales, fundraising strategy, and campaign planning vault for miniBIOTA.

## Architecture
- `AGENTS.md` contains hard operating rules, source-of-truth routing, write policy, and commercial safety boundaries.
- `memory/` contains durable commercial context, boundaries, source-of-truth hierarchy, operating model, partner/sales context, campaign context, recurring decisions, and unsorted inbox notes.
- `skills/` contains active Growth workflows.
- `skills/*/reference/` is reserved for exact references needed by specific skills.
- `archive/` stores historical or superseded material after explicit migration approval.
- Migrated Growth source material now lives in `memory/` and `skills/*/reference/`.
- App Planner/Supabase is the live Growth work queue for current project/task status under `work_domains.key = sales` / `domain_id = 7`.

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
6. Read the Company Growth report when strategy-level current state matters.
7. Use Brain only for historical/archive lookup, provenance, or recovery context.
8. Use Supabase/App Planner only when current structured records, projects, tasks, or relationship state matter; writes require explicit approval.

## Company Transition Link

Company is the active top-level coordination repo. Growth reporting is active at:

- `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_overview.md`
- `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`

The Brain growth brief is historical/archive lookup only.

Detailed Growth memory and references live here. Brain no longer keeps a Growth docs mirror; do not edit Brain mirrored docs from this repo.

## Archive
Superseded source docs are kept under `archive/`. Active routing and migrated reference material now live in `AGENTS.md`, `memory/`, and `skills/`.

## GitHub

Remote: `https://github.com/miniBIOTA/miniBIOTA_Growth`

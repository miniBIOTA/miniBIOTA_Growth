# miniBIOTA Growth - Codex Agent Entry Point

## What This Repo Is
`miniBIOTA_Growth` is the commercial growth, partnerships, sponsorships, sales, and fundraising strategy vault for miniBIOTA. It owns partner pipeline thinking, sponsorship packages, campaign planning, revenue acceleration, speaking/event opportunity strategy, and commercial operating systems.

Codex is the primary operating interface for this repo. Durable operating rules and growth memory belong in Markdown in this repo, in the Brain growth brief, or in Supabase when the record is structured.

## Tech Stack
- Markdown vault as durable growth and commercial memory.
- Growth reference docs under `docs/`.
- Brain strategy brief at `M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\growth_brief.md`.
- Supabase, via `M:\miniBIOTA\miniBIOTA_Brain\_system\minibiota_tools.py`, for tasks, domain history, and structured relationship records when needed.

## Startup Sequence
For a full Codex bootstrap, run:

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

If working manually:

1. Read `AGENTS.md`.
2. Read `docs/agent_protocol.md`.
3. Read `M:\miniBIOTA\miniBIOTA_Brain\_system\agent_memory.md`.
4. Read `M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\growth_brief.md`.
5. Load the lightest local growth doc that can safely answer the request.

For revenue sequencing, read `docs/revenue_acceleration_plan.md`. For sponsorships and pipeline systems, read `docs/commercial_operating_model.md` and `docs/commercial_systems_backlog.md`. For crowdfunding, read `docs/kickstarter_estuary_campaign.md`.

## Source Of Truth
Use this hierarchy when sources disagree:

1. User direction in the current session.
2. `AGENTS.md` and `docs/agent_protocol.md` for Growth Agent operating rules.
3. Brain `growth_brief.md` for strategy-level current state.
4. Local `docs/` files for detailed commercial and growth truth.
5. Supabase for structured/queryable records.
6. Brain mirrored docs and compiled exports as reference artifacts.

Chat history and private model memory are never source of truth. Durable project memory belongs in Markdown in this repo/vault, in Brain, or in Supabase when it is structured data.

## Growth Operating Rules
- Treat growth as the bridge between public credibility and durable business support.
- Keep current-state facts separate from future-state commercial designs.
- Do not invent partner commitments, sponsor claims, campaign launch dates, pricing, or legal/financial promises from memory.
- Ground sponsorship, campaign, and revenue recommendations in current financial context and actual audience/channel state.
- Keep individual-support channels, business sponsorships, crowdfunding, and affiliate paths distinct unless the user explicitly asks to merge messaging.
- Before acting on live outreach, verify the latest contact, campaign, platform, and financial state.

## Brain Relationship
This repo reports to the Strategy Agent through:

`M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\growth_brief.md`

Update that brief at session end when any of these changed:
- Current growth strategy or commercial operating model.
- Active priorities, pipeline assumptions, or campaign sequencing.
- Recent milestones or decisions.
- Known risks, blockers, or missing assets.
- Cross-domain dependencies for Website, Brand, Content, Financials, App, Hardware, or Company Operations.

Do not push full pitch drafts, raw contact lists, detailed outreach research, or working campaign copy to the Brain brief. Keep detailed growth work in this repo.

## Docs
| File | Contents |
|---|---|
| `docs/partners_and_sales_overview.md` | Original Brain Partners & Sales overview, retained as migrated context |
| `docs/commercial_operating_model.md` | Commercial surfaces, lanes, dependencies, and unknowns |
| `docs/commercial_systems_backlog.md` | Build queue and minimum relationship pipeline structure |
| `docs/revenue_acceleration_plan.md` | Sequenced profitability and revenue plan |
| `docs/kickstarter_estuary_campaign.md` | Kickstarter strategy for the estuary build |
| `docs/agent_protocol.md` | Codex operating protocol for Growth sessions |

Docs are mirrored read-only into `M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\docs\` by Brain `sync_docs.ps1`. Edit source docs here, not the Brain mirror.

## Write Policy
Respect `MINIBIOTA_WRITE_MODE` from Brain when available:

| Mode | Behavior |
|---|---|
| `read-only` | No writes anywhere |
| `confirm-before-write` | Confirm with the user before writes |
| `safe-write` | Writes may proceed after stating what will change |

For this repo, tell the user what files you intend to change before editing. Preserve user changes and keep edits scoped to the active request.

## Verification
For documentation-only sessions:
- Read every new or changed doc end to end.
- Run `git diff --name-only` or equivalent.
- Confirm no app behavior, database records, or public site behavior changed.

For live growth/ops sessions:
- Verify current structured records before acting on sponsorships, contacts, newsletter lists, campaign timing, or pipeline state.
- Report any live checks that could not run because of sandbox or network restrictions.

## Session Closeout Report
Close every session with:

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

If local docs changed in a way the Strategy Agent needs, update the Brain growth brief before closing unless the user explicitly defers it.

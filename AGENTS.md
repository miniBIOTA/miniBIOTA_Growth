# miniBIOTA Growth - Codex Agent Entry Point

## What This Repo Is
`miniBIOTA_Growth` is the commercial growth, partnerships, sponsorships, sales, fundraising strategy, and campaign planning vault for miniBIOTA. It owns partner pipeline thinking, sponsorship packages, campaign planning, revenue acceleration, speaking/event opportunity strategy, and commercial operating systems.

Codex is the primary operating interface for this repo. Durable operating rules and growth memory belong in Markdown in this repo, in the Brain growth brief, or in Supabase when the record is structured.

## Tech Stack
- Markdown vault as durable growth and commercial memory.
- Growth memory under `memory/`.
- Reusable Growth Agent playbooks under `skills/`.
- Legacy and superseded materials will move to `archive/` only in a later migration phase.
- Growth reference docs currently remain under `docs/`.
- Brain strategy brief at `M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\growth_brief.md`.
- Supabase, via `M:\miniBIOTA\miniBIOTA_Brain\_system\minibiota_tools.py`, for tasks, domain history, and structured relationship records when needed.

## Startup Sequence
For a full Codex bootstrap, run:

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

If working manually:

1. Read `AGENTS.md`.
2. Read `memory/00-index.md`.
3. Load only the relevant `memory/` files for the request.
4. Use the matching `skills/*/SKILL.md` playbook when a request matches a skill.
5. Read `docs/agent_protocol.md` while migration is still in progress or when protocol details are needed.
6. Read `M:\miniBIOTA\miniBIOTA_Brain\_system\agent_memory.md` when Brain-wide agent rules matter.
7. Read `M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\growth_brief.md` for strategy-level current state.
8. Use Supabase only when current structured records matter to the task.

For revenue sequencing, use `skills/revenue-planning/SKILL.md` and current source material in `memory/` plus `docs/revenue_acceleration_plan.md` while migration is incomplete.

For sponsorships and pipeline systems, use `skills/partner-and-sales-planning/SKILL.md` or `skills/commercial-backlog-triage/SKILL.md` plus `docs/commercial_operating_model.md` and `docs/commercial_systems_backlog.md` while migration is incomplete.

For crowdfunding and launch campaign planning, use `skills/campaign-planning/SKILL.md` plus `docs/kickstarter_estuary_campaign.md` while migration is incomplete.

## Phase 1 Architecture
`memory/` is the durable operating memory layer for this Growth Agent:

| File | Purpose |
|---|---|
| `memory/00-index.md` | Routing index for memory, skills, docs, Brain, and Supabase |
| `memory/01-agent-purpose.md` | Growth Agent purpose, scope, and operating posture |
| `memory/02-commercial-boundaries.md` | Commercial, public claim, commitment, and approval boundaries |
| `memory/03-source-of-truth-hierarchy.md` | Source hierarchy and conflict resolution |
| `memory/04-commercial-operating-model.md` | Current commercial operating model summary |
| `memory/05-partners-and-sales-context.md` | Partner, sponsor, speaking, and pipeline context |
| `memory/06-campaign-context.md` | Kickstarter and campaign planning context |
| `memory/07-recurring-decisions.md` | Decisions that recur across Growth sessions |
| `memory/inbox.md` | Temporary parking lot for unsorted growth notes |

`skills/` contains reusable Growth Agent playbooks:

| Skill | Use |
|---|---|
| `skills/growth-strategy-review/SKILL.md` | Review growth plans, commercial direction, and strategic options |
| `skills/revenue-planning/SKILL.md` | Evaluate revenue paths, commercial scenarios, and funding models |
| `skills/partner-and-sales-planning/SKILL.md` | Plan partner categories, outreach, sales materials, and relationship maps |
| `skills/campaign-planning/SKILL.md` | Plan Kickstarter, launch, rewards, risk review, and campaign messaging |
| `skills/commercial-backlog-triage/SKILL.md` | Prioritize commercial systems and growth infrastructure |
| `skills/growth-closeout/SKILL.md` | Close Growth sessions and identify follow-up implications |

`archive/` is present for later migration phases. Do not move or archive existing docs until the user explicitly starts an archive/migration phase.

## Source Of Truth
Use this hierarchy when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/00-index.md`, and relevant `memory/` files.
3. Matching `skills/*/SKILL.md` playbooks for task workflow and boundaries.
4. `docs/agent_protocol.md` for legacy protocol details while migration is incomplete.
5. Brain `growth_brief.md` for strategy-level current state.
6. Local `docs/` files for detailed commercial and growth truth not yet absorbed into memory or skill references.
7. Supabase for structured/queryable records when current structured state matters.
8. Brain mirrored docs and compiled exports as reference artifacts only.

Chat history and private model memory are never source of truth. Durable project memory belongs in Markdown in this repo/vault, in Brain, or in Supabase when it is structured data.

## Routing Rules
- Start with `memory/00-index.md`; load the lightest memory set that can safely answer the request.
- Use a matching skill when the user asks for a review, plan, campaign, revenue scenario, partner/sales workflow, backlog triage, or closeout.
- Use `docs/` only during migration or when the exact reference still lives there.
- Use the Brain growth brief for manager-facing current state, cross-domain dependencies, and high-level strategy.
- Use Supabase only when current structured records matter, such as live tasks, domain history, relationship records, or verified pipeline state.
- Before acting on live outreach, verify the latest contact, campaign, platform, and financial state.

## Growth Operating Rules
- Treat growth as the bridge between public credibility and durable business support.
- Keep current-state facts separate from future-state commercial designs.
- Keep individual-support channels, business sponsorships, crowdfunding, affiliate paths, speaking, and grants distinct unless the user explicitly asks to merge messaging.
- Ground sponsorship, campaign, and revenue recommendations in current financial context and actual audience/channel state.
- Label assumptions, draft options, projections, dependencies, risks, and recommendations clearly.
- Do not rewrite aspirational plans as approved strategy.
- Do not invent partner commitments, sponsor claims, campaign launch dates, pricing, legal promises, financial promises, roadmap promises, or public claims from memory.
- Do not make commitments, offers, prices, campaign claims, partner promises, sponsor obligations, public claims, or launch targets without explicit user approval.

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

If the user explicitly says not to update the Brain growth brief, honor that instruction and note the deferral in closeout.

## Docs
The original `docs/` files remain active during migration:

| File | Contents |
|---|---|
| `docs/partners_and_sales_overview.md` | Original Brain Partners & Sales overview, retained as migrated context |
| `docs/commercial_operating_model.md` | Commercial surfaces, lanes, dependencies, and unknowns |
| `docs/commercial_systems_backlog.md` | Build queue and minimum relationship pipeline structure |
| `docs/revenue_acceleration_plan.md` | Sequenced profitability and revenue plan |
| `docs/kickstarter_estuary_campaign.md` | Kickstarter strategy for the estuary build |
| `docs/agent_protocol.md` | Codex operating protocol for Growth sessions |

Docs are mirrored read-only into `M:\miniBIOTA\miniBIOTA_Brain\7. Partners & Sales\docs\` by Brain `sync_docs.ps1`. Edit source docs here, not the Brain mirror.

During migration, do not archive or move docs until the user explicitly authorizes that phase.

## Write Policy
Respect `MINIBIOTA_WRITE_MODE` from Brain when available:

| Mode | Behavior |
|---|---|
| `read-only` | No writes anywhere |
| `confirm-before-write` | Confirm with the user before writes |
| `safe-write` | Writes may proceed after stating what will change |

For this repo, tell the user what files you intend to change before editing. Preserve user changes and keep edits scoped to the active request.

Never write Supabase records, CRM records, sales records, partner records, sponsor records, financial records, tasks, or domain history without explicit user approval and a verified need.

## Verification
For documentation-only sessions:
- Read every new or changed doc end to end.
- Run `git diff --name-only` or equivalent.
- Run `git status --short --branch`.
- Confirm no app behavior, database records, structured records, public site behavior, Brain mirrored docs, or Brain growth brief changed unless explicitly authorized.

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

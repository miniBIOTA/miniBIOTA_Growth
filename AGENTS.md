# miniBIOTA Growth - Codex Agent Entry Point

## What This Repo Is
`miniBIOTA_Growth` is the commercial growth, partnerships, sponsorships, sales, fundraising strategy, and campaign planning vault for miniBIOTA. It owns partner pipeline thinking, sponsorship packages, campaign planning, revenue acceleration, speaking/event opportunity strategy, and commercial operating systems.

Codex is the primary operating interface for this repo. Durable operating rules and growth memory belong in Markdown in this repo, in Company reporting paths for manager-facing Company reporting, with Brain growth brief as historical/archive lookup only, or in Supabase when the record is structured.

App Planner/Supabase is the live Growth work queue when current Growth project or task status matters. Growth-owned Planner records live under `work_domains.key = sales` / `domain_id = 7` in `work_projects` and `tasks`. Markdown may keep strategy, context, decisions, references, operating rules, and non-binding backlog ideas, but it must not compete with Planner as the active Growth task-status source.

## Tech Stack
- Markdown vault as durable growth and commercial memory.
- Growth memory under `memory/`.
- Reusable Growth Agent playbooks under `skills/`.
- Legacy and superseded materials live under `archive/` after explicit migration approval.
- Active Growth reference material lives in `memory/` and `skills/*/reference/`.
- Company reporting paths at `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_overview.md` and `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`.
- Company reporting path: `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`.
- Supabase/App Planner via MCP/read-only awareness first; Brain `_system/minibiota_tools.py` is retired from normal workflows; use MCP/read-only awareness and Company/domain-owned helpers instead.

## Startup Sequence
For a full Codex bootstrap, run:

```powershell
powershell -ExecutionPolicy Bypass -File "_system/codex_session_start.ps1"
```

If working manually:

1. Read `AGENTS.md`.
2. Read `memory/00-index.md`.
3. Read Company `_system/agent_repo_registry.md` when top-level routing, reporting paths, Brain retirement migration, or cross-domain ownership matters.
4. Read Company `_system/database_awareness.md` and `memory/11-helper-and-database-awareness-migration.md` when Supabase helper paths or database-awareness routing matter.
5. Read Company `memory/13-domain-agent-migration.md` when Phase 7 routing or reporting activation matters.
6. Load only the relevant `memory/` files for the request.
7. Use the matching `skills/*/SKILL.md` playbook when a request matches a skill.
8. Use relevant `skills/*/reference/` files when exact migrated reference material is needed.
9. Read the Company report when manager-facing Growth state matters.
10. Use Supabase/App Planner only when current structured records, projects, tasks, or relationship state matter to the task.

For revenue sequencing, use `skills/revenue-planning/SKILL.md`, current source material in `memory/`, and `skills/revenue-planning/reference/revenue-acceleration-plan.md`.

For sponsorships and pipeline systems, use `skills/partner-and-sales-planning/SKILL.md` or `skills/commercial-backlog-triage/SKILL.md`, `memory/04-commercial-operating-model.md`, and `skills/commercial-backlog-triage/reference/commercial-systems-backlog.md`.

For crowdfunding and launch campaign planning, use `skills/campaign-planning/SKILL.md`, `memory/06-campaign-context.md`, and `skills/campaign-planning/reference/kickstarter-estuary-campaign.md` when exact migrated campaign detail is needed.

## Phase 1 Architecture
`memory/` is the durable operating memory layer for this Growth Agent:

| File | Purpose |
|---|---|
| `memory/00-index.md` | Routing index for memory, skills, docs, active Company reporting, Brain archive lookup, and Supabase |
| `memory/01-agent-purpose.md` | Growth Agent purpose, scope, and operating posture |
| `memory/02-commercial-boundaries.md` | Commercial, public claim, commitment, and approval boundaries |
| `memory/03-source-of-truth-hierarchy.md` | Source hierarchy and conflict resolution |
| `memory/04-commercial-operating-model.md` | Current commercial operating model summary |
| `memory/05-database-access.md` | Growth database and Planner access boundaries |
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

`archive/` stores superseded source docs after explicit migration approval. Do not move or archive additional docs unless the user explicitly starts an archive/migration phase.

## Source Of Truth
Use this hierarchy when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/00-index.md`, and relevant `memory/` files.
3. Matching `skills/*/SKILL.md` playbooks for task workflow and boundaries.
4. Company Growth reporting paths for strategy-level current state.
5. Local `skills/*/reference/` files for exact migrated commercial and growth reference material.
6. Supabase/App Planner for structured/queryable projects, tasks, and relationship records when current structured state matters.
7. Brain growth brief and compiled exports as historical/archive reference artifacts only.

Chat history and private model memory are never source of truth. Durable project memory belongs in Markdown in this repo/vault, in Company reporting paths for manager-facing Company reporting, in Brain archive lookup only when historical/provenance context is needed, or in Supabase when it is structured data.

## Routing Rules
- Start with `memory/00-index.md`; load the lightest memory set that can safely answer the request.
- Use a matching skill when the user asks for a review, plan, campaign, revenue scenario, partner/sales workflow, backlog triage, or closeout.
- Use `skills/*/reference/` for exact migrated reference material.
- Use `archive/superseded/` only for historical context, migration review, or provenance.
- Use Company Growth reporting paths for manager-facing reporting; use the Brain growth brief only as historical/archive lookup for provenance or recovery context.
- Use Supabase/App Planner only when current structured records matter, such as live projects, live tasks, relationship records, or verified pipeline state.
- Before acting on live outreach, verify the latest contact, campaign, platform, and financial state.

## Planner / Project Management
- App Planner/Supabase is the live Growth work queue for actionable Growth projects and tasks.
- Growth Planner work lives under `work_domains.key = sales` / `domain_id = 7`.
- Current Growth work projects are `Commercial Assets & Sponsorship Package`, `Sponsorship Outreach Pipeline`, `Audience Support & Revenue Sequencing`, `CRM & Relationship Management System`, and `Campaign, Course & Merch Decisions`.
- Read Planner projects/tasks when choosing next Growth work, checking blockers, verifying completion status, or deciding whether completed work maps to an open task.
- At closeout, if completed work maps clearly to an open Planner task, ask whether to mark that task done unless the user explicitly asked for that live task update.
- Partner commitments, sponsor promises, outreach actions, prices, public claims, campaign launch dates, and relationship/CRM status remain separate from Planner task status and require their own verified source and explicit approval.
- Planner project/task create, edit, status, done/reopen, archive, delete, project-link, subtask, schedule, or recurrence changes are live Supabase writes and require explicit user approval.
- Backlog/reference Markdown may describe candidate commercial work, but Planner owns actionable task status.

## Growth Operating Rules
- Treat growth as the bridge between public credibility and durable business support.
- Keep current-state facts separate from future-state commercial designs.
- Keep individual-support channels, business sponsorships, crowdfunding, affiliate paths, speaking, and grants distinct unless the user explicitly asks to merge messaging.
- Ground sponsorship, campaign, and revenue recommendations in current financial context and actual audience/channel state.
- Label assumptions, draft options, projections, dependencies, risks, and recommendations clearly.
- Keep commercial reality, draft ideas, recommendations, approved strategy, and commitments clearly separated.
- Do not rewrite aspirational plans as approved strategy.
- Do not invent partner commitments, sponsor claims, campaign launch dates, pricing, legal promises, financial promises, roadmap promises, or public claims from memory.
- Do not make commitments, offers, prices, pricing claims, campaign claims, partner promises, sponsor obligations, public claims, launch targets, roadmap commitments, sales commitments, financial commitments, or legal commitments without explicit user approval.
- Do not treat Planner project/task status as approval for partner commitments, sponsor promises, outreach execution, pricing, campaign launch dates, public claims, sales commitments, or CRM/relationship state.
- Creating, editing, linking, scheduling, completing, reopening, archiving, or deleting Planner projects/tasks are live Supabase writes and require explicit user approval.
- Treat contact lists, sponsor outreach, partner outreach, and pipeline details as operationally sensitive. Keep detailed working material here unless the user requests a specific authorized destination.

## Company Transition Relationship
Company is the active top-level operating coordination repo. Growth manager-facing reporting is active at:

- `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_overview.md`
- `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`

The Brain growth brief is historical/archive lookup only.

Update or flag manager-facing Growth reporting at session end when any of these changed:
- Current growth strategy or commercial operating model.
- Active priorities, pipeline assumptions, or campaign sequencing.
- Recent milestones or decisions.
- Known risks, blockers, or missing assets.
- Cross-domain dependencies for Website, Brand, Content, Financials, App, Hardware, or Company Operations.

Do not push full pitch drafts, raw contact lists, detailed outreach research, or working campaign copy to manager-facing reports. Keep detailed growth work in this repo.

If the user explicitly says not to update Company reports, honor that instruction and note the deferral in closeout.

## Cross-Domain Dependencies
- **Financials:** revenue targets, debt pressure, profitability timeline, pricing assumptions, and estimated value assumptions.
- **Brand:** sponsor-facing positioning, public voice, founder narrative, and campaign framing.
- **Content:** proof assets, video hooks, field notes, visuals, campaign updates, and audience trust.
- **Web:** donation, events, signup, course/waitlist, campaign, affiliate, and newsletter conversion surfaces.
- **Company Operations:** active top-level coordination, business plan, priorities, legal/business decisions, public commitment context, and repo/domain routing through `M:\miniBIOTA\miniBIOTA_Company\_system\agent_repo_registry.md`.
- **Hardware:** build feasibility and concrete deliverables behind campaign or sponsor claims.
- **App:** internal operator surfaces stay separate from public growth messaging unless explicitly scoped.

## Migrated Docs
The original Growth docs have been absorbed into `memory/`, `skills/`, and `skills/*/reference/` across Phase 2 migration batches. Historical source copies live under `archive/superseded/`.

Do not archive or move any additional source material unless the user explicitly authorizes that phase.

The former `docs/agent_protocol.md` was absorbed into active Growth routing and archived at `archive/superseded/agent_protocol.md` during Phase 2 Batch 1.

The former `docs/commercial_operating_model.md` was absorbed into `memory/04-commercial-operating-model.md`, commercial boundaries, recurring decisions, and `skills/growth-strategy-review/reference/commercial-operating-model.md`, then archived at `archive/superseded/commercial_operating_model.md` during Phase 2 Batch 2.

The former `docs/partners_and_sales_overview.md` was absorbed into `memory/05-partners-and-sales-context.md`, related boundary/source/decision memory, and `skills/partner-and-sales-planning/reference/partners-and-sales-overview.md`, then archived at `archive/superseded/partners_and_sales_overview.md` during Phase 2 Batch 3.

The former `docs/commercial_systems_backlog.md` was absorbed into `memory/07-recurring-decisions.md`, `memory/04-commercial-operating-model.md`, commitment boundaries, and `skills/commercial-backlog-triage/reference/commercial-systems-backlog.md`, then archived at `archive/superseded/commercial_systems_backlog.md` during Phase 2 Batch 4.

The former `docs/revenue_acceleration_plan.md` was absorbed into revenue memory, commercial boundaries, recurring decisions, and `skills/revenue-planning/reference/revenue-acceleration-plan.md`, then archived at `archive/superseded/revenue_acceleration_plan.md` during Phase 2 Batch 5.

The former `docs/kickstarter_estuary_campaign.md` was absorbed into campaign memory, campaign boundaries, recurring decisions, and `skills/campaign-planning/reference/kickstarter-estuary-campaign.md`, then archived at `archive/superseded/kickstarter_estuary_campaign.md` during Phase 2 Batch 6.

## Write Policy
Respect `MINIBIOTA_WRITE_MODE` from Brain when available:

| Mode | Behavior |
|---|---|
| `read-only` | No writes anywhere |
| `confirm-before-write` | Confirm with the user before writes |
| `safe-write` | Writes may proceed after stating what will change |

For this repo, tell the user what files you intend to change before editing. Preserve user changes and keep edits scoped to the active request.

Never write Supabase records, Planner project/task records, CRM records, sales records, partner records, sponsor records, financial records, tasks, or durable Company/domain context without explicit user approval and a verified need.

## Verification
For documentation-only sessions:
- Read every new or changed doc end to end.
- Run `git diff --name-only` or equivalent.
- Run `git status --short --branch`.
- Confirm no app behavior, database records, structured records, public site behavior, retired Brain docs mirrors, or Company reports changed unless explicitly authorized.

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

If local Growth memory or strategy changed in a way manager-facing Company reporting needs, update or flag the Company Growth report before closing unless the user explicitly defers it.

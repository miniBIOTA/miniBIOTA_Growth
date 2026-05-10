# Source Of Truth Hierarchy

## Hierarchy
Use this order when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/00-index.md`, and relevant `memory/` files.
3. Matching `skills/*/SKILL.md` playbooks for workflow and boundaries.
4. Company Growth reporting paths for strategy-level current state.
5. Local `skills/*/reference/` files for exact migrated reference material.
6. Supabase/App Planner for structured/queryable projects, tasks, and relationship records when current structured state matters.
7. `archive/superseded/` only for historical context, migration review, or provenance.
8. Brain growth brief and compiled exports as historical/archive reference artifacts only.

## Non-Sources
Chat history and private model memory are not durable project truth. Use them only as conversational context, then verify against durable sources before acting.

## Conflict Handling
- Prefer the most recent explicit user direction.
- Do not use a lower-priority source to override a higher-priority source.
- If a lower-priority source contains useful detail but conflicts with current direction, call out the conflict and use the current direction.
- If the task depends on live records, verify them before recommending or acting.

## Final Structure
Use the final Growth structure this way:

- `AGENTS.md` defines hard operating rules.
- `memory/` stores durable Growth context, source hierarchy, commercial boundaries, operating model, campaign context, partner/sales context, and recurring decisions.
- `skills/` stores active repeatable workflows.
- `skills/*/reference/` stores exact migrated reference material for those workflows.
- `archive/superseded/` stores historical material only.
- Company Growth reporting paths are active for manager-facing Growth state; the Brain growth brief is historical/archive lookup only.
- Supabase/App Planner is used when current structured records, projects, tasks, or relationship state matter.
- App Planner/Supabase is the live Growth task-status source under `work_domains.key = sales` / `domain_id = 7`.
- Planner task status does not establish partner commitments, sponsor promises, outreach actions, pricing, campaign launch dates, public claims, CRM/relationship state, sales commitments, or approved commercial strategy.
- Markdown memory and skill references may preserve commercial context, decisions, operating rules, and backlog/reference ideas, but they must not override Planner for actionable project/task status.

Brain no longer keeps an active Growth docs mirror. Do not edit, sync, or recreate retired Brain docs mirrors.

## Historical Sources
The following archived files are historical only. Do not treat them as active sources unless reviewing migration history or provenance:

- `archive/superseded/agent_protocol.md`
- `archive/superseded/commercial_operating_model.md`
- `archive/superseded/partners_and_sales_overview.md`
- `archive/superseded/commercial_systems_backlog.md`
- `archive/superseded/revenue_acceleration_plan.md`
- `archive/superseded/kickstarter_estuary_campaign.md`

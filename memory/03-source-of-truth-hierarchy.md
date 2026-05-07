# Source Of Truth Hierarchy

## Hierarchy
Use this order when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/00-index.md`, and relevant `memory/` files.
3. Matching `skills/*/SKILL.md` playbooks for workflow and boundaries.
4. Brain `growth_brief.md` for strategy-level current state.
5. Local `skills/*/reference/` files for exact migrated reference material.
6. `archive/superseded/` only for historical context, migration review, or provenance.
7. Supabase for structured/queryable records when current structured state matters and record work is approved.
8. Brain growth brief and compiled exports as reference artifacts only.

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
- Brain `growth_brief.md` carries manager-facing, strategy-level current state.
- Supabase is used only when current structured records matter and record work is approved.

Brain no longer keeps an active Growth docs mirror. Do not edit, sync, or recreate retired Brain docs mirrors.

## Historical Sources
The following archived files are historical only. Do not treat them as active sources unless reviewing migration history or provenance:

- `archive/superseded/agent_protocol.md`
- `archive/superseded/commercial_operating_model.md`
- `archive/superseded/partners_and_sales_overview.md`
- `archive/superseded/commercial_systems_backlog.md`
- `archive/superseded/revenue_acceleration_plan.md`
- `archive/superseded/kickstarter_estuary_campaign.md`

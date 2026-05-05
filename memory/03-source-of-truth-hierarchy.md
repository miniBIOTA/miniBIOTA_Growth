# Source Of Truth Hierarchy

## Hierarchy
Use this order when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/00-index.md`, and relevant `memory/` files.
3. Matching `skills/*/SKILL.md` playbooks for workflow and boundaries.
4. Brain `growth_brief.md` for strategy-level current state.
5. Local `docs/` files for detailed growth truth not yet absorbed into memory or skill references.
6. Supabase for structured/queryable records when current structured state matters and record work is approved.
7. Brain mirrored docs and compiled exports as reference artifacts only.

## Non-Sources
Chat history and private model memory are not durable project truth. Use them only as conversational context, then verify against durable sources before acting.

## Conflict Handling
- Prefer the most recent explicit user direction.
- Do not use a lower-priority source to override a higher-priority source.
- If a lower-priority source contains useful detail but conflicts with current direction, call out the conflict and use the current direction.
- If the task depends on live records, verify them before recommending or acting.

## Brain And Docs
The Brain growth brief carries manager-facing strategy-level state. The local `docs/` directory still carries detailed source material during migration. Brain mirrored docs are read-only reference artifacts and should not be edited here.

The former `docs/agent_protocol.md` has been absorbed into active Growth routing and archived at `archive/superseded/agent_protocol.md`; do not treat it as an active source unless reviewing migration history.

The former `docs/commercial_operating_model.md` has been absorbed into `memory/04-commercial-operating-model.md` and `skills/growth-strategy-review/reference/commercial-operating-model.md`; do not treat the archived copy as an active source unless reviewing migration history.

The former `docs/partners_and_sales_overview.md` has been absorbed into `memory/05-partners-and-sales-context.md` and `skills/partner-and-sales-planning/reference/partners-and-sales-overview.md`; do not treat the archived copy as an active source unless reviewing migration history.

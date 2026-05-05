# Source Of Truth Hierarchy

## Hierarchy
Use this order when sources disagree:

1. User direction in the current session.
2. `AGENTS.md`, `memory/00-index.md`, and relevant `memory/` files.
3. Matching `skills/*/SKILL.md` playbooks for workflow and boundaries.
4. `docs/agent_protocol.md` for legacy protocol details while migration is incomplete.
5. Brain `growth_brief.md` for strategy-level current state.
6. Local `docs/` files for detailed growth truth not yet absorbed into memory or skill references.
7. Supabase for structured/queryable records when current structured state matters.
8. Brain mirrored docs and compiled exports as reference artifacts only.

## Non-Sources
Chat history and private model memory are not durable project truth. Use them only as conversational context, then verify against durable sources before acting.

## Conflict Handling
- Prefer the most recent explicit user direction.
- Do not use a lower-priority source to override a higher-priority source.
- If a lower-priority source contains useful detail but conflicts with current direction, call out the conflict and use the current direction.
- If the task depends on live records, verify them before recommending or acting.

## Brain And Docs
The Brain growth brief carries manager-facing strategy-level state. The local `docs/` directory still carries detailed source material during migration. Brain mirrored docs are read-only reference artifacts and should not be edited here.

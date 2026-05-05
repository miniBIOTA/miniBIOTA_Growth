# Migration Notes

## Phase 1 - Architecture Created
Phase 1 created the initial Growth Agent memory and playbook architecture:

- `memory/` for durable Growth Agent memory.
- `skills/` for reusable Growth Agent playbooks.
- `skills/*/reference/` folders for later skill-local source material.
- `archive/` for later migration phases.

## Docs Status
Old docs are not archived yet. Existing files under `docs/` remain active source material during migration.

Future phases should absorb stable material from `docs/` into:

- `memory/`
- `skills/`
- `skills/*/reference/`

After that absorption is reviewed and approved, superseded docs can be archived in a later phase.

## Phase 1 Audit Note
The Phase 1 audit passed with no blocking issues. The audit found stale startup and closeout routing in `README.md`, `_system/codex_session_start.ps1`, `_system/codex_session_close.ps1`, and the still-active `docs/agent_protocol.md`; those routing notes were patched after approval.

`docs/agent_protocol.md` is now explicitly marked as partially superseded by `AGENTS.md`, `memory/00-index.md`, and repo-local `skills/`. It should be the first doc migration target in a later migration batch.

High-risk commercial docs, especially revenue and Kickstarter material with numbers, tiers, timelines, campaign language, or projected outcomes, must remain draft/reference material until explicitly approved.

## Phase 1 Non-Changes
No structured records, commitments, sales promises, or live systems were changed.

Phase 1 did not:

- Write to Supabase.
- Create or change CRM records.
- Create or change sales, partner, sponsor, financial, task, or domain-history records.
- Create test data.
- Update Brain mirrored docs.
- Update the Brain growth brief.
- Change app behavior.
- Change public site behavior.
- Make public claims, prices, campaign promises, sponsor obligations, partner offers, legal commitments, financial commitments, launch dates, roadmap commitments, or sales commitments.
- Move or archive existing docs.
- Edit `_system/` scripts.

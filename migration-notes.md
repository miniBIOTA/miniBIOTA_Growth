# Migration Notes

## Phase 1 - Architecture Created
Phase 1 created the initial Growth Agent memory and playbook architecture:

- `memory/` for durable Growth Agent memory.
- `skills/` for reusable Growth Agent playbooks.
- `skills/*/reference/` folders for later skill-local source material.
- `archive/` for later migration phases.

## Docs Status
At Phase 1, old docs were not archived yet. As of Phase 2 Batch 2, `docs/agent_protocol.md` and `docs/commercial_operating_model.md` have been absorbed and archived. Remaining files under `docs/` stay active source material during migration.

Future phases should absorb stable material from `docs/` into:

- `memory/`
- `skills/`
- `skills/*/reference/`

After that absorption is reviewed and approved, superseded docs can be archived in a later phase.

## Phase 1 Audit Note
The Phase 1 audit passed with no blocking issues. The audit found stale startup and closeout routing in `README.md`, `_system/codex_session_start.ps1`, `_system/codex_session_close.ps1`, and the then-active `docs/agent_protocol.md`; those routing notes were patched after approval.

The audit identified `docs/agent_protocol.md` as the first migration target. It was absorbed and archived in Phase 2 Batch 1.

High-risk commercial docs, especially revenue and Kickstarter material with numbers, tiers, timelines, campaign language, or projected outcomes, must remain draft/reference material until explicitly approved.

## Phase 2 Batch 1 - Agent Protocol Absorbed
`docs/agent_protocol.md` was absorbed into active Growth routing across `AGENTS.md`, `memory/`, and relevant `skills/`.

Preserved material included:
- Growth Agent role and startup procedure.
- Source-of-truth order and no private/chat memory as durable truth.
- Brain growth brief relationship and approval-aware Brain update rules.
- No unapproved commitments, offers, prices, public claims, campaign promises, sponsor obligations, partner commitments, launch targets, roadmap commitments, sales commitments, financial commitments, legal commitments, or approved strategy.
- Separation between commercial ideas, draft plans, recommendations, approved strategy, and commitments.
- Approval rules for structured records.
- Closeout checklist and closeout format.
- Cross-domain relationship rules.

The superseded protocol is archived at `archive/superseded/agent_protocol.md` for migration history only. It is no longer an active required reference.

No other docs were moved or archived in this batch.

## Phase 2 Batch 2 - Commercial Operating Model Absorbed
`docs/commercial_operating_model.md` was absorbed into `memory/04-commercial-operating-model.md`, related boundary/source/decision memory, and `skills/growth-strategy-review/reference/commercial-operating-model.md`.

Preserved material included:
- Commercial operating principles.
- Current commercial signals and public web surfaces.
- Planned revenue and partnership lanes as internal draft/planned model categories.
- Core dependencies and cross-domain relationships.
- Current unknowns around pricing, sponsorship tiers, partner package structure, owner/cadence, CRM workflow, and email/provider handoff.
- Source-note provenance for Brand and Web strategy inputs.

The superseded source doc is archived at `archive/superseded/commercial_operating_model.md` for migration history only. It is no longer an active required reference.

No other docs were moved or archived in this batch.

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

# Migration Notes

## Phase 1 - Architecture Created
Phase 1 created the initial Growth Agent memory and playbook architecture:

- `memory/` for durable Growth Agent memory.
- `skills/` for reusable Growth Agent playbooks.
- `skills/*/reference/` folders for later skill-local source material.
- `archive/` for later migration phases.

## Docs Status
At Phase 1, old docs were not archived yet. As of Phase 2 Batch 6, `docs/agent_protocol.md`, `docs/commercial_operating_model.md`, `docs/partners_and_sales_overview.md`, `docs/commercial_systems_backlog.md`, `docs/revenue_acceleration_plan.md`, and `docs/kickstarter_estuary_campaign.md` have been absorbed and archived.

Future phases should place stable material in:

- `memory/`
- `skills/`
- `skills/*/reference/`

After any future source-doc absorption is reviewed and approved, superseded docs can be archived in a later phase.

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

## Phase 2 Batch 3 - Partners And Sales Overview Absorbed
`docs/partners_and_sales_overview.md` was absorbed into `memory/05-partners-and-sales-context.md`, related boundary/source/decision memory, and `skills/partner-and-sales-planning/reference/partners-and-sales-overview.md`.

Preserved material included:
- Partner and sales scope.
- Current early-but-not-blank state.
- Commercial signals across operations, brand, web, and content.
- Known near-term deliverables as needs, not approved execution.
- Website and audience-capture surfaces as signals, not offers.
- Key commercial readiness facts.
- Priorities around operating model, business plan, media kit, sponsorship package, relationship pipeline, newsletter capture, website conversion, brand messaging, and content proof.
- Risks and gaps around missing commercial system, newsletter sync, relationship management, ownership, and sequencing.

The superseded source doc is archived at `archive/superseded/partners_and_sales_overview.md` for migration history only. It is no longer an active required reference.

No other docs were moved or archived in this batch.

## Phase 2 Batch 4 - Commercial Systems Backlog Absorbed
`docs/commercial_systems_backlog.md` was absorbed into `memory/07-recurring-decisions.md`, related commercial model and boundary memory, and `skills/commercial-backlog-triage/reference/commercial-systems-backlog.md`.

Preserved material included:
- Commercial system backlog items as planning reference.
- Minimum relationship pipeline fields.
- Cross-functional inputs from Company Operations, Brand & Marketing, Content Production, Web & Digital Presence, and Finance & Budget.
- Completion signals as evaluation criteria, not claims of completion.
- Notes that the backlog is about building the commercial operating system, not claiming it exists.
- Sequencing caution that target partner categories and active outreach sequences come after basics exist.
- CFO/financial readiness linkage.
- Source-note provenance for Web and Executive Brain Build Plan inputs.

The superseded source doc is archived at `archive/superseded/commercial_systems_backlog.md` for migration history only. It is no longer an active required reference.

No other docs were moved or archived in this batch.

## Phase 2 Batch 5 - Revenue Acceleration Plan Absorbed
`docs/revenue_acceleration_plan.md` was absorbed into commercial model memory, revenue boundaries, recurring decisions, and `skills/revenue-planning/reference/revenue-acceleration-plan.md`.

Preserved material included:
- Revenue channels and sequencing logic.
- Financial gap context as historical planning assumptions requiring verification before current use.
- Patreon, Ko-fi, sponsorship, course/pre-sale, Kickstarter, course ongoing, merch, speaking, press, Reddit, Substack, and native-site-comments ideas.
- Prices, projections, targets, conversion rates, timelines, and launch/campaign timing as non-binding scenario assumptions.
- Dependencies and approval gates for course pricing, sponsorship outreach, Kickstarter timing, and merch direction.
- Source-note provenance for Financials, Kickstarter, Distribution, and Commercial model inputs.

The superseded source doc is archived at `archive/superseded/revenue_acceleration_plan.md` for migration history only. It is no longer an active required reference.

No other docs were moved or archived in this batch.

## Phase 2 Batch 6 - Kickstarter Estuary Campaign Absorbed
`docs/kickstarter_estuary_campaign.md` was absorbed into campaign memory, campaign boundaries, commercial decision principles, recurring decisions, and `skills/campaign-planning/reference/kickstarter-estuary-campaign.md`.

Preserved material included:
- Campaign concept and positioning.
- Estuary campaign context and draft scientific hook language.
- Audience/supporter assumptions.
- Launch sequence ideas.
- Reward tier ideas, add-on ideas, prices, limits, and backer benefits.
- Funding goal ideas and revenue scenarios.
- Stretch goal ideas and unlock language.
- Fulfillment notes and zero-physical-fulfillment concepts.
- Campaign video structure and warmup content ideas.
- Post-campaign sequencing ideas.
- Source-note provenance for AI exploration notes, Josue's estuary build concept, and audience conversion assumptions.

All campaign goals, tiers, rewards, prices, launch sequences, timelines, stretch goals, fulfillment language, campaign copy, public claims, and revenue ranges were preserved as draft/reference material only. They are not approved campaign strategy, public promises, launch commitments, reward promises, stretch-goal promises, fulfillment promises, active projects, tasks, or financial commitments.

The superseded source doc is archived at `archive/superseded/kickstarter_estuary_campaign.md` for migration history only. It is no longer an active required reference.

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

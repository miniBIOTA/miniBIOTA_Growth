---
title: CRM App Agent Kickoff
status: schema-foundation-and-read-only-runtime-complete
created: 2026-05-12
owner_domain: Growth
implementation_domain: App
source_scope: planning/crm-upgrade-scope.md
---

# CRM App Agent Kickoff

## Purpose

This is the completed execution kickoff packet for the App Agent's schema-first CRM pass. Growth scoped the desired agent-first CRM upgrade in `M:\miniBIOTA\miniBIOTA_Growth\planning\crm-upgrade-scope.md`; App then created the schema foundation and first read-only Relationship runtime surface.

The original immediate goal was to create the durable database foundation for the expanded CRM without mutating live CRM data or running migrations until Josue explicitly approved. That goal is complete; future work should use the next-pass section below.

## Completion Note

This handoff was completed on 2026-05-12.

The App Agent created `M:\miniBIOTA\miniBIOTA_App\migrations\013_crm_relationship_system.sql` and `M:\miniBIOTA\miniBIOTA_App\planning\crm_relationship_system_implementation.md`, performed approved read-only schema and count checks, exported existing CRM-related rows to `C:\tmp\miniBIOTA-crm-pre-013-2026-05-12\`, and verified the additive schema migration after Josue ran it in Supabase SQL Editor.

Verified result:

- All 33 expanded CRM tables exist in live Supabase.
- All 33 expanded CRM tables are empty.
- Legacy tables still exist: `crm_contacts`, `crm_activities`, and `partner_opportunities`.
- Legacy counts remained unchanged: `crm_contacts` 0, `crm_activities` 0, `partner_opportunities` 5.
- No CRM records were created, edited, deleted, archived, migrated, backfilled, or used as test records.
- App also added the first read-only CRM Relationship view for table counts and review queues through the internal main-process secret-key bridge.
- The next implementation gate is expanded staged runtime/UI work for People, Organizations, Opportunities, Interactions, Next Actions, Review, Agent Inbox, search, map/detail, and reporting. Write paths, backfill, RLS policies, outreach, and commitments remain separately gated.
- App closeout queued a cleanup/runtime second pass; that is not approval for live CRM writes, RLS policies, backfill, seeded data, additional migrations, outreach, or commitments.

## Historical Schema Handoff

The original first mission was schema-first implementation. It asked App to inspect the existing CRM source, preserve `crm_contacts`, `crm_activities`, and `partner_opportunities`, draft `migrations/013_crm_relationship_system.sql`, avoid live record writes, and report verification before any migration was run.

That mission is complete. Keep this file as a completion record and use `planning/crm-upgrade-scope.md` plus the App-side implementation document for current state.

## Next App Pass

The next App Agent pass should be a cleanup and staged read-only runtime/UI pass, not another schema-foundation pass.

Recommended startup:

1. Work in `M:\miniBIOTA\miniBIOTA_App`.
2. Follow App `AGENTS.md`, App Supabase safety rules, and App implementation notes.
3. Read `M:\miniBIOTA\miniBIOTA_Growth\planning\crm-upgrade-scope.md`.
4. Read `M:\miniBIOTA\miniBIOTA_App\planning\crm_relationship_system_implementation.md`.
5. Inspect the current read-only Relationship view and its CRM runtime bridge.

Allowed scope without separate live-data approval:

- Documentation cleanup.
- Read-only runtime/UI cleanup.
- Empty-state, loading-state, error-state, label, and copy refinements.
- Read-only view organization for Relationship counts and review queues.
- Verification of renderer code and read-only behavior.

Not approved by this handoff:

- Live CRM record creation, editing, deletion, archival, migration, or backfill.
- Test CRM records or seeded data.
- RLS policy changes.
- Additional migrations or raw SQL.
- Planner writes.
- Storage, telemetry, public site, outreach, commitments, pricing, sponsor terms, partner terms, or campaign claims.

Expected closeout:

- Changed files.
- Verification commands.
- Confirmation that no live CRM records, migrations, backfill, RLS policies, seeded data, Planner records, public site behavior, outreach, or commitments changed.
- Clear next recommended staged CRM UI step.

## Growth Review Checkpoint

After the App cleanup/runtime pass, Growth should review for:

- Whether the read-only Relationship view accurately reflects the current empty expanded tables and preserved legacy CRM state.
- Whether the UI language keeps write paths, backfill, RLS policies, outreach, and commitments gated.
- Whether the next build step should be People, Organizations, Opportunities, Interactions, Next Actions, Review Dashboard, Agent Inbox, search, map/detail, or reports.
- Whether any request would require separate approval because it touches live CRM records, policies, schema, outreach, or commercial commitments.


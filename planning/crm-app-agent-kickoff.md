---
title: CRM App Agent Kickoff
status: crm-scheduling-cleanup-ready
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

The original next App Agent pass was a cleanup and staged read-only runtime/UI pass, not another schema-foundation pass. As of 2026-05-13, the practical legacy CRM layer has advanced through user-approved work: contact links are live through migration 014, Grant Eder and a related Aquatic Club CRM activity exist as live CRM records, and App migration 015/source/live-schema verification confirmed CRM activity scheduling fields and Planner dedupe behavior.

The next requested pass from Growth should be a cleanup/smoke second pass over the App-built CRM activity calendar and Planner integration. Source, migrations, and live schema have already been checked read-only for the key migration 015 fields; the next pass should focus on UI behavior, display semantics, and approval-safe language.

Recommended startup:

1. Work in `M:\miniBIOTA\miniBIOTA_App`.
2. Follow App `AGENTS.md`, App Supabase safety rules, and App implementation notes.
3. Read `M:\miniBIOTA\miniBIOTA_Growth\planning\crm-upgrade-scope.md`.
4. Read `M:\miniBIOTA\miniBIOTA_App\planning\crm_relationship_system_implementation.md`.
5. Inspect the current read-only Relationship view and its CRM runtime bridge.
6. Inspect current legacy CRM activity calendar rendering and Planner linked-task context behavior.
7. Inspect the Aquatic Club coordination context: Program `work_programs.id = 3`, Planner task `tasks.id = 288`, CRM contact `crm_contacts.id = 1`, and CRM activity `crm_activities.id = 1`.
8. Note that `crm_activities.id = 1` is linked to `tasks.id = 288`, has `show_on_planner = false`, and was patched after explicit approval to `due_time = 12:00:00`.

Allowed scope without separate live-data approval:

- Documentation cleanup.
- Read-only runtime/UI cleanup.
- Empty-state, loading-state, error-state, label, and copy refinements.
- Read-only view organization for Relationship counts and review queues.
- Cleanup/polish of already-built CRM activity calendar and Planner rendering behavior, as long as it does not run migrations or write live records.
- Verification of renderer code and read-only behavior.

Not approved by this handoff:

- Live CRM record creation, editing, deletion, archival, migration, or backfill.
- Test CRM records or seeded data.
- RLS policy changes.
- Additional migrations or raw SQL.
- Planner writes, including creating duplicate tasks for CRM activities.
- New CRM activity scheduling data writes unless Josue explicitly approves them.
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
- Whether CRM Activities calendar shows relationship-only follow-ups without implying outreach approval or public commitments.
- Whether Planner schedule uses CRM activities as context or deduped schedule items instead of creating duplicate task truth.
- Whether linked CRM activity `1` correctly maps to Planner task `288` for the Aquatic Club talk.
- Whether the CRM activity calendar and Planner linked-task context both display the approved `12:00:00` time clearly without duplicate schedule cards.
- Whether the next build step should be People, Organizations, Opportunities, Interactions, Next Actions, Review Dashboard, Agent Inbox, search, map/detail, or reports.
- Whether any request would require separate approval because it touches live CRM records, policies, schema, outreach, or commercial commitments.


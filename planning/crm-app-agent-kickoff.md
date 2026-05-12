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

This is the execution kickoff packet for the App Agent. Growth has scoped the desired agent-first CRM upgrade in `M:\miniBIOTA\miniBIOTA_Growth\planning\crm-upgrade-scope.md`. The App Agent should now begin implementation in `M:\miniBIOTA\miniBIOTA_App`, starting with schema design and an additive migration draft.

The immediate goal is to create the durable database foundation for the expanded CRM without mutating live CRM data or running migrations until Josue explicitly approves.

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

## App Agent Startup

Start in the App repo:

```powershell
cd M:\miniBIOTA\miniBIOTA_App
```

Read:

1. `AGENTS.md`
2. `memory/00-index.md`
3. `memory/05-supabase-and-storage-rules.md`
4. `skills/implement-app-feature/SKILL.md`
5. `skills/supabase-safety-review/SKILL.md`
6. `skills/implement-app-feature/reference/crm.md`
7. `migrations/002_crm_schema.sql`
8. `js/crm/` source files
9. `js/shell/crm/` shell files
10. `css/crm/` styles
11. Growth scope: `M:\miniBIOTA\miniBIOTA_Growth\planning\crm-upgrade-scope.md`

## First Mission

Create a schema-first CRM upgrade plan and additive migration draft.

Do not run the migration. Do not create, edit, delete, archive, or migrate live CRM records. Do not create test CRM records.

Expected App Agent outputs:

- A reviewed implementation plan in the App repo.
- A draft additive SQL migration for the expanded CRM tables.
- A brief list of compatibility questions or blockers, if any remain after source inspection.
- Verification that no live database writes were performed.

Recommended App files to create or change:

- `migrations/013_crm_relationship_system.sql` or the next appropriate migration number after inspecting App migration numbering.
- Optional App planning note, if App conventions support it, such as `planning/crm_relationship_system_implementation.md`.

Do not modify runtime JS/CSS in the first pass unless needed to document schema assumptions. The first pass should establish the table foundation and implementation plan.

## Recommended Schema Direction

Use an additive approach first.

Keep existing tables intact:

- `crm_contacts`
- `crm_activities`
- `partner_opportunities`

Create the expanded CRM foundation alongside them:

- `crm_people`
- `crm_organizations`
- `crm_person_organizations`
- `crm_contact_methods`
- `crm_addresses`
- `crm_opportunities`
- `crm_opportunity_people`
- `crm_opportunity_organizations`
- `crm_pipelines`
- `crm_pipeline_stages`
- `crm_interactions`
- `crm_interaction_people`
- `crm_interaction_organizations`
- `crm_interaction_opportunities`
- `crm_decisions`
- `crm_relationship_facts`
- `crm_next_actions`
- `crm_tags`
- `crm_person_tags`
- `crm_organization_tags`
- `crm_opportunity_tags`
- `crm_segments`
- `crm_segment_members`
- `crm_assets`
- `crm_campaigns`
- `crm_campaign_members`
- `crm_referrals`
- `crm_consents`
- `crm_external_sources`
- `crm_agent_recommendations`
- `crm_agent_runs`
- `crm_import_batches`
- `crm_audit_events`

The migration may also add compatibility columns to existing tables if needed, but it should avoid destructive changes.

## Migration Design Requirements

Use PostgreSQL/Supabase-friendly SQL.

Prefer:

- `CREATE TABLE IF NOT EXISTS`.
- `ALTER TABLE ... ADD COLUMN IF NOT EXISTS`.
- `created_at timestamptz DEFAULT now()`.
- `updated_at timestamptz DEFAULT now()`.
- `archived_at timestamptz` or `is_archived boolean DEFAULT false` where useful.
- Clear foreign keys.
- Indexes for common filters and joins.
- Check constraints for narrow controlled values when stable.
- Flexible text fields where the value set may evolve quickly.
- Comments where a table or column has important semantic boundaries.

Avoid:

- Dropping existing tables.
- Renaming existing tables.
- Deleting records.
- Backfilling live data in this first migration unless Josue explicitly approves.
- Making every enum too rigid before the App UI has proven the workflow.
- Directly encoding public commitments, legal promises, pricing promises, or outreach execution as automatic state.

## Agent-First Data Rules

The schema should make it easy for the Growth Agent to manage the system safely.

Important separations:

- Raw notes are not processed facts.
- Agent recommendations are not approved decisions.
- Agent inferences are not verified facts.
- Next actions are not approved outreach execution.
- Opportunity records are not deals or commitments.
- Approval metadata records an approval source; it does not replace legal, financial, public-claim, or commitment review.
- Imports are not clean CRM records until processed.

Add fields where useful for:

- `source_type`
- `source_id` or `source_ref`
- `confidence`
- `verification_status`
- `processing_status`
- `approval_state`
- `approval_source`
- `approval_date`
- `sensitive_detail`
- `do_not_contact`
- `close_reason`
- `archived_at`
- `created_by`
- `updated_by`

## Minimum Acceptance For First App Pass

The first App Agent pass is complete when:

- Current CRM source and migration files have been inspected.
- A schema design has been written down in the App repo or migration comments.
- The additive migration file exists.
- The migration covers the expanded table catalog or explicitly documents any deferred table.
- Existing tables are preserved.
- No live migration has been run.
- No CRM records have been created, edited, deleted, archived, or migrated.
- The App Agent reports what it changed and what still needs Josue approval.

## Suggested App Agent Prompt

Use this prompt for the App Agent:

```text
We are starting the agent-first CRM upgrade for miniBIOTA.

Please work in M:\miniBIOTA\miniBIOTA_App. Follow App AGENTS.md and App Supabase safety rules. Read Growth's full scope at M:\miniBIOTA\miniBIOTA_Growth\planning\crm-upgrade-scope.md.

First mission: schema-first implementation pass only.

Create an additive CRM relationship-system migration draft, preserving existing crm_contacts, crm_activities, and partner_opportunities. Do not run the migration. Do not create/edit/delete/archive/migrate live CRM records. Do not create test records.

Inspect current CRM source, shell files, styles, and migrations before writing. Then draft the expanded CRM table foundation for people, organizations, person-organization links, contact methods, addresses, opportunities, opportunity links, pipelines/stages, interactions, decisions, relationship facts, next actions, tags, segments, assets, campaign batches, referrals, consents, external sources, agent recommendations, agent runs, import batches, and audit events.

Use CREATE TABLE IF NOT EXISTS, safe additive columns/indexes, timestamps, archive fields where appropriate, foreign keys, useful indexes, and comments/checks where helpful. Keep values flexible where workflows may evolve.

At closeout, report changed files, verification, and confirm no live database writes or migrations were performed.
```

## Growth Review Checkpoint

After the App Agent drafts the migration, Growth should review for:

- Whether all agent-first CRM semantics are represented.
- Whether relationship history and source/provenance are preserved.
- Whether approvals, commitments, outreach, and public claims remain safely separated.
- Whether the schema can represent Grant, his business, and the aquatics club without flattening relationships.
- Whether the agent can query follow-ups, stale relationships, missing approvals, missing assets, unprocessed notes, duplicate candidates, and open opportunities.


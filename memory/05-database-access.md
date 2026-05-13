# Growth Database Access Responsibilities

The Growth Agent uses Supabase when current partner, sponsor, CRM, App Planner, or task records matter. It should not create new commercial commitments, Planner records, relationship records, or database structures without explicit approval.

## Access Model

- Database access needed: Limited.
- Default mode: Read-only unless a scoped relationship, CRM, or Planner task/project update is explicitly approved.
- MCP/read-only awareness is preferred for relevant growth/partner records. Use Company `_system/agent_repo_registry.md` for cross-domain interpretation and ownership routing.
- Preferred path: MCP/read-only awareness first. Use MCP/read-only awareness and Company/domain-owned helpers; Brain helper functions are retired from normal workflows.
- Secrets: Local environment variables or ignored local config only.

## Table Responsibilities

| Category | Tables |
|---|---|
| Owned | None exclusively documented; future CRM or partner tables may be shared with App |
| Read only | `work_domains`, `work_projects`, `tasks`, `partner_opportunities`, CRM/sponsor tables when confirmed, public support/sponsor records |
| Controlled write | Growth Planner `work_projects` and `tasks`, partner, sponsor, CRM, and sales records through scoped helpers only when workflow is confirmed and explicit user approval is given |
| Admin/migration | None by default |

## Approval Boundary

Explicit user approval is required for raw SQL, migrations, destructive writes, schema changes, service role actions, Planner project/task writes, sponsor commitments, partner record creation, public campaign claims, relationship/CRM state changes, or CRM bulk changes.

## CRM Relationship System Access

As of 2026-05-12, the App database includes the expanded CRM relationship-system tables from migration `013_crm_relationship_system.sql`. These tables are live schema but not live relationship content yet: App read-only verification confirmed all 33 new tables exist and are empty, and legacy CRM counts remain `crm_contacts` 0, `crm_activities` 0, and `partner_opportunities` 5.

The new CRM tables have RLS enabled with no policies. App runtime reads currently use the internal main-process secret-key bridge for the first read-only Relationship summary view. Growth should not request or perform live CRM writes, record backfill, RLS policy changes, seeded data, additional migrations, or CRM relationship-state changes without a separate explicit approval and a verified need.

As of 2026-05-13, the legacy CRM contact/activity surface has active relationship content and staged App improvements:

- `crm_contacts.id = 1` stores Grant Eder as a collaborator contact after explicit user approval.
- `crm_activities.id = 1` stores the Aquatic Club meeting/speaking relationship activity after explicit user approval.
- App migration `014_crm_contact_links.sql` is live and adds `crm_contact_links` for flexible labeled contact URLs. Grant's YouTube URL was moved into `crm_contact_links` after approval.
- App migration `015` was verified read-only by the user/App pass: it adds `due_time`, `planner_task_id BIGINT REFERENCES tasks(id)`, and `show_on_planner BOOLEAN DEFAULT false` to `crm_activities`.
- App source was verified to read/write those fields in CRM and to use the intended Planner dedupe rule: linked CRM activities become context on the linked Planner task, while unlinked CRM activities appear on Planner only when `show_on_planner = true`.
- Live Supabase verification confirmed the migration 015 columns exist. After explicit user approval, `crm_activities.id = 1` was patched to `due_time = 12:00:00`; it links to `tasks.id = 288` and has `show_on_planner = false`. Task `288` also has `scheduled_time = 12:00:00`.

Growth's preferred scheduling semantics are:

- CRM activities remain CRM records.
- Planner remains the all-domain master schedule.
- A CRM activity that maps to an existing Planner task should link to that task and enrich it, not create a duplicate task or duplicate full schedule card.
- An unlinked CRM activity may appear on Planner only when the App-supported visibility field allows it.
- CRM Activities calendar should show relationship-only activity context, including linked items, without implying new Planner work or outreach approval.

## Planner Task Records

Growth work is managed in App Planner through Supabase `work_projects` and `tasks`.

  Growth Planner records live under `work_domains.key = sales` / `domain_id = 7`.
  Current Growth work projects are `Commercial Assets & Sponsorship Package`, `Sponsorship Outreach Pipeline`, `Audience Support & Revenue Sequencing`, `CRM & Relationship Management System`, and `Campaign, Course & Merch Decisions`.
  Read Planner projects/tasks when current Growth work priorities, blockers, project/task links, or completion status matter.
  Creating projects/tasks, editing fields, linking tasks to projects, adding subtasks, changing status, marking done/reopening, scheduling, recurring, archiving, or deleting records are live Supabase writes and require explicit user approval.
  At closeout, offer to update Planner task status when completed work maps clearly to an open Growth task, unless the user already approved that live Planner update.
  Planner status is operational work status. It is not approval for partner commitments, sponsor promises, outreach actions, prices, public claims, campaign launch dates, sales commitments, CRM/relationship state, or structured partner/sponsor records.
  Markdown backlog/reference docs may preserve ideas and operating context, but actionable Growth task status belongs in Planner/Supabase.

## Project-Manager Delegation
When Josue grants standing Growth project-manager delegation, the Growth Agent may manage ordinary Growth Planner `work_projects` and `tasks` inside `work_domains.key = sales` / `domain_id = 7` through the approved shared Planner/Supabase write path. State intended Planner changes before writing, read changed rows back, and report changed records at closeout. This delegation does not cover CRM/relationship-state writes, partner or sponsor records, outreach execution, prices, public claims, campaign dates, sales commitments, schema/migrations, service-role/admin actions, app behavior, website behavior, or commitments unless separately approved through the relevant Growth workflow.

## Transition Reporting

At session close, update or flag manager-facing Growth reports only when manager-facing growth state changes:

- Company candidate: `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`
- Company reporting path: `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`

Report partner pipeline changes, sponsorship strategy, outreach decisions, campaign risks, revenue-path decisions, Planner integration state, and cross-domain dependencies only when manager-facing state changed and the user has not deferred reporting updates.

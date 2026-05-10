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

## Planner Task Records

Growth work is managed in App Planner through Supabase `work_projects` and `tasks`.

  Growth Planner records live under `work_domains.key = sales` / `domain_id = 7`.
  Current Growth work projects are `Commercial Assets & Sponsorship Package`, `Sponsorship Outreach Pipeline`, `Audience Support & Revenue Sequencing`, `CRM & Relationship Management System`, and `Campaign, Course & Merch Decisions`.
  Read Planner projects/tasks when current Growth work priorities, blockers, project/task links, or completion status matter.
  Creating projects/tasks, editing fields, linking tasks to projects, adding subtasks, changing status, marking done/reopening, scheduling, recurring, archiving, or deleting records are live Supabase writes and require explicit user approval.
  At closeout, offer to update Planner task status when completed work maps clearly to an open Growth task, unless the user already approved that live Planner update.
  Planner status is operational work status. It is not approval for partner commitments, sponsor promises, outreach actions, prices, public claims, campaign launch dates, sales commitments, CRM/relationship state, or structured partner/sponsor records.
  Markdown backlog/reference docs may preserve ideas and operating context, but actionable Growth task status belongs in Planner/Supabase.

## Transition Reporting

At session close, update or flag manager-facing Growth reports only when manager-facing growth state changes:

- Company candidate: `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`
- Company reporting path: `M:\miniBIOTA\miniBIOTA_Company\domains\growth\growth_brief.md`

Report partner pipeline changes, sponsorship strategy, outreach decisions, campaign risks, revenue-path decisions, Planner integration state, and cross-domain dependencies only when manager-facing state changed and the user has not deferred reporting updates.

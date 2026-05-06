# Growth Database Access Responsibilities

The Growth Agent uses Supabase only when current partner, sponsor, CRM, task, or domain history records matter. It should not create new commercial commitments or database structures without explicit approval.

## Access Model

- Database access needed: Limited.
- Default mode: Read-only unless a scoped relationship/task update is approved.
- MCP: Brain has broad Supabase MCP read awareness. This domain may use MCP read access for relevant growth/partner records, but should escalate cross-domain interpretation to Brain.
- Preferred path: Brain helper functions in `M:\miniBIOTA\miniBIOTA_Brain\_system\minibiota_tools.py`.
- Secrets: Local environment variables or ignored local config only.

## Table Responsibilities

| Category | Tables |
|---|---|
| Owned | None exclusively documented; future CRM or partner tables may be shared with App |
| Read-only | `partner_opportunities`, CRM/sponsor tables when confirmed, `tasks`, `domain_history`, public support/sponsor records |
| Controlled write | Partner, sponsor, CRM, `tasks`, and `domain_history` records through scoped helpers if tables and workflow are confirmed |
| Admin/migration | None by default |

## Approval Boundary

Explicit user approval is required for raw SQL, migrations, destructive writes, schema changes, service-role actions, sponsor commitments, partner record creation, public campaign claims, or CRM bulk changes.

## Brain Reporting

At session close, update Brain when growth state changes:

- `M:\miniBIOTA\miniBIOTA_Brain\7. miniBIOTA_Growth\growth_overview.md`
- `M:\miniBIOTA\miniBIOTA_Brain\7. miniBIOTA_Growth\growth_brief.md`

Report partner pipeline changes, sponsorship strategy, outreach decisions, campaign risks, revenue-path decisions, and cross-domain dependencies back to Brain.

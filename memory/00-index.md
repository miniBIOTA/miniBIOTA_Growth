# Growth Memory Index

## Purpose
This directory is the durable memory layer for the miniBIOTA Growth Agent. Load the lightest set of files needed for the active request, then use the matching skill playbook when the work has a recurring workflow.

Use Markdown memory for stable Growth context, boundaries, decisions, references, and operating rules. Use App Planner/Supabase for live Growth project/task status when current project management state matters.

## Startup Routing
1. Read `AGENTS.md`.
2. Read this index.
3. Load relevant memory files.
4. Use the matching `skills/*/SKILL.md`.
5. Use `skills/*/reference/` for migrated exact reference material.
6. Use Company Growth reports for strategy-level current state.
7. Use Supabase/App Planner only when current structured records, projects, tasks, or relationship state matter.

## Planner Routing
App Planner/Supabase is the live Growth work queue when current Growth project or task status matters. Growth Planner records live under `work_domains.key = sales` / `domain_id = 7` in `work_projects` and `tasks`.

Current Growth work projects:
- `Commercial Assets & Sponsorship Package`
- `Sponsorship Outreach Pipeline`
- `Audience Support & Revenue Sequencing`
- `CRM & Relationship Management System`
- `Campaign, Course & Merch Decisions`

Use Planner for actionable work status, blockers, scheduling, task/project links, and completion checks. Use Markdown memory and skill references for commercial strategy, partner/sales context, campaign context, recurring decisions, approval boundaries, and non-binding backlog/reference material. Old backlog/reference notes must not act as competing live task-status lists.

## Memory Files
| File | Load When |
|---|---|
| `memory/01-agent-purpose.md` | Any Growth session needs scope, posture, or ownership context |
| `memory/02-commercial-boundaries.md` | Any work involving offers, prices, sponsorships, campaigns, public claims, or commitments |
| `memory/03-source-of-truth-hierarchy.md` | Sources conflict or a recommendation depends on current state |
| `memory/04-commercial-operating-model.md` | Commercial surfaces, growth lanes, dependencies, or operating model are in scope |
| `memory/05-database-access.md` | Growth database and Planner access boundaries, domain key, owned/read/write tables, and Company reporting expectations |
| `memory/05-partners-and-sales-context.md` | Partner categories, sponsorships, speaking, sales materials, outreach, or pipeline are in scope |
| `memory/06-campaign-context.md` | Kickstarter, launch, reward, warmup, campaign messaging, or campaign risk is in scope |
| `memory/07-recurring-decisions.md` | A session touches repeated Growth choices or unresolved decision points |
| `memory/08-crm-relationship-model.md` | CRM meaning, relationship model, contact types, lifecycle stages, opportunity categories, follow-up rules, fit, health, or App handoff semantics are in scope |
| `memory/inbox.md` | A note does not yet have a durable home |

## Planning Files
| File | Load When |
|---|---|
| `planning/crm-upgrade-scope.md` | Scoping, implementing, reviewing, or tracking the App CRM upgrade beyond the current basic Contacts/Pipeline/Activities tab |
| `planning/crm-app-agent-kickoff.md` | Handing the CRM upgrade to the App Agent for schema-first implementation work |

## Skill Routing
| Skill | Trigger |
|---|---|
| `skills/growth-strategy-review/SKILL.md` | Review a growth plan, commercial direction, audience/revenue path, or strategic option |
| `skills/revenue-planning/SKILL.md` | Evaluate revenue ideas, sponsorship models, crowdfunding, subscriptions, affiliates, product sales, grants, or commercial scenarios |
| `skills/partner-and-sales-planning/SKILL.md` | Plan partner categories, outreach strategy, sales materials, relationship maps, sponsor/partner next steps |
| `skills/campaign-planning/SKILL.md` | Plan Kickstarter, launch sequencing, reward ideas, campaign risk, or campaign messaging |
| `skills/commercial-backlog-triage/SKILL.md` | Review commercial systems, backlog items, growth infrastructure, or what to build next |
| `skills/growth-closeout/SKILL.md` | Close a Growth session or decide whether follow-ups, Company report checks, Brain archive boundaries, records, or tasks are implicated |

## Migration Status
Phase 1 created the memory and skill architecture. Phase 2 Batch 1 absorbed `docs/agent_protocol.md` into active Growth routing and archived it at `archive/superseded/agent_protocol.md`. Phase 2 Batch 2 absorbed `docs/commercial_operating_model.md` into memory and skill reference material, then archived it at `archive/superseded/commercial_operating_model.md`. Phase 2 Batch 3 absorbed `docs/partners_and_sales_overview.md` into partner/sales memory and skill reference material, then archived it at `archive/superseded/partners_and_sales_overview.md`. Phase 2 Batch 4 absorbed `docs/commercial_systems_backlog.md` into backlog memory and skill reference material, then archived it at `archive/superseded/commercial_systems_backlog.md`. Phase 2 Batch 5 absorbed `docs/revenue_acceleration_plan.md` into revenue memory and skill reference material, then archived it at `archive/superseded/revenue_acceleration_plan.md`. Phase 2 Batch 6 absorbed `docs/kickstarter_estuary_campaign.md` into campaign memory and skill reference material, then archived it at `archive/superseded/kickstarter_estuary_campaign.md`.

The original Growth source docs have been migrated into `memory/`, `skills/`, and `skills/*/reference/`. Historical source copies live in `archive/superseded/`. Later phases should only add or archive source material after explicit approval.

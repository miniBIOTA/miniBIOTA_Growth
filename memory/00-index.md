# Growth Memory Index

## Purpose
This directory is the durable memory layer for the miniBIOTA Growth Agent. Load the lightest set of files needed for the active request, then use the matching skill playbook when the work has a recurring workflow.

## Startup Routing
1. Read `AGENTS.md`.
2. Read this index.
3. Load relevant memory files.
4. Use the matching `skills/*/SKILL.md`.
5. Use `docs/` only while migration is incomplete or when exact reference material still lives there.
6. Use Brain `growth_brief.md` for strategy-level current state.
7. Use Supabase only when current structured records matter and the user has authorized record work.

## Memory Files
| File | Load When |
|---|---|
| `memory/01-agent-purpose.md` | Any Growth session needs scope, posture, or ownership context |
| `memory/02-commercial-boundaries.md` | Any work involving offers, prices, sponsorships, campaigns, public claims, or commitments |
| `memory/03-source-of-truth-hierarchy.md` | Sources conflict or a recommendation depends on current state |
| `memory/04-commercial-operating-model.md` | Commercial surfaces, growth lanes, dependencies, or operating model are in scope |
| `memory/05-partners-and-sales-context.md` | Partner categories, sponsorships, speaking, sales materials, outreach, or pipeline are in scope |
| `memory/06-campaign-context.md` | Kickstarter, launch, reward, warmup, campaign messaging, or campaign risk is in scope |
| `memory/07-recurring-decisions.md` | A session touches repeated Growth choices or unresolved decision points |
| `memory/inbox.md` | A note does not yet have a durable home |

## Skill Routing
| Skill | Trigger |
|---|---|
| `skills/growth-strategy-review/SKILL.md` | Review a growth plan, commercial direction, audience/revenue path, or strategic option |
| `skills/revenue-planning/SKILL.md` | Evaluate revenue ideas, sponsorship models, crowdfunding, subscriptions, affiliates, product sales, grants, or commercial scenarios |
| `skills/partner-and-sales-planning/SKILL.md` | Plan partner categories, outreach strategy, sales materials, relationship maps, sponsor/partner next steps |
| `skills/campaign-planning/SKILL.md` | Plan Kickstarter, launch sequencing, reward ideas, campaign risk, or campaign messaging |
| `skills/commercial-backlog-triage/SKILL.md` | Review commercial systems, backlog items, growth infrastructure, or what to build next |
| `skills/growth-closeout/SKILL.md` | Close a Growth session or decide whether follow-ups, Brain brief updates, records, or tasks are implicated |

## Migration Status
Phase 1 created the memory and skill architecture. Phase 2 Batch 1 absorbed `docs/agent_protocol.md` into active Growth routing and archived it at `archive/superseded/agent_protocol.md`. Phase 2 Batch 2 absorbed `docs/commercial_operating_model.md` into memory and skill reference material, then archived it at `archive/superseded/commercial_operating_model.md`. Phase 2 Batch 3 absorbed `docs/partners_and_sales_overview.md` into partner/sales memory and skill reference material, then archived it at `archive/superseded/partners_and_sales_overview.md`.

Remaining `docs/` files stay active during migration when exact reference material still lives there. Later phases should absorb stable material into `memory/`, `skills/`, and `skills/*/reference/`, then archive superseded docs only after explicit approval.

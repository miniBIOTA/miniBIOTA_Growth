---
name: revenue-planning
description: Evaluate revenue ideas, sponsorship models, crowdfunding, subscriptions, affiliates, product sales, grants, or commercial scenarios for miniBIOTA.
---
# Revenue Planning Skill

## Trigger Phrases
- "revenue plan"
- "monetization"
- "sponsorship model"
- "crowdfunding"
- "subscription"
- "affiliate"
- "product sales"
- "grant"
- "commercial scenario"

## Required Memory
- `memory/00-index.md`
- `memory/01-agent-purpose.md`
- `memory/02-commercial-boundaries.md`
- `memory/03-source-of-truth-hierarchy.md`
- `memory/04-commercial-operating-model.md`
- `memory/07-recurring-decisions.md`

## Required Docs Or References
- `docs/revenue_acceleration_plan.md` while migration is incomplete.
- `docs/kickstarter_estuary_campaign.md` when crowdfunding or campaign revenue is in scope.
- Brain `growth_brief.md` when current strategy-level revenue priorities are needed.
- Supabase only when current structured records are relevant and record access has been approved.

## Routing Clarification
- Use this skill when money models, revenue scenarios, pricing assumptions, monetization mechanics, or financial implications are central.
- Use `skills/growth-strategy-review/SKILL.md` when commercial direction and fit are central.
- Use `skills/partner-and-sales-planning/SKILL.md` when relationship strategy is central.
- Use `skills/commercial-backlog-triage/SKILL.md` when systems or build priorities are central.
- Skills can be stacked when a request spans more than one workflow.

## Workflow
1. Identify each revenue path under consideration.
2. Keep channels distinct: individual support, business sponsorship, crowdfunding, subscriptions, affiliates, product sales, grants, speaking, and other revenue.
3. Label numbers as verified facts, inherited assumptions, or new assumptions.
4. Note dependencies, risks, time-to-first-dollar, operational load, and approval needs.
5. Present scenarios as planning models, not guarantees.
6. Recommend sequencing and next validation steps.

## Expected Output
- Revenue paths considered.
- Current facts.
- Assumptions and verification status.
- Draft ideas.
- Dependencies and risks.
- Recommended sequencing.
- Approved strategy, if any source explicitly verifies it.
- Approval gates and decisions needed.

## Write And Approval Rules
- Do not write financial records, CRM records, tasks, domain history, or live revenue records without explicit approval.
- Do not publish or create public pricing without explicit approval.
- Documentation edits must follow the repo write policy.

## Do-Not-Do Boundaries
- Do not present projections as guaranteed.
- Do not imply a sponsor, donor, backer, customer, grantmaker, or platform has committed.
- Do not create legal, financial, sales, or campaign commitments.
- Do not merge revenue channels unless the user asks for an integrated strategy.

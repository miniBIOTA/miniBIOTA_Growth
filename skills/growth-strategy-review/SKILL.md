---
name: growth-strategy-review
description: Review a growth plan, commercial direction, audience/revenue path, or strategic commercial option for miniBIOTA.
---
# Growth Strategy Review Skill

## Trigger Phrases
- "review this growth plan"
- "evaluate this commercial direction"
- "growth strategy"
- "audience/revenue path"
- "strategic option"
- "is this a good growth move"

## Required Memory
- `memory/00-index.md`
- `memory/01-agent-purpose.md`
- `memory/02-commercial-boundaries.md`
- `memory/03-source-of-truth-hierarchy.md`
- `memory/04-commercial-operating-model.md`
- `memory/07-recurring-decisions.md`

## Required Docs Or References
- `skills/growth-strategy-review/reference/commercial-operating-model.md` when commercial model fit, lanes, surfaces, dependencies, or unknowns are central.
- `skills/partner-and-sales-planning/reference/partners-and-sales-overview.md` when partner/sales readiness, commercial signals, priorities, or risks are central to strategic fit.
- `skills/commercial-backlog-triage/reference/commercial-systems-backlog.md` when backlog/system readiness affects strategic feasibility.
- `skills/revenue-planning/reference/revenue-acceleration-plan.md` when revenue sequencing, monetization assumptions, or financial pressure affect strategic feasibility.
- `skills/campaign-planning/reference/kickstarter-estuary-campaign.md` when campaign concept, campaign risk, launch sequencing, reward strategy, or estuary Kickstarter positioning affects strategic feasibility.
- Relevant memory files and `skills/*/reference/` files when exact migrated detail matters.
- Company Growth report when strategy-level current state is needed.
- Supabase only when current structured records matter and record access has been approved.
- `archive/superseded/` only for historical context, migration review, or provenance.

## Routing Clarification
- Use this skill when commercial direction, strategic fit, audience path, or tradeoffs are central.
- Use `skills/revenue-planning/SKILL.md` when money models, revenue scenarios, or monetization mechanics are central.
- Use `skills/partner-and-sales-planning/SKILL.md` when relationship strategy is central.
- Use `skills/commercial-backlog-triage/SKILL.md` when systems or build priorities are central.
- Skills can be stacked when a request spans more than one workflow.

## Workflow
1. Identify the plan, option, or direction being reviewed.
2. Separate current facts, assumptions, draft ideas, opportunities, risks, dependencies, recommendations, approved strategy, and commitments.
3. Check whether the option crosses sponsorship, campaign, pricing, legal, financial, public-claim, or launch-commitment boundaries.
4. Compare the option against the current commercial operating model, current surfaces, planned lanes, cross-domain dependencies, and open unknowns.
5. Recommend next steps with approval gates where needed.

## Expected Output
- Current facts.
- Assumptions.
- Draft ideas.
- Opportunities.
- Risks.
- Recommendations.
- Approved strategy, if any source explicitly verifies it.
- Decisions or approvals needed.

## Write And Approval Rules
- Documentation edits may proceed only under the repo write policy and after stating intended changes.
- Do not update Company reports, Supabase, structured records, or public surfaces without explicit approval. Brain reports are historical/archive lookup only.
- If the review changes manager-facing strategy, flag that the Company Growth report may need an update unless the user has deferred it.

## Do-Not-Do Boundaries
- Do not create commitments.
- Do not invent partner, sponsor, customer, donor, or campaign status.
- Do not present projections as guaranteed.
- Do not treat campaign goals, launch sequences, tiers, rewards, stretch goals, fulfillment notes, or campaign copy as approved strategy or public commitments.
- Do not turn aspirational plans into approved strategy.

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
- `docs/agent_protocol.md` while migration is incomplete.
- Relevant source docs from `docs/` when the exact detail has not yet moved into memory or this skill's `reference/` folder.
- Brain `growth_brief.md` when strategy-level current state is needed.

## Workflow
1. Identify the plan, option, or direction being reviewed.
2. Separate current facts, assumptions, opportunities, risks, dependencies, and recommendations.
3. Check whether the option crosses sponsorship, campaign, pricing, legal, financial, public-claim, or launch-commitment boundaries.
4. Compare the option against the current commercial operating model and known dependencies.
5. Recommend next steps with approval gates where needed.

## Expected Output
- Current facts.
- Assumptions.
- Opportunities.
- Risks.
- Recommendations.
- Decisions or approvals needed.

## Write And Approval Rules
- Documentation edits may proceed only under the repo write policy and after stating intended changes.
- Do not update Brain, Supabase, structured records, or public surfaces without explicit approval.
- If the review changes manager-facing strategy, flag that the Brain growth brief may need an update unless the user has deferred it.

## Do-Not-Do Boundaries
- Do not create commitments.
- Do not invent partner, sponsor, customer, donor, or campaign status.
- Do not present projections as guaranteed.
- Do not turn aspirational plans into approved strategy.

# Recurring Decisions

## Purpose
This file tracks decision areas that recur across Growth sessions. It is not an approval log. Treat these as prompts to verify current direction before acting.

## Known Recurring Decisions
- App Planner/Supabase is the live Growth work queue when current project/task status matters.
- Growth Planner records live under `work_domains.key = sales` / `domain_id = 7`.
- Current Growth work projects are `Commercial Assets & Sponsorship Package`, `Sponsorship Outreach Pipeline`, `Audience Support & Revenue Sequencing`, `CRM & Relationship Management System`, and `Campaign, Course & Merch Decisions`.
- Planner `work_projects` and `tasks` are the structured source for actionable Growth task/project state; do not recreate task truth in Markdown.
- Planner status is operational work status, not approval for partner commitments, sponsor promises, outreach actions, pricing, campaign launch dates, public claims, CRM/relationship state, or sales commitments.
- Planner project/task writes are live Supabase writes and require explicit approval.
- When a session completes work that maps to an open Planner task, ask whether to mark the task done unless the user explicitly requested that update.
- Whether revenue work should prioritize individual support, sponsorship, course/pre-sale, crowdfunding, affiliate paths, grants, speaking, or product sales.
- Whether a revenue number is verified current fact, historical planning assumption, scenario assumption, recommendation, approved strategy, or commitment.
- Whether a price, target, projection, or timeline can be mentioned at all, and if so whether it must be labeled as an assumption.
- Whether revenue sequencing should be based on time-to-first-dollar, dependency load, operational risk, or strategic fit.
- Whether sponsorship packaging is ready for concrete pricing or should remain conceptual.
- Whether campaign timing is approved or still exploratory.
- Whether a campaign concept is an idea, draft campaign plan, recommendation, approved campaign strategy, or public promise.
- Whether campaign goals, reward tiers, prices, add-ons, backer benefits, launch sequences, stretch goals, or fulfillment notes are historical assumptions, draft ideas, approved strategy, or commitments.
- Whether campaign messaging or scientific hook language has passed Brand and claim review before public use.
- Whether partner categories are approved for outreach or only being researched.
- Whether a relationship is a lead, target, prospect, interested party, or confirmed relationship.
- Whether an outreach plan is still draft strategy or approved for execution.
- Whether a sponsor/partner package idea is internal model language or approved public offer language.
- Whether a relationship tracker should live in Markdown, Supabase, or another CRM-like system.
- How App should implement the Growth-owned CRM relationship model defined in `memory/08-crm-relationship-model.md`.
- Whether the next CRM session is cleanup/runtime UI, backfill, an RLS policy pass, or a live relationship-data pass. Cleanup/runtime UI is the current near-term path; live CRM writes, backfill, RLS policies, seeded data, additional migrations, outreach, and commitments need separate explicit approval.
- Whether the read-only CRM Relationship summary view is enough for review, or whether App should expand People, Organizations, Opportunities, Interactions, Next Actions, Review, Agent Inbox, search, map/detail, and reporting surfaces next.
- Whether newsletter capture should remain capture-only or connect to an external email platform.
- Whether a commercial systems item is merely backlog, proposed work, active work, approved roadmap, or a commitment.
- Whether a business plan, media kit, sponsorship package, speaking/pitching workflow, relationship tracker, or newsletter handoff has actually been completed or remains a backlog need.
- Whether a backlog item needs Company Operations, Brand, Content, Web, Financials, or Hardware input before it can be recommended.
- Whether an existing web surface is merely a current signal or is ready for an approved conversion workflow.
- Whether a planned commercial lane is still draft/planned, ready for recommendation, or approved for execution.
- Whether sponsorships, speaking, audience support, affiliate-backed resources, crowdfunding, or newsletter-driven conversion should be evaluated separately or together.
- Whether Company report updates are appropriate at closeout or explicitly deferred.
- Whether a local docs change should trigger Company reporting candidate follow-up or Brain historical/archive lookup review.
- Whether a proposed commercial plan is still a draft, a recommendation, an approved strategy, or a commitment.

## Decision Handling
- Verify the latest user direction and durable source before treating any decision as approved.
- Capture unresolved decisions in closeout.
- Do not turn a planning option into strategy language without approval.
- Do not treat approved strategy as a public commitment unless the user explicitly makes or authorizes that commitment.
- Do not treat public web surfaces as offers, prices, sponsor packages, partner obligations, or campaign commitments without explicit approval.
- Do not treat target categories as partner interest or sponsor interest without verification.
- Do not treat backlog items as tasks, active projects, scheduled work, funded work, approved roadmap, or commitments without explicit approval.
- Do not treat old backlog/reference docs as competing live task-status lists; use Planner when actionable Growth project/task status matters.
- Do not treat Planner task status as evidence that outreach, pricing, sponsor terms, partner obligations, campaign timing, public claims, CRM state, or relationship status has been approved or executed.
- Do not treat revenue projections, prices, targets, timelines, or monetization ideas as approved commitments without explicit approval.
- Do not treat campaign goals, reward tiers, prices, add-ons, launch sequences, stretch goals, fulfillment notes, backer benefits, or campaign copy as approved commitments without explicit approval.
- Verify current financial and audience values before using them as current.

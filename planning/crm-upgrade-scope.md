---
title: CRM Upgrade Scope
status: read-only-runtime-foundation-added
created: 2026-05-12
owner_domain: Growth
implementation_domain: App
target_surface: miniBIOTA App CRM tab
---

# CRM Upgrade Scope

## App Implementation Status - 2026-05-12

Growth approved the CRM schema semantics. App created the additive migration `M:\miniBIOTA\miniBIOTA_App\migrations\013_crm_relationship_system.sql`; existing CRM rows were exported to `C:\tmp\miniBIOTA-crm-pre-013-2026-05-12\`; Josue ran the migration in Supabase SQL Editor; App read-only verification confirmed all 33 expanded CRM tables exist, all 33 are empty, and legacy counts remained `crm_contacts = 0`, `crm_activities = 0`, `partner_opportunities = 5`.

App also added the first read-only CRM Relationship view, using the internal main-process secret-key bridge because the new tables have RLS enabled with no policies. No CRM records were created, edited, deleted, archived, migrated, backfilled, or used as test records. The next Growth/App phase is staged runtime UI for People, Organizations, Opportunities, Interactions, Next Actions, Review, Agent Inbox, and reporting; write paths, backfill, RLS policies, outreach, and commitments remain separately gated.
## Purpose

This document scopes the next CRM upgrade for the miniBIOTA App. The work expands the existing App CRM tab from a basic contact, opportunity, and activity tracker into a relationship operating system for Growth.

The upgraded CRM should help Growth answer four questions at any time:

1. Who are we connected to?
2. What organizations, opportunities, conversations, and commitments are they connected to?
3. What happened most recently, what did it mean, and what was decided?
4. What needs follow-up, what is closed, and what requires approval before action?

This scope is internal planning. It does not create CRM records, outreach actions, sponsor obligations, partner commitments, prices, public claims, campaign dates, legal commitments, financial commitments, sales commitments, App schema changes, or approved public strategy.

## Source And Implementation Boundary

Growth owns the CRM semantics in this document: what records mean, what stages mean, what follow-up means, and which commercial boundaries must be protected.

App owns implementation details: table design, migration files, UI code, Supabase access paths, form components, and runtime behavior inside the existing miniBIOTA App CRM tab.

Before implementation, App should inspect:

- Existing CRM source files under `M:\miniBIOTA\miniBIOTA_App\js\crm\`.
- Existing CRM shell files under `M:\miniBIOTA\miniBIOTA_App\js\shell\crm\`.
- Existing CRM styles under `M:\miniBIOTA\miniBIOTA_App\css\crm\`.
- Existing migration `M:\miniBIOTA\miniBIOTA_App\migrations\002_crm_schema.sql`.
- Current live Supabase schema through an approved read-only path.

This document should guide what to build, but live schema and App source remain implementation truth during the App build.

## Current App CRM Baseline

The current App CRM has:

- `crm_contacts`
- `crm_activities`
- `partner_opportunities`, linked to contacts through `contact_id`
- CRM views for Contacts, Pipeline, and Activities
- Create, edit, and delete modals for contacts, opportunities, and activities

Current limitations:

- Contacts have one plain-text `organization` field instead of linked organization records.
- A person cannot be structurally linked to multiple organizations.
- Organizations do not have their own durable profile, relationship history, health, or ownership.
- Relationship type is single-choice, not multi-tag.
- Activities mix interaction history, notes, reminders, and next actions.
- Decisions, approvals, commitments, and follow-up closure are not first-class.
- There is no explicit processing workflow for turning a conversation into updated CRM state.
- There is no clear way to say "follow-up is closed" versus "follow-up is open" versus "waiting on them."

## Non-Goals For This Upgrade

This upgrade should not:

- Send email, texts, DMs, or outreach from the CRM.
- Create public sponsor, partner, event, campaign, pricing, or sales promises.
- Replace App Planner as the live project/task work queue.
- Automatically infer approval from notes, messages, stage names, or Planner records.
- Automatically publish CRM data to Company reports, the website, newsletters, or public pages.
- Create a public-facing CRM or expose internal relationship data outside the App.
- Require perfect automation before the CRM becomes useful.

## Upgrade Vision

The upgraded CRM should model Growth relationships as a small graph:

- People.
- Organizations.
- Links between people and organizations.
- Opportunities attached to people, organizations, or both.
- Interactions that record what happened.
- Decisions and outcomes extracted from interactions.
- Next actions that prevent relationship drift.
- Tags, lifecycle stages, health, priority, sensitivity, and approval state.

The CRM should not merely store contacts. It should help process relationship moments.

When a call, message, meeting, event conversation, email, intro, or research note happens, the CRM should support this flow:

```text
capture interaction
-> summarize what happened
-> record details learned
-> identify decisions or open questions
-> update relationship/opportunity state
-> decide whether follow-up is needed
-> create next action or close the follow-up loop
```

## Core Principles

- Separate people from organizations.
- Separate organizations from opportunities.
- Separate conversations from decisions.
- Separate decisions from approvals.
- Separate internal next actions from approved outreach execution.
- Separate relationship health from lifecycle stage.
- Separate tags from stage.
- Keep provenance visible: where did this information come from?
- Keep sensitive details flagged.
- Do not infer approvals from notes, contact type, opportunity status, or Planner task status.
- Every active relationship or opportunity should have a clear owner, next action, due date, or a deliberate no-follow-up reason.
- Prefer archive/close states over destructive deletion once real relationship history exists.
- Preserve relationship history even when an opportunity closes.

## Agent-First Requirements

This CRM is intended to be agent-first. Josue may add information, ask questions, approve actions, and review recommendations, but Codex/Growth Agent is expected to do most of the day-to-day CRM interpretation, cleanup, review, and follow-through planning.

That means the CRM should be designed for structured reasoning, not only human browsing.

The App should support:

- Fast capture of messy human notes.
- Explicit processing status so raw information does not get mistaken for clean CRM truth.
- Rich links between people, organizations, opportunities, interactions, decisions, next actions, assets, campaigns, and source records.
- Evidence/provenance for important claims.
- Agent-generated recommendations stored separately from approved facts.
- Agent review queues for stale records, overdue follow-ups, missing fields, duplicates, approval risks, and unprocessed interactions.
- Human approval gates for outreach, commitments, pricing, public claims, sponsor terms, partner terms, legal/financial decisions, and destructive data changes.
- Durable audit trails so it is clear what changed, why, when, and from what source.
- Enough structured fields that the agent can answer questions like:
  - Who should we follow up with today?
  - Which relationships are warm but neglected?
  - Which opportunities are blocked only by missing assets?
  - Which possible sponsors need approval before outreach?
  - Which people connect us to this organization?
  - Which organizations are tied to this person?
  - What did we last discuss with this contact?
  - What decisions were made, and what evidence supports them?
  - What information is unprocessed or uncertain?
  - What should be closed, archived, merged, or revisited?

Agent-generated interpretation should be labeled. The CRM should distinguish:

- User-provided fact.
- Imported source.
- Agent inference.
- Agent recommendation.
- Approved decision.
- Confirmed commitment.
- Historical note.

## Primary Use Case Example

Grant is a person. He has his own business. He is also connected to an aquatics club.

The upgraded CRM should support:

- Grant as a person record.
- Grant's business as an organization record.
- The aquatics club as a separate organization record.
- A link saying Grant owns or operates his business.
- A link saying Grant is connected to, belongs to, organizes, introduces, or otherwise relates to the aquatics club.
- A sponsorship or partnership opportunity attached to Grant's business.
- A workshop, demo, speaking, education, or community opportunity attached to the aquatics club.
- Interactions with Grant that can update either or both organization relationships.
- Follow-up actions tied to Grant, the business, the aquatics club, or a specific opportunity.

## Proposed Record Types

### People

A person known to Growth.

Fields to support:

- Display name.
- Preferred name.
- Role/title.
- Pronunciation or short context note, if useful.
- Primary email.
- Primary phone.
- Website or public profile.
- Location, if relevant.
- Time zone, if relevant.
- Preferred communication channel.
- Communication preference notes.
- Primary relationship type.
- Tags.
- Source of relationship.
- Owner.
- Lifecycle stage.
- Relationship health.
- Priority.
- Sensitive detail flag.
- Do-not-contact flag and reason.
- Duplicate candidate flag.
- Archived flag.
- Notes.
- Created at.
- Updated at.

Examples:

- Grant.
- A sponsor contact.
- A club organizer.
- A school teacher.
- A journalist.
- A donor.
- A collaborator.

### Organizations

A business, club, venue, school, nonprofit, institution, media outlet, funder, community group, supplier, or partner entity.

Fields to support:

- Organization name.
- Organization category.
- Website.
- Public reference URL.
- Location or service area.
- Primary contact person, if known.
- Owner.
- Lifecycle stage.
- Relationship health.
- Priority.
- Sponsor or partner fit.
- Strategic importance.
- Sensitive detail flag.
- Risks or approval sensitivities.
- Duplicate candidate flag.
- Archived flag.
- Notes.
- Created at.
- Updated at.

Suggested organization categories:

- Business.
- Club or community group.
- School or educational institution.
- Venue.
- Nonprofit.
- Funder or grantmaker.
- Media outlet.
- Sponsor prospect.
- Brand partner.
- Supplier or vendor.
- Government or civic institution.
- Other.

### Contact Methods

Contact methods should be first-class enough to support multiple emails, phone numbers, social profiles, and websites without overloading notes.

Fields to support:

- Related person or organization.
- Method type.
- Value.
- Label.
- Is primary.
- Verified status.
- Source.
- Do-not-use flag.
- Notes.

Suggested method types:

- Email.
- Phone.
- Website.
- Instagram.
- TikTok.
- YouTube.
- Facebook.
- LinkedIn.
- Discord.
- Reddit.
- Address.
- Other social/profile.

### Addresses And Service Areas

Some relationships are local, event-bound, venue-bound, or region-specific.

Fields to support:

- Related person or organization.
- Address label.
- Street/city/state/postal/country fields, if needed.
- General location text.
- Service area or region.
- Is public address.
- Is mailing address.
- Source.
- Notes.

### Person Organization Links

A relationship between a person and an organization.

Fields to support:

- Person.
- Organization.
- Relationship role.
- Is primary affiliation.
- Start date, if known.
- End date, if applicable.
- Confidence or source.
- Relationship health for this specific link, if useful.
- Notes.

Suggested roles:

- Owner.
- Founder.
- Employee.
- Member.
- Organizer.
- Board member.
- Decision maker.
- Influencer.
- Introducer.
- Main contact.
- Technical contact.
- Sponsor contact.
- Event contact.
- Community contact.
- Vendor contact.
- Other.

### Opportunities

A possible commercial, partnership, support, event, audience, education, sponsorship, or collaboration path.

Fields to support:

- Opportunity name.
- Opportunity category.
- Related person, optional.
- Related organization, optional.
- Primary contact.
- Lifecycle stage.
- Status.
- Priority.
- Estimated value, labeled as estimate.
- Strategic importance.
- Sponsor or partner fit.
- Expected benefit.
- Supporting assets needed.
- Blockers.
- Approval needed before action.
- Approval state.
- Approval source.
- Approval date.
- Owner.
- Next action.
- Next action date.
- Close reason.
- Notes.
- Created at.
- Updated at.

Opportunity records should not assume one universal sales pipeline. Different opportunity categories may need different stages, assets, and risk checks.

Suggested categories:

- Sponsorship.
- Brand partnership.
- Speaking or appearance.
- Event or venue activation.
- Education or course.
- Affiliate or build resource.
- Donor or patron support.
- Customer or product sale.
- Grant or foundation.
- Content or media collaboration.
- Technical or research collaboration.
- Community relationship.
- Supplier or vendor.
- Other.

### Pipelines And Stages

The first CRM can use shared lifecycle stages, but the data model should allow category-specific pipelines later.

Fields to support:

- Pipeline name.
- Pipeline category.
- Stage name.
- Stage order.
- Stage meaning.
- Entry criteria.
- Exit criteria.
- Requires approval.
- Is closed stage.
- Is won/success stage.
- Is loss/not-fit stage.

Possible pipelines:

- Sponsorship.
- Speaking or events.
- Grants.
- Education/course.
- Media/press.
- Donor/supporter.
- Supplier/vendor.
- General relationship.

### Interactions

A dated record of something that happened or was learned.

Fields to support:

- Interaction date.
- Interaction time, optional.
- Channel.
- Summary.
- Detailed notes.
- Participants.
- Related people.
- Related organizations.
- Related opportunity.
- Sentiment or temperature.
- Information learned.
- Open questions.
- Follow-up implication.
- Processing status.
- Sensitive detail flag.
- Source or evidence.
- Created by.
- Created at.
- Processed at.

Suggested channels:

- In person.
- Call.
- Text.
- Email.
- Direct message.
- Social media.
- Event.
- Meeting.
- Intro.
- Research note.
- Website form.
- Donation/support signal.
- Other.

Interaction notes should make it clear whether the interaction was:

- Discussion only.
- Information learned.
- Decision needed.
- Approval given.
- Commitment confirmed.
- Follow-up needed.
- No follow-up needed.

### Decisions And Outcomes

A structured record of what an interaction means.

Fields to support:

- Related interaction.
- Decision or outcome type.
- Decision summary.
- Decided by.
- Decision date.
- Evidence/source.
- Creates commitment: yes/no.
- Requires approval: yes/no.
- Approval source, if applicable.
- Approval date, if applicable.
- Follow-up needed: yes/no.
- Follow-up action created, if applicable.
- Follow-up closed reason, if applicable.
- Notes.

Suggested outcome types:

- No decision.
- Discussion only.
- Needs research.
- Needs clarification.
- Needs approval.
- Approved outreach.
- Outreach paused.
- Interested.
- Not interested.
- Not fit.
- Confirmed relationship.
- Confirmed commitment.
- Completed.
- Move to nurture.
- Move to dormant.
- Do not contact.

### Relationship Facts

The agent will often need to extract durable facts from interactions without turning every fact into a decision or opportunity.

Fields to support:

- Related person, organization, or opportunity.
- Fact type.
- Fact statement.
- Confidence.
- Source interaction or source record.
- First seen date.
- Last verified date.
- Verification status.
- Sensitive flag.
- Superseded flag.
- Notes.

Example fact types:

- Affiliation.
- Interest.
- Constraint.
- Preference.
- Need.
- Available asset.
- Risk.
- Decision-maker detail.
- Timing detail.
- Budget detail.
- Intro path.
- Public reference.

Relationship facts let the agent answer "what do we know?" without rereading every interaction note.

### Next Actions

The smallest useful operator step needed to prevent relationship drift.

Fields to support:

- Title.
- Related person, optional.
- Related organization, optional.
- Related opportunity, optional.
- Related interaction, optional.
- Owner.
- Due date.
- Priority.
- Status.
- Action type.
- Approval required before execution.
- Close reason.
- Notes.
- Created at.
- Completed at.

Suggested action types:

- Research fit.
- Find correct contact.
- Draft outreach.
- Ask Josue for approval.
- Send approved outreach.
- Follow up.
- Prepare asset.
- Record response.
- Schedule meeting.
- Update opportunity.
- Move to nurture.
- Close as not fit.
- Mark no follow-up needed.

Suggested statuses:

- Open.
- Waiting on contact.
- Waiting on miniBIOTA.
- Waiting on approval.
- Done.
- Canceled.
- Closed no follow-up.

Due today and overdue should be calculated view states from `due_date`, not manually selected statuses.

Suggested close reasons:

- Completed.
- No follow-up needed.
- Not fit.
- Waiting on them.
- Dormant.
- Duplicate.
- Do not contact.
- Replaced by another action.

### Tags

Tags should support flexible classification without forcing stage changes.

Examples:

- Sponsor.
- Partner.
- Customer.
- Donor.
- Supporter.
- Collaborator.
- Event contact.
- Lead.
- Local.
- Aquatics.
- Education.
- Media.
- Press.
- Grant.
- Affiliate.
- Hardware.
- Supplier.
- Warm intro.
- Needs approval.
- Sensitive.

### Segments And Lists

Segments help the agent group records for review without changing their underlying identity or stage.

Fields to support:

- Segment/list name.
- Purpose.
- Criteria, if dynamic.
- Static membership, if manual.
- Owner.
- Review cadence.
- Notes.

Example segments:

- Local aquatics community.
- Possible education partners.
- Warm sponsor prospects.
- Needs media kit.
- Event opportunities.
- Grant prospects.
- High-trust local contacts.
- Do not contact.
- Waiting on Josue.

### Assets And Materials

Growth opportunities often depend on missing or ready assets. The CRM should be able to reference assets without copying full drafts into every record.

Fields to support:

- Asset name.
- Asset type.
- Status.
- Owning domain.
- Link or file path.
- Related opportunity or organization.
- Needed by action or stage.
- Approval status.
- Notes.

Suggested asset types:

- Media kit.
- Sponsorship package.
- Business plan.
- Founder narrative.
- Event one-sheet.
- Proof image or video.
- Website page.
- Pricing/offer reference.
- Grant material.
- Course/workshop outline.

### Campaigns And Outreach Batches

The CRM should be able to group future outreach or relationship work without implying outreach is approved or sent.

Fields to support:

- Campaign/batch name.
- Purpose.
- Status.
- Audience segment.
- Related opportunities.
- Required assets.
- Approval state.
- Planned start date, if approved.
- Actual start date, if executed.
- Notes.

Suggested statuses:

- Idea.
- Draft.
- Needs assets.
- Needs approval.
- Approved.
- Active.
- Paused.
- Completed.
- Canceled.

Campaign records are internal planning containers. They do not authorize outreach.

### Referrals And Introductions

Warm introductions and relationship paths are commercially important and should be modeled directly.

Fields to support:

- Referrer person or organization.
- Target person or organization.
- Related opportunity.
- Introduction status.
- Date requested.
- Date made.
- Channel.
- Approval required.
- Notes.

Suggested statuses:

- Possible intro path.
- Need permission to ask.
- Requested.
- Intro offered.
- Intro made.
- Declined.
- Not appropriate.

### Consents And Communication Preferences

Even for an internal CRM, communication boundaries should be explicit.

Fields to support:

- Related person or organization.
- Consent/preference type.
- Status.
- Source.
- Date captured.
- Expiration/recheck date, if relevant.
- Notes.

Suggested types:

- May email.
- May call.
- May text.
- May mention publicly.
- May use logo/name.
- Newsletter signup.
- Do not contact.
- Ask before outreach.

Consent records should not be used to create legal claims unless reviewed by the appropriate owner. They are internal operating memory unless a higher-priority source confirms otherwise.

### External Source Links

Records may need links back to the source that produced them.

Fields to support:

- Related CRM record.
- Source type.
- Source title.
- Source URL or file path.
- Source system.
- Source date.
- Imported at.
- Notes.

Suggested source types:

- Email.
- Website form.
- Newsletter signup.
- Social profile.
- Public website.
- Event note.
- Meeting note.
- Manual user note.
- App record.
- Company/Growth document.

### Stage And Audit Events

Auditability matters once the CRM becomes operational. The App should preserve enough history to explain why a relationship changed.

Events to track or reconstruct:

- Stage changed.
- Health changed.
- Priority changed.
- Approval requested.
- Approval granted or rejected.
- Confirmed relationship recorded.
- Do-not-contact set or cleared.
- Follow-up opened.
- Follow-up completed or closed.
- Opportunity closed.
- Record archived.
- Duplicate merged.

Minimum useful fields:

- Related record type.
- Related record ID.
- Event type.
- Previous value, if applicable.
- New value, if applicable.
- Source or reason.
- Created by.
- Created at.

If a full audit table is too much for the first implementation, the first pass should at least preserve stage/approval/confirmed-relationship changes as interaction or decision records.

### Agent Work Items And Recommendations

Because this CRM is agent-first, the agent needs a place to store proposed cleanup, triage, and next-step recommendations without pretending they are approved facts.

Fields to support:

- Recommendation title.
- Recommendation type.
- Related person, organization, opportunity, interaction, or action.
- Rationale.
- Confidence.
- Suggested action.
- Requires human approval: yes/no.
- Status.
- Created by agent.
- Created at.
- Resolved at.
- Resolution notes.

Suggested recommendation types:

- Possible duplicate.
- Missing required field.
- Suggested tag.
- Suggested stage change.
- Suggested health change.
- Suggested opportunity.
- Suggested follow-up.
- Suggested closure.
- Approval risk.
- Sensitive detail review.
- Asset blocker.

Suggested statuses:

- Proposed.
- Accepted.
- Rejected.
- Deferred.
- Superseded.
- Done.

## Lifecycle Stages

Use lifecycle stages conservatively. Stage should represent verified operating state, not optimism.

Suggested stages:

- Inbox.
- Researching.
- Qualified.
- Nurture.
- Outreach Draft.
- Outreach Approved.
- Outreach Sent.
- Active Conversation.
- Proposal Or Scope Draft.
- Awaiting Response.
- Confirmed Relationship.
- Active Relationship.
- Completed.
- Closed Not Fit.
- Dormant.
- Do Not Contact.

Minimum rule:

- Do not advance to Outreach Approved without an approval source.
- Do not advance to Confirmed Relationship without a verified source.
- Do not treat a Planner task as proof of CRM relationship state.
- Do not move a record into Do Not Contact without a reason and source.

## Relationship Health

Health describes the condition of the relationship. It is separate from stage and priority.

Suggested values:

- Unknown.
- Healthy.
- Warm.
- Needs Attention.
- At Risk.
- Dormant.
- Closed.
- Do Not Contact.

Health should consider:

- Last meaningful interaction age.
- Response quality and sentiment.
- Whether the next action is clear.
- Whether approval gates are unresolved.
- Whether expectations are clear.
- Whether needed assets exist.
- Whether the relationship depends on risky claims, pricing, legal terms, public promises, or fulfillment capacity.

## Approval Gates

The CRM must make approval state explicit.

Actions requiring approval before execution:

- Outreach to sponsor or partner prospects.
- Sponsor package terms.
- Pricing.
- Public claims.
- Logo use or public association.
- Partner commitments.
- Sponsor obligations.
- Campaign claims or launch dates.
- Sales commitments.
- Legal or financial commitments.
- Roadmap or delivery promises.

Approval fields should be separate from notes:

- Approval required.
- Approval state.
- Approval source.
- Approval date.
- Approved action summary.
- Approval notes.

Suggested approval states:

- Not required.
- Required.
- Requested.
- Approved.
- Rejected.
- Expired or needs recheck.

Approval state should be scoped to a specific action or decision. A person or organization being generally trusted does not approve future outreach, pricing, claims, or commitments.

## Data Quality And Integrity Rules

The CRM should protect relationship data from becoming muddy.

Recommended rules:

- People require a display name.
- Organizations require an organization name.
- Opportunities require a name plus at least one related person or organization.
- Interactions require a date, channel, summary, and at least one related person, organization, or opportunity.
- Open next actions require an owner and due date unless deliberately parked as waiting.
- Closed next actions require a close reason.
- Do-not-contact records require a reason and source.
- Confirmed relationship records require evidence/source.
- Outreach Approved requires approval source and approval date.
- Estimated value must be labeled as an estimate unless a verified source says otherwise.
- Deleting real CRM records should be rare; archive should be the normal cleanup path.
- The UI should warn about possible duplicates before creating a new person or organization with a similar name.
- Merge behavior should preserve interactions, opportunities, next actions, tags, and audit history.
- Agent recommendations should never mutate important relationship state automatically unless the user has approved that action type.
- Unprocessed notes should remain visible until processed, archived, or intentionally closed.
- Inferred facts should carry confidence and source.

## Processing Workflow

The upgraded CRM should support a deliberate processing workflow for each relationship moment.

### Capture

Record the raw interaction:

- Who was involved.
- When it happened.
- Where/how it happened.
- What was discussed.
- What information was learned.
- Whether anything sensitive was included.

Fast capture should be possible even when the user only has partial information. A rough note can start as unprocessed, then be cleaned up later.

### Interpret

Decide what the interaction means:

- Is there a new person or organization to add?
- Does an existing organization need to be linked?
- Does this create or update an opportunity?
- Was a decision made?
- Was anything confirmed?
- Is there an approval gate?
- Is follow-up needed?

### Act Or Close

Choose one:

- Create a next action.
- Mark waiting on contact.
- Mark waiting on miniBIOTA.
- Mark waiting on approval.
- Move to nurture.
- Move to dormant.
- Close no follow-up.
- Close not fit.
- Mark do not contact.

Closing the loop is as important as creating a task. The CRM should make "no follow-up needed" an explicit processed outcome, not an absence of data.

### Review

The CRM should surface:

- Overdue next actions.
- Due today next actions.
- Waiting on approval.
- Waiting on contact.
- Active conversations without a next action.
- Recent interactions not processed.
- High-priority records without owner or due date.
- Confirmed relationship records missing evidence/source.
- Do-not-contact records.

## App Views To Build

All CRM views should support basic search, filters, and empty states. Search should cover names, organizations, opportunity names, notes, tags, and recent interaction summaries where practical.

### People View

Purpose:

- Browse and manage individual contacts.

Should show:

- Name.
- Primary organization or affiliation.
- Tags.
- Lifecycle stage.
- Health.
- Priority.
- Last interaction.
- Next action.
- Due date.
- Warning badges for sensitive, do-not-contact, needs approval, and missing basics.

Detail panel should show:

- Contact profile.
- Linked organizations.
- Linked opportunities.
- Interaction history.
- Open next actions.
- Decisions/outcomes.
- Notes.
- Sensitivity and approval warnings.
- Duplicate/merge actions if a likely duplicate exists.

### Organizations View

Purpose:

- Manage businesses, clubs, schools, venues, funders, media outlets, and other entities as first-class records.

Should show:

- Organization name.
- Category.
- Primary contact.
- Lifecycle stage.
- Health.
- Sponsor/partner fit.
- Open opportunities.
- Last interaction.
- Next action.
- Warning badges for sensitive, do-not-contact, needs approval, and missing basics.

Detail panel should show:

- Organization profile.
- Linked people and roles.
- Opportunities.
- Interaction history.
- Open next actions.
- Risks and sensitivities.
- Duplicate/merge actions if a likely duplicate exists.

### Opportunities View

Purpose:

- Manage sponsorship, speaking, event, education, grant, partner, and other possible paths.

Should show:

- Opportunity name.
- Category.
- Person and/or organization.
- Stage/status.
- Priority.
- Estimated value or strategic importance.
- Fit.
- Approval state.
- Next action.
- Due date.

Useful modes:

- Kanban by lifecycle stage.
- Table/list by due date.
- Filter by category.
- Filter by approval needed.
- Filter by sponsor/partner fit.
- Filter by missing next action.
- Filter by waiting state.

### Interactions View

Purpose:

- Capture and process relationship moments.

Should show:

- Date.
- Channel.
- Summary.
- Related people/orgs/opportunity.
- Processing status.
- Follow-up implication.
- Decision/outcome indicator.

Useful filters:

- Unprocessed.
- Needs follow-up.
- Needs approval.
- Discussion only.
- Confirmed/decision records.
- Sensitive.
- Unlinked or incomplete.

### Next Actions View

Purpose:

- Daily relationship follow-up queue.

Should show:

- Title.
- Owner.
- Related person/org/opportunity.
- Due date.
- Status.
- Priority.
- Approval required.

Useful filters:

- Today.
- Overdue.
- Waiting on contact.
- Waiting on approval.
- Waiting on miniBIOTA.
- Done.
- Closed no follow-up.
- Missing owner.

### Global Search

Purpose:

- Find a person, organization, opportunity, interaction, or next action quickly when the user remembers only one piece of context.

Should support:

- Search by person name.
- Search by organization name.
- Search by opportunity name.
- Search by email, phone, website, or public profile.
- Search by tag.
- Search by note text or interaction summary where practical.

### Duplicate Review

Purpose:

- Prevent the CRM from splitting one real-world person or organization across multiple records.

Should show:

- Possible duplicate people.
- Possible duplicate organizations.
- Records with same email, website, or similar name.
- Merge candidate summaries.

Merge behavior must preserve:

- Interactions.
- Opportunities.
- Next actions.
- Tags.
- Person-organization links.
- Decisions/outcomes.
- Approval evidence.
- Sensitive flags.
- Audit/history.

### Review Dashboard

Purpose:

- Keep the relationship system from drifting.

Should show:

- Due today.
- Overdue.
- High priority.
- Waiting on approval.
- Unprocessed interactions.
- Active conversations missing next action.
- Confirmed relationships missing evidence/source.
- Do-not-contact records.
- Possible duplicates.
- Records missing basics.

### Agent Inbox

Purpose:

- Give the agent and Josue one place to process raw notes, new leads, imported records, suggested cleanup, and incomplete relationship moments.

Should show:

- Unprocessed interactions.
- Imported leads not yet classified.
- Records missing required fields.
- Agent recommendations awaiting approval or dismissal.
- Possible duplicates.
- Follow-ups with unclear owner/date.
- Records blocked by missing assets.

### Relationship Map View

Purpose:

- Make connected data inspectable: person to organization to opportunity to interaction to next action.

Should show:

- A selected person or organization.
- Connected people.
- Connected organizations.
- Connected opportunities.
- Recent interactions.
- Open next actions.
- Intro/referral paths.

This can be a simple linked-list/detail view first. It does not need to be a visual graph in the first version.

### Reports And Briefs

Purpose:

- Let the agent summarize CRM state without manually reconstructing it from records.

Useful report outputs:

- Daily follow-up brief.
- Weekly relationship review.
- Opportunities needing approval.
- Warm relationships with no recent touch.
- Sponsor/partner prospects by fit.
- Opportunities blocked by missing assets.
- Recently processed interactions.
- Newly added records.
- Closed/no-follow-up records.

## Suggested Database Direction

This began as a conceptual schema direction. As of 2026-05-12, the App Agent drafted, reviewed, and backed up for the additive schema foundation; Josue applied `M:\miniBIOTA\miniBIOTA_App\migrations\013_crm_relationship_system.sql` in live Supabase SQL Editor; the App Agent then performed read-only verification.

Implementation status:

- All 33 expanded CRM tables listed below now exist in live Supabase.
- All 33 expanded CRM tables were confirmed empty immediately after migration.
- Existing legacy tables were preserved: `crm_contacts`, `crm_activities`, and `partner_opportunities`.
- Legacy row counts remained unchanged after migration: `crm_contacts` 0, `crm_activities` 0, `partner_opportunities` 5.
- Pre-migration read-only export exists at `C:\tmp\miniBIOTA-crm-pre-013-2026-05-12\`.
- No CRM records were migrated, backfilled, created, edited, archived, or deleted during the schema pass.
- The new CRM tables have RLS enabled with no policies; the next runtime/UI pass should use the App internal main-process secret-key bridge unless a separate approved RLS policy pass is completed.

Potential tables:

- `crm_people`
- `crm_organizations`
- `crm_person_organizations`
- `crm_opportunities`
- `crm_opportunity_people`
- `crm_opportunity_organizations`
- `crm_interactions`
- `crm_interaction_people`
- `crm_interaction_organizations`
- `crm_interaction_opportunities`
- `crm_decisions`
- `crm_next_actions`
- `crm_tags`
- `crm_person_tags`
- `crm_organization_tags`
- `crm_opportunity_tags`
- `crm_audit_events`
- `crm_contact_methods`
- `crm_addresses`
- `crm_pipelines`
- `crm_pipeline_stages`
- `crm_relationship_facts`
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

### Expanded Table Catalog

Core identity:

- `crm_people`: individual people.
- `crm_organizations`: businesses, clubs, venues, schools, funders, media outlets, institutions, suppliers, and community groups.
- `crm_person_organizations`: many-to-many links between people and organizations.
- `crm_contact_methods`: emails, phones, websites, and social/profile handles for people or organizations.
- `crm_addresses`: physical addresses, mailing addresses, public addresses, or service areas.

Relationship classification:

- `crm_tags`: shared tag dictionary.
- `crm_person_tags`: people to tags.
- `crm_organization_tags`: organizations to tags.
- `crm_opportunity_tags`: opportunities to tags.
- `crm_segments`: saved CRM lists or dynamic review groups.
- `crm_segment_members`: manual segment membership.

Commercial and opportunity tracking:

- `crm_opportunities`: possible commercial, partnership, speaking, grant, education, event, donor, media, supplier, or collaboration paths.
- `crm_opportunity_people`: people linked to opportunities.
- `crm_opportunity_organizations`: organizations linked to opportunities.
- `crm_pipelines`: optional pipeline definitions by opportunity category.
- `crm_pipeline_stages`: ordered stage definitions and entry/exit criteria.

Relationship memory:

- `crm_interactions`: dated relationship events and notes.
- `crm_interaction_people`: people participating in or related to an interaction.
- `crm_interaction_organizations`: organizations participating in or related to an interaction.
- `crm_interaction_opportunities`: opportunities related to an interaction.
- `crm_decisions`: structured decisions or outcomes from interactions.
- `crm_relationship_facts`: extracted durable facts with source and confidence.
- `crm_external_sources`: links to external/source records that support CRM facts.

Follow-up and operations:

- `crm_next_actions`: follow-up queue and relationship tasks inside CRM.
- `crm_assets`: sales, sponsor, event, proof, and planning materials needed by opportunities.
- `crm_campaigns`: internal outreach or relationship-work batches.
- `crm_campaign_members`: people, organizations, or opportunities included in a campaign/batch.
- `crm_referrals`: intro paths and referral state.
- `crm_consents`: communication preferences, do-not-contact, and public-use permissions.

Agent-first management:

- `crm_agent_recommendations`: proposed cleanup, follow-up, risk, merge, or interpretation actions.
- `crm_agent_runs`: optional log of agent review runs, such as weekly CRM review or duplicate scan.
- `crm_import_batches`: imported notes, CSVs, website forms, or other batch sources before/after processing.

Governance:

- `crm_audit_events`: stage changes, approval changes, merges, archives, and other important history.

Migration strategy to consider:

1. Preserve current `crm_contacts`, `crm_activities`, and `partner_opportunities` data.
2. Decide whether to migrate existing contacts into `crm_people`, or keep compatibility views.
3. Decide whether organization-like current contacts become organizations, people, or both.
4. Decide whether `partner_opportunities` should be replaced by `crm_opportunities` or extended.
5. Keep old IDs mapped if existing activity/opportunity links matter.
6. Avoid destructive migration until current live data is inspected and backed up.
7. Prefer additive tables and compatibility views for the first migration if existing App UI needs a safer transition.
8. Preserve `created_at`, `updated_at`, and original source IDs where possible.

## Compatibility Questions For App

- Should current `crm_contacts` remain and be extended, or should it migrate to `crm_people`?
- Should `partner_opportunities` remain the opportunity table, or should a new `crm_opportunities` table replace it?
- Should existing CRM UI routes preserve their current names, or should Contacts become People?
- Should organizations be editable from a new Organizations view or embedded first inside People detail?
- Should next actions use CRM-only tables or integrate with App Planner tasks later?
- Should interaction logs support file links or attachment references in the first version?
- Should tags be free-form or controlled vocabulary?
- Should approval fields be general across people/orgs/opportunities/actions, or scoped mainly to opportunities/actions?
- Should real deletes remain available after migration, or should most deletes become archive actions?
- What is the minimum audit/history behavior needed in the first build?
- Which expanded tables should be created immediately even if the first UI only uses part of them?
- Should contact methods be polymorphic across people and organizations, or split into person/organization method tables?
- Should segments support dynamic criteria in version one, or start with manual lists?
- Should agent recommendations be actionable in-app, or read-only review items at first?
- Should imports have a holding area before they become real CRM records?
- Should CRM next actions later sync to Planner, or remain intentionally separate?

## Build Phases

### Phase 0: Discovery And Safety

- [ ] Inspect current live Supabase CRM schema through approved read-only path.
- [ ] Inspect current CRM data shape without creating test records.
- [ ] Confirm whether `002_crm_schema.sql` fully matches live Supabase.
- [ ] Confirm current `partner_opportunities` columns and row count.
- [ ] Identify existing records that need migration protection.
- [ ] Decide migration strategy.
- [ ] Decide whether the first build is additive or replacement.
- [ ] Decide whether current records need export before any migration work.

Done:

- [x] App Agent inspected current live Supabase CRM schema through an approved read-only path.
- [x] Current CRM data shape was inspected without creating test records.
- [x] Live legacy table shapes were confirmed for `crm_contacts`, `crm_activities`, and `partner_opportunities`.
- [x] Current legacy CRM row counts were confirmed before and after migration.
- [x] Existing CRM-related rows were protected with a pre-migration read-only export.
- [x] Additive schema-first migration strategy was selected.
- [x] Legacy CRM tables were preserved.

Left:

- [ ] None for the schema-foundation pass.
- [ ] Repeat live checks before any future backfill, record migration, RLS policy, or runtime write work.

### Phase 1: Data Model Design

- [ ] Draft final table list.
- [ ] Draft field list and allowed values.
- [ ] Draft relationship constraints.
- [ ] Draft indexes for common views.
- [ ] Draft migration/backfill plan.
- [ ] Draft rollback or recovery plan.
- [ ] Review approval and commitment boundaries.
- [ ] Review sensitive detail handling.
- [ ] Define archive/delete policy.
- [ ] Define duplicate detection and merge rules.
- [ ] Define audit/history requirements.
- [ ] Define agent recommendation model.
- [ ] Define import/inbox model.
- [ ] Decide which expanded tables are first migration versus reserved for later.

Done:

- [x] Final expanded table list was drafted and implemented as the additive schema foundation.
- [x] Field lists, constraints, timestamps, archive fields, source/provenance fields, approval fields, and agent-first fields were drafted in the App migration.
- [x] Relationship constraints and join tables were drafted for people, organizations, opportunities, interactions, tags, segments, campaigns, and other linked records.
- [x] Indexes for common views and joins were included in the App migration draft.
- [x] Backfill was explicitly deferred; no live CRM records were moved.
- [x] Recovery posture was established through a read-only export before migration.
- [x] Approval, commitment, sensitive-detail, archive/delete, duplicate/merge, audit/history, recommendation, import, and inbox semantics were represented in the schema direction.
- [x] All 33 expanded tables were created in live Supabase after Josue ran the approved migration in Supabase SQL Editor; App Agent performed read-only verification.

Left:

- [ ] Runtime/UI-specific refinements after the first staged App implementation pass.
- [ ] Separate reviewed backfill plan before moving legacy `partner_opportunities` into the new relationship system.
- [ ] Separate RLS/policy decision if the App should ever access these tables outside the internal main-process secret-key bridge.

### Phase 2: App Navigation And Views

- [ ] Decide CRM tab navigation structure.
- [ ] Add People view.
- [ ] Add Organizations view.
- [ ] Expand Opportunities view.
- [ ] Add Interactions view.
- [ ] Add Next Actions view.
- [ ] Add Review Dashboard.
- [ ] Preserve existing CRM stats where useful.
- [ ] Add global CRM search.
- [ ] Add duplicate review view or workflow.
- [ ] Add Agent Inbox view.
- [ ] Add relationship map/detail view.
- [ ] Add reporting/brief outputs.

Done:

- [x] Initial read-only Relationship summary view added for table counts and review queue counts.

Left:

- [ ] Full runtime/UI surfaces remain: People, Organizations, expanded Opportunities, Interactions, Next Actions, Review Dashboard, Agent Inbox, global search, duplicate review, relationship map/detail, reports/briefs, and populated-state QA.

### Phase 3: Forms And Record Editing

- [ ] People create/edit modal.
- [ ] Organization create/edit modal.
- [ ] Person-organization link editor.
- [ ] Opportunity create/edit modal.
- [ ] Interaction capture modal.
- [ ] Decision/outcome capture section.
- [ ] Next action create/edit modal.
- [ ] Tag editor.
- [ ] Approval fields.
- [ ] Sensitive flag fields.
- [ ] Archive/restore controls.
- [ ] Duplicate merge flow.

Done:

- [ ] Not started.

Left:

- [ ] All items.

### Phase 4: Interaction Processing Workflow

- [ ] Support raw interaction capture.
- [ ] Mark interaction as unprocessed.
- [ ] Add processing panel.
- [ ] Extract decisions/outcomes.
- [ ] Create or update next action from interaction.
- [ ] Close follow-up from interaction.
- [ ] Update relationship health/stage from interaction.
- [ ] Show processing status in Interactions view.
- [ ] Preserve processing outcome as decision, next action, or close reason.
- [ ] Extract durable relationship facts with source/confidence.

Done:

- [ ] Not started.

Left:

- [ ] All items.

### Phase 5: Follow-Up System

- [ ] Build Today queue.
- [ ] Build Overdue queue.
- [ ] Build Waiting on Contact queue.
- [ ] Build Waiting on Approval queue.
- [ ] Build Closed No Follow-Up state.
- [ ] Support close reason.
- [ ] Show open follow-up count on people/org/opportunity detail.
- [ ] Warn when active records lack next action.
- [ ] Make no-follow-up closure explicit and reportable.

Done:

- [ ] Not started.

Left:

- [ ] All items.

### Phase 6: Review And Risk Surfaces

- [ ] Show sensitive records clearly.
- [ ] Show records needing approval.
- [ ] Show confirmed relationships missing source/evidence.
- [ ] Show active conversations without next action.
- [ ] Show overdue high-priority items.
- [ ] Show do-not-contact records separately.
- [ ] Show sponsor/partner fit review list.
- [ ] Show possible duplicates.
- [ ] Show records missing basics.
- [ ] Show agent recommendations awaiting review.
- [ ] Show unprocessed import batches or raw notes.

Done:

- [ ] Not started.

Left:

- [ ] All items.

### Phase 7: Migration And Data Preservation

- [ ] Back up or export existing CRM-related rows before migration.
- [ ] Migrate current contacts to new structure.
- [ ] Migrate current opportunities.
- [ ] Migrate current activities into interactions and/or next actions.
- [ ] Validate links after migration.
- [ ] Validate UI reads.
- [ ] Validate no unintended data loss.
- [ ] Validate archived records remain inspectable.
- [ ] Validate duplicate merge preserves linked history.
- [ ] Validate import batches can be processed without losing source context.
- [ ] Validate agent recommendations do not change relationship state without approval.

Done:

- [x] Existing CRM-related rows were exported before applying the schema foundation.
- [x] Additive schema foundation was applied without moving legacy rows.
- [x] Legacy table existence and row counts were verified after migration.
- [x] New CRM tables were verified to exist and remain empty after migration.

Left:

- [ ] Migrate current contacts to new structure, if needed.
- [ ] Migrate current opportunities.
- [ ] Migrate current activities into interactions and/or next actions, if needed.
- [ ] Validate links after any future backfill.
- [ ] Validate UI reads during staged runtime passes.
- [ ] Validate no unintended data loss after any future data movement.
- [ ] Validate archived records remain inspectable.
- [ ] Validate duplicate merge preserves linked history.
- [ ] Validate import batches can be processed without losing source context.
- [ ] Validate agent recommendations do not change relationship state without approval.

### Phase 8: QA And Acceptance

- [ ] Read-only load test of CRM tab.
- [ ] Verify all views render empty and populated states.
- [ ] Verify person with multiple organizations works.
- [ ] Verify organization with multiple people works.
- [ ] Verify opportunity linked to person and organization works.
- [ ] Verify interaction processing creates correct next action.
- [ ] Verify follow-up can be closed with no action needed.
- [ ] Verify approval-required records surface correctly.
- [ ] Verify do-not-contact records are protected visually.
- [ ] Verify global search finds people, organizations, opportunities, interactions, and actions.
- [ ] Verify duplicate merge preserves linked records.
- [ ] Verify archive behavior does not destroy history.
- [ ] Verify stage/approval/confirmed changes are auditable or preserved in interaction history.
- [ ] Verify agent inbox surfaces unprocessed notes, imports, recommendations, and missing basics.
- [ ] Verify relationship map shows connected people, organizations, opportunities, interactions, and actions.
- [ ] Verify reports/briefs can answer the core agent review questions.
- [ ] Verify no public site behavior changed.
- [ ] Verify no Planner records changed unless explicitly scoped.

Done:

- [x] Schema-only QA confirmed all 33 expanded CRM tables exist.
- [x] Schema-only QA confirmed all 33 expanded CRM tables are empty.
- [x] Schema-only QA confirmed legacy tables still exist and legacy counts remained unchanged.
- [x] Renderer checks passed for the first read-only Relationship summary view.

Left:

- [ ] All populated-state, write-path, workflow, search, merge, archive, report, and full App behavior QA items.
- [ ] Public site and Planner non-change checks during future runtime/UI passes.

## Minimum Viable Upgrade

If the full build needs to be staged, the minimum useful version should include:

- Organizations table and UI.
- Person-to-organization links.
- Expanded opportunities linked to people and organizations.
- Interaction log.
- Next actions with open/done/closed no-follow-up states.
- Processing status for interactions.
- Approval required/approved fields on opportunities and actions.
- Review dashboard for overdue, waiting approval, and unprocessed interactions.
- Basic search across people, organizations, opportunities, interactions, and actions.
- Archive instead of destructive delete for real records.
- Agent Inbox for unprocessed notes, missing basics, possible duplicates, and recommendations.
- Relationship facts with source/confidence.
- Contact methods separated from the main person/organization record.

This minimum version would support the Grant/business/aquatics club case and prevent relationship notes from flattening into one contact note field.

## Nice To Have Later

- Email import or manual email reference links.
- Calendar integration.
- Contact export.
- Attachment references.
- Templates for common interaction types.
- Sponsor/partner scoring rubric UI.
- Relationship timeline visualization.
- Weekly CRM review report.
- App Planner integration for selected next actions.
- Website form to CRM intake flow.
- Newsletter platform sync.
- Relationship import helpers from CSV or structured notes.
- Lightweight print/export view for meeting preparation.
- Automated enrichment suggestions from public URLs, kept as unapproved agent recommendations.
- Saved report templates.
- Advanced relationship graph visualization.
- Cross-domain handoff links to Brand, Content, Web, Financials, App, and Company records.

## Approval And Write Boundaries

Before implementation:

- App schema changes need explicit approval.
- Supabase migrations need explicit approval.
- Live CRM writes need explicit approval.
- Test records should not be created without approval.
- Existing CRM records should not be migrated or deleted without approval.
- Partner, sponsor, outreach, pricing, public claim, legal, financial, sales, and campaign commitments remain outside CRM scope unless separately approved.
- CRM next actions are internal operator reminders unless explicitly approved for execution.
- CRM approval metadata records approval evidence, but does not replace legal, financial, or public commitment review when those are required.
- Agent recommendations are proposals until accepted or explicitly approved.
- Agent-created inferred facts must remain labeled as inferred until verified.
- Imports should not become clean CRM truth until processed.

## Open Questions

- Should the upgraded primary contact table be named `crm_people` or should existing `crm_contacts` be extended?
- Should organizations be fully separate immediately, or first implemented as an additive layer beside contacts?
- Should `partner_opportunities` be preserved as-is and extended, or migrated into `crm_opportunities`?
- Should next actions remain CRM-only or later connect to App Planner tasks?
- Should decisions be their own table, or embedded as structured fields on interactions?
- Should tags be controlled vocabulary, free-form, or both?
- What approval states should be visible in the first UI pass?
- What sensitive-detail rules should the App enforce visually?
- Should duplicate merge be included in the first build or deferred until after migration?
- Should audit/history be a full table in version one or represented through interactions/decisions at first?
- Should all expanded tables be created now for long-term flexibility, or should some remain documented but uncreated until needed?
- How much should the App enforce required fields versus allowing incomplete records into Agent Inbox?
- Should relationship facts be manually editable, agent-extracted, or both?
- Should public-use permissions, logo/name permissions, and outreach consent be stored in one `crm_consents` table or separate approval records?
- Which reports should ship first: daily follow-up, weekly review, approval-needed, stale warm relationships, or missing-assets?

## Current Build Status

Overall status: schema foundation applied and first read-only Relationship view added; expanded CRM write/runtime workflows are not started.

Built:

- Existing basic CRM tab.
- Existing Contacts view.
- Existing Pipeline view.
- Existing Activities view.
- Existing basic contact/opportunity/activity modals.
- Additive database foundation for the expanded CRM relationship system.
- New empty CRM tables for people, organizations, person-organization links, contact methods, addresses, opportunities, interactions, decisions, relationship facts, next actions, tags, segments, assets, campaigns, referrals, consents, external sources, agent recommendations, agent runs, import batches, and audit events.
- Pre-migration export of legacy CRM rows outside the App git worktree.
- Post-migration verification that all 33 new tables exist, all 33 are empty, and legacy CRM counts are unchanged.
- Read-only Relationship summary view for table counts and review queue counts through the App internal main-process secret-key bridge.

Not built yet:

- Organizations as first-class records.
- Person-to-organization links.
- Multiple relationship types/tags per person.
- Interaction processing workflow.
- Structured decision/outcome capture.
- Follow-up closure states.
- Approval metadata.
- Relationship health.
- Rich lifecycle stages.
- Review dashboard.
- Migration/backfill plan.
- Global search.
- Duplicate detection and merge.
- Archive/restore behavior.
- Audit/history behavior.
- Contact methods and addresses as separate linked records.
- Segments/lists.
- Relationship facts.
- Assets/material references.
- Campaign/outreach batch containers.
- Referrals/introductions.
- Consent/preference records.
- External source links.
- Agent Inbox.
- Agent recommendations.
- Agent run/import batch tracking.
- Reports/briefs.





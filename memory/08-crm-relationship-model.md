# CRM Relationship Model

## Purpose
This file defines the Growth-owned meaning of miniBIOTA relationship records for App to implement. Growth owns the commercial semantics: what contacts, relationship types, lifecycle stages, opportunities, follow-ups, fit signals, and relationship health mean.

App owns the software implementation after this model is handed off. This model does not create CRM records, outreach actions, sponsor obligations, partner commitments, prices, public claims, legal commitments, financial commitments, campaign dates, launch targets, roadmap commitments, or approved sales commitments.

## Operating Boundary
CRM records describe relationship state and operator follow-through. They are not approval records unless a higher-priority source explicitly documents approval.

- A contact type is a classification, not a commitment.
- A lifecycle stage is an operating state, not proof of approval.
- A next action is an internal follow-up reminder, not approved outreach execution.
- A note is context, not a promise.
- An opportunity is a possible path, not a deal, obligation, sponsor package, campaign, price, or deliverable.
- A confirmed stage requires an explicit verified source; it must not be inferred from interest, Planner task status, or old notes.

## Core Record Types

### Contact
A person or organization known to Growth. A contact may have multiple types, but should have one primary type for filtering.

Required minimum fields:
- Name.
- Person, organization, or household/community group.
- Primary contact type.
- Secondary contact types, if relevant.
- Source of relationship.
- Owner.
- Lifecycle stage.
- Relationship health.
- Last meaningful interaction date.
- Next action.
- Next action date.
- Notes.
- Sensitive detail flag when needed.

### Organization
A company, venue, school, institution, nonprofit, funder, media outlet, community group, supplier, or partner entity. Organizations can contain many people and many opportunities.

Required minimum fields:
- Organization name.
- Organization category.
- Main contact person, if known.
- Website or public reference, if known.
- Sponsor or partner fit summary.
- Risks or approval sensitivities.

### Opportunity
A possible commercial, partnership, support, event, audience, or collaboration path tied to a contact or organization.

Required minimum fields:
- Opportunity name.
- Opportunity category.
- Related contact or organization.
- Lifecycle stage.
- Priority.
- Sponsor or partner fit score, if relevant.
- Estimated value or strategic importance, labeled as an estimate.
- Supporting assets needed.
- Approval needed before action.
- Owner.
- Next action.
- Next action date.

### Interaction
A logged exchange or meaningful context point, such as a meeting, email, call, event conversation, donation note, intro, or research note.

Required minimum fields:
- Date.
- Channel.
- Summary.
- Participants.
- Follow-up implication, if any.
- Whether the interaction includes a verified approval, commitment, or only discussion.

### Next Action
The smallest useful operator step needed to prevent relationship drift.

Examples:
- Research fit.
- Find correct contact.
- Draft outreach.
- Ask Josue for approval.
- Send approved outreach.
- Follow up.
- Prepare asset.
- Record response.
- Move to nurture.
- Close as not fit.

## Contact Types
Contact types are tags, not stages. A record may have multiple types when reality overlaps.

| Type | Meaning | Boundary |
|---|---|---|
| Customer | A person or organization that has purchased, subscribed to, enrolled in, or otherwise paid for an approved miniBIOTA offering. | Does not imply sponsorship, partnership, testimonial approval, or permission to use their name publicly. |
| Partner | A person or organization connected to a mutual collaboration path, distribution path, educational relationship, venue relationship, technical relationship, or strategic alliance. | Does not imply approved terms, obligations, exclusivity, deliverables, or public announcement. |
| Sponsor | A business or organization that may support miniBIOTA in exchange for approved visibility, association, or other sponsor benefits. | Does not imply package terms, price, benefits, logo use, fulfillment obligations, or public claims. |
| Donor | A person or organization that supports miniBIOTA without an expected commercial benefit. | Does not imply recurring support, public recognition approval, tax/legal treatment, or campaign participation. |
| Supporter | An audience member, community member, newsletter subscriber, follower, fan, or informal advocate. | Does not imply donation, purchase, partnership, or permission for public use of identity. |
| Collaborator | A person or organization that may contribute expertise, build help, creative work, science context, technical support, content, or advisory input. | Does not imply employment, contractor status, ownership, rights transfer, legal terms, or deliverables. |
| Event Contact | A venue, organizer, conference, school, festival, speaker lead, panel host, or appearance-related contact. | Does not imply booking, date, fee, travel commitment, sponsor obligation, or public event claim. |
| Lead | A named or unnamed possible relationship worth researching or qualifying. | Does not imply interest, contact permission, active conversation, or fit. |
| Opportunity | A possible outcome attached to a contact or organization. | Does not imply a deal, approved offer, outreach approval, price, launch date, or public commitment. |

## Lifecycle Stages
Lifecycle stages should be used conservatively. Do not advance a record without a verified signal.

| Stage | Meaning | Minimum Requirement |
|---|---|---|
| Inbox | Captured but not triaged. | Name or rough identifier plus source. |
| Researching | Needs qualification, source check, fit review, or correct contact discovery. | Research next action and owner. |
| Qualified | Appears relevant enough to keep in the CRM. | Contact type, opportunity category if any, priority, and next action. |
| Nurture | Worth keeping warm, but not ready for outreach or active pursuit. | Reason to keep, review cadence, and next action date. |
| Outreach Draft | Outreach or follow-up is being prepared internally. | Draft owner and approval needed field. |
| Outreach Approved | Josue or another authorized source has approved the specific outreach action. | Approval source and date. |
| Outreach Sent | Approved outreach was actually sent. | Send date, channel, and message reference. |
| Active Conversation | There is verified two-way engagement. | Last interaction date and next action. |
| Proposal Or Scope Draft | Possible terms, benefits, collaboration shape, or sponsor package are being drafted. | Draft status, open approvals, and claim/pricing/legal sensitivities. |
| Awaiting Response | miniBIOTA is waiting on the contact after an interaction or outreach. | Follow-up date and fallback action. |
| Confirmed Relationship | A relationship, sponsorship, partnership, appearance, sale, donation, or collaboration is explicitly confirmed. | Verified approval or agreement source. |
| Active Relationship | Confirmed relationship is currently being managed. | Owner, active obligations or "none approved", and next check-in. |
| Completed | The relationship or opportunity cycle finished. | Outcome summary and archival notes. |
| Closed Not Fit | Not worth pursuing under current conditions. | Reason. |
| Dormant | No current action, but not rejected. | Revisit date or reason for no follow-up. |
| Do Not Contact | Should not be contacted. | Reason and source. |

## Opportunity Categories
Use one primary category per opportunity, with optional secondary tags.

- Sponsorship: possible business support tied to approved visibility or sponsor benefits.
- Brand partnership: possible alignment with a brand, maker, venue, platform, or organization.
- Speaking or appearance: talks, panels, interviews, school visits, demos, festivals, conferences, or media appearances.
- Event or venue activation: booths, showcases, installations, pop-ups, workshops, or public demonstrations.
- Education or course: workshops, classes, curricula, course sales, institutional education, or paid learning paths.
- Affiliate or build resource: resource pages, hardware lists, referral paths, or affiliate-backed educational material.
- Donor or patron support: individual or organizational support without commercial consideration.
- Customer or product sale: purchase path for an approved product, course, service, or paid offering.
- Grant or foundation: non-dilutive funding, institutional funding, or application-based support.
- Content or media collaboration: podcast, video, press, creator collaboration, publication, or story feature.
- Technical or research collaboration: science, engineering, ecology, data, hardware, or advisory collaboration.
- Community relationship: community group, local network, school, maker space, or informal ecosystem connection.
- Supplier or vendor: commercial vendor or supplier relationship that may affect fulfillment, materials, or operations.

## Follow-Up Rules
Every open contact or opportunity needs an owner, next action, and next action date. If those fields are missing, the record is not operator-ready.

Default cadence:
- Inbox: triage within 2 business days.
- Researching: review within 7 days.
- Qualified with no outreach: decide nurture, draft, or close within 14 days.
- Outreach Draft: either request approval, revise, or close within 5 business days.
- Outreach Approved: send or intentionally pause within 3 business days.
- Outreach Sent: first follow-up after 5 to 7 business days unless context suggests otherwise.
- Awaiting Response: second follow-up after 10 to 14 additional days, then move to nurture or closed not fit.
- Active Conversation: set a next action within 3 business days of every meaningful interaction.
- Proposal Or Scope Draft: review weekly until approved, paused, or closed.
- Active Relationship: set a check-in cadence appropriate to the relationship, usually monthly unless the relationship is event-bound or deadline-bound.
- Dormant: review quarterly or on a specific trigger date.

Escalate for review when:
- A record is high priority and has no next action.
- A response has gone unlogged for more than 3 business days.
- A follow-up date is more than 7 days overdue.
- A contact is in proposal or confirmed stages without approval source detail.
- A possible sponsor, partner, event, or public claim touches pricing, obligations, legal terms, financial commitments, launch dates, campaign claims, or roadmap promises.

## Priority Signals
Priority is an operator attention signal, not an approval signal.

Suggested priority levels:
- P0: Time-sensitive or strategically critical; needs immediate Growth review.
- P1: Strong fit and near-term leverage; should stay actively managed.
- P2: Useful but not urgent; keep in normal cadence.
- P3: Low fit, speculative, or long-term; nurture or close unless context changes.

Priority should consider:
- Warm intro or existing trust.
- Clear decision-maker access.
- Mission and values alignment.
- Audience or community overlap.
- Revenue potential, labeled as estimate only.
- Strategic credibility or proof value.
- Event deadline or external timing.
- Low operational burden.
- Availability of needed assets.
- Fit with current commercial lanes.
- Risk level, including reputational, claim, legal, fulfillment, and capacity risk.

## Sponsor And Partner Fit
Sponsor and partner fit should be evaluated before outreach is approved.

Recommended fit dimensions:
- Mission alignment with miniBIOTA's ecological, educational, technical, and public documentation goals.
- Audience overlap with people likely to care about biospheres, ecology, making, education, science, sustainability, or design.
- Reputation and values fit.
- Low greenwashing or credibility risk.
- Clear mutual benefit.
- Realistic deliverables using current assets and capacity.
- Category relevance to sponsor, partner, venue, education, hardware, content, or community lanes.
- Claim safety: no need to overstate science, performance, impact, timelines, or hardware readiness.
- Financial or strategic value proportional to effort.
- Does not require exclusivity, roadmap promises, launch promises, pricing commitments, or public claims without approval.

Use this fit scale:
- Strong Fit: clear alignment, low risk, plausible near-term path.
- Possible Fit: promising but needs more research, assets, or approval.
- Weak Fit: unclear value, low alignment, or high effort.
- Not Fit: misaligned, too risky, extractive, or outside current scope.

## Relationship Health
Health describes the working condition of the relationship. It is separate from lifecycle stage and priority.

| Health | Meaning |
|---|---|
| Unknown | Not enough information yet. |
| Healthy | Trust is intact, next action is clear, and no unresolved risk is visible. |
| Warm | Positive signal exists but the relationship is not active. |
| Needs Attention | Follow-up, clarification, asset readiness, or owner action is needed. |
| At Risk | Misalignment, missed follow-up, unclear expectations, or capacity risk exists. |
| Dormant | No current motion, but future relevance remains possible. |
| Closed | Relationship or opportunity is finished, rejected, or no longer useful. |
| Do Not Contact | Do not contact unless a higher-priority source reverses this. |

Health signals to track:
- Last interaction age.
- Response quality and sentiment.
- Whether the next action is clear.
- Whether approval gates are unresolved.
- Whether expectations are clear or drifting.
- Whether needed assets exist.
- Whether the relationship depends on risky claims, pricing, legal terms, public promises, or fulfillment capacity.

## Minimum Useful Operator Workflow
The first App implementation should be small enough to use daily.

1. Capture
   - Add a contact or organization from a conversation, email, event, signup, research note, intro, donor/supporter signal, or public lead.
   - Record source, type, owner, and whether the record contains sensitive detail.

2. Classify
   - Assign contact type, lifecycle stage, opportunity category if any, priority, and relationship health.
   - Separate contact identity from opportunity category. One contact can have many opportunities.

3. Qualify
   - Decide whether the record is worth outreach, nurture, research, or closure.
   - Record sponsor or partner fit when relevant.
   - Label assumptions and unverified signals.

4. Set Next Action
   - Every open record gets one next action, one owner, and one next action date.
   - Actions that involve outreach, pricing, commitments, public claims, sponsor benefits, partner terms, campaign timing, roadmap claims, or legal/financial decisions must route through approval before execution.

5. Prepare Assets
   - Attach or reference needed assets such as business plan, media kit, sponsor package, proof asset, founder narrative, event one-sheet, website surface, or financial context.
   - Mark missing assets as blockers, not as promises.

6. Approval Gate
   - Before live outreach, sponsor terms, partner terms, pricing, public claims, or commitments, capture the approval source and date.
   - If approval is missing, keep the record in draft, research, nurture, or needs attention.

7. Log Interaction
   - Record what happened, when, through what channel, and what it means.
   - Explicitly mark whether the interaction produced discussion only, a decision needed, approval, or a confirmed commitment.

8. Advance Or Close
   - Move the lifecycle stage based on verified evidence.
   - Close as completed, closed not fit, dormant, or do not contact when appropriate.

9. Weekly Review
   - Review overdue next actions, high-priority records, active conversations, proposal/scope drafts, and records missing owner or next action.
   - Do not use Planner task status as CRM relationship state.

## Views App Should Support
Minimum useful views:
- Today: next actions due today or overdue.
- High Priority: P0 and P1 records.
- Awaiting Response: outreach or conversations waiting on the other party.
- Needs Approval: records blocked by Josue approval or another approval source.
- Sponsor/Partner Fit: possible sponsors and partners by fit level.
- Events: event contacts and appearance opportunities by date or deadline.
- Nurture: warm but inactive relationships.
- Missing Basics: records without owner, stage, type, next action, or next action date.

## App Implementation Notes
App may choose tables, forms, permissions, automations, and UI flows, but should preserve these Growth semantics.

Implementation should support:
- Many-to-many contact types.
- Contacts linked to organizations.
- Multiple opportunities per contact or organization.
- Interaction history separate from summary notes.
- One current next action per open contact or opportunity.
- Approval metadata separate from notes.
- Sensitive detail flagging.
- Auditability for stage changes, approvals, and confirmed commitments.

Do not infer approvals from notes, stage names, Planner tasks, email existence, or contact type. Approval must be a separate explicit field or linked source when relevant.

## Handoff Summary For App
App should implement a small internal CRM that lets Growth:
- Capture relationships quickly.
- Classify contacts and opportunities consistently.
- Keep every open item attached to a next action.
- Separate draft ideas from approved outreach and commitments.
- Track sponsor/partner fit without implying obligations.
- Track relationship health without confusing it with priority.
- Review overdue, high-priority, awaiting-response, needs-approval, and nurture records.

The first version is successful when Growth can open the CRM and immediately answer: who needs attention, why they matter, what the next action is, what approval is missing, and whether any relationship state is confirmed by a verified source.

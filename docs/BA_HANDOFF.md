# BA Handoff — Chennai Flood-Risk & Drainage Gap

## Objective
Prioritise wards for monsoon-preparedness action using flood incidents, drainage completion, elevation risk and budget context.

## Stakeholders
Municipal leadership; stormwater-drain operations; ward engineering teams; disaster-management teams; finance/procurement; residents/community reporting.

## Core requirements
- Filter by zone and ward.
- Compare claimed vs resident-reported completion.
- Rank wards by transparent risk score.
- Surface intervention recommendations with explainable drivers.
- Separate illustrative portfolio data from operational evidence.

## Decision rule
Prioritise high incident exposure + elevation/flood-watch risk + larger completion gaps. Use the ranking for investigation and budget triage, not emergency dispatch.

## Acceptance criteria
Dashboard loads without a backend; KPIs reconcile to source records; filters update the view; recommendations expose the underlying drivers; synthetic-data disclaimer remains visible.

## Production controls
Master ward geography, verified incident definitions, rainfall/elevation lineage, refresh SLA, QA checks, owner/approval workflow and audit trail.

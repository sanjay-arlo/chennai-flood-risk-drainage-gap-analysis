# Industry BA Delivery Pack — Chennai Flood Risk & Monsoon Investment

## Executive decision
Direct monsoon-preparation and drainage investment toward wards with the highest combined incident exposure, completion gap and flood-watch risk.

## Stakeholders
Municipal engineering, stormwater-drain operations, disaster management, ward teams, finance and programme governance.

## Requirements
- Analyse ward/zone exposure with transparent scoring.
- Compare claimed versus resident-reported completion.
- Surface high-risk wards and budget concentration.
- Support risk-weighted investment scenarios.
- Export decision-ready filtered data.

## KPI dictionary
Flood incidents, completion gap, flood-watch share, elevation risk, monsoon budget, risk-priority score.

## Analytical model
`dim_ward` + `dim_zone` + `dim_date` → `fact_flood_observation` + `fact_drainage_project` → risk KPI layer.

## Scenario model
Test budget shifts, incident reduction and completion uplift to compare risk-priority changes and identify the most actionable wards.

## Acceptance criteria
All selected filters update KPIs and visuals; ranking is deterministic; missing values are visible; score components are documented; exported data reconciles with the displayed scope.

## Production controls
Verified rainfall gauges, drainage asset master, incident taxonomy, GIS/elevation lineage, budget approvals and change-controlled risk weights.

## Portfolio note
Synthetic data is used for demonstration; it is not an official flood-risk audit.

# Chennai Flood-Risk & Stormwater Drainage Gap Analysis

> **Business Analyst / Data Analyst portfolio case study** for identifying ward-level flood exposure, drainage-completion gaps and monsoon investment priorities.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/chennai-flood-risk-drainage-gap-analysis/)**

## Executive summary

This case turns fragmented ward-level flood and drainage signals into a repeatable management workflow: clean and reconcile completion data, quantify exposure, identify exceptions, compare investment needs, and produce a prioritised monsoon-preparedness queue.

## Business problem

**Which wards combine high flood exposure with drainage-completion gaps, and where should monsoon-prep investment go first?**

### Key decisions supported

- Which wards have the highest flood exposure?
- Where is the gap between claimed and resident-reported completion greatest?
- Which wards require immediate review?
- How should limited monsoon budget be prioritised?
- What evidence would be needed before operational deployment?

## Analyst workflow

**Excel → Python / Pandas / NumPy (optional) → SQL / MySQL → Power BI → Decision**

### 1. Excel — first-pass business control

Clean ward records, reconcile drainage completion, calculate gap measures, review outliers, build pivots and create the initial exception list.

### 2. Python — optional analytical layer

Use **Pandas + NumPy** for repeatable EDA, anomaly checks, transformations or sensitivity analysis when the dataset benefits from programmatic analysis.

### 3. SQL / MySQL — mandatory analytical layer

Use CTEs, joins, aggregations, window functions, segmentation and ranking to calculate flood exposure, completion gaps, risk scores, budget views and exception queues.

### 4. Power BI — mandatory executive layer

Create a governed data model and DAX measures, then build slicers, drill-through and an executive story covering risk, drainage gap, ward investment and monsoon scenarios.

### 5. Decision — mandatory outcome

Translate risk into a management queue containing **priority, owner, intervention, expected impact, budget assumption and escalation trigger**.

## Technical stack

- **Excel** — data cleaning, reconciliation, formulas, pivots, exception analysis and scenario planning
- **SQL / MySQL** — risk KPIs, joins, CTEs, segmentation, ranking and exception queues
- **Python / Pandas / NumPy** — optional EDA, transformations, anomaly checks and sensitivity analysis
- **HTML / CSS / JavaScript** — interactive dashboard interface
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction, DAX and executive reporting specification
- **GitHub** — version control and documentation

## Dashboard story

1. **Risk Overview** — exposure, incidents and headline risk
2. **Drainage Gap** — claimed versus reported completion
3. **Ward Priority** — ranked exception queue
4. **Investment View** — budget and intervention focus
5. **Monsoon Scenario** — illustrative management levers
6. **Governance View** — data quality, grain and assumptions

## KPI framework

- **Completion gap** = claimed SWD completion % − resident-reported completion %
- **Flood incident exposure** = total recorded incidents within selected scope
- **Risk priority** = portfolio-weighted combination of incidents, elevation/flood-watch signals and incomplete drainage coverage
- **Budget priority** = risk concentration considered alongside available monsoon budget

## Business Analyst deliverables

- Business case and problem framing
- Stakeholder and requirements thinking
- KPI definitions and decision rules
- Excel analysis guide
- SQL/MySQL analytical queries
- Optional Python analytical layer
- Power BI model and DAX specification
- Interactive executive dashboard
- Exception-prioritisation framework
- Production implementation recommendations

## Data quality & governance

Required-field checks, completion-range validation, duplicate review, KPI reconciliation and explicit labelling of synthetic data are part of the analytical controls.

## Production upgrade path

A production version should integrate governed ward drainage records, verified rainfall gauges, flood incidents, elevation/geospatial data, project completion evidence and capex records. It should add source lineage, refresh SLAs, master-data controls, QA flags and approved intervention thresholds.

## Important limitation

This is a **portfolio case study using synthetic / illustrative data**. It is not an official Greater Chennai Corporation flood-risk audit or emergency-management system.

## Author

**Sanjay Arlo**  
Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)

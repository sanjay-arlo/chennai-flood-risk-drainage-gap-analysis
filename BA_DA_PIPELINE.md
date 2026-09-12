# BA / DA Delivery Pipeline

## Business question
Which Chennai wards combine flood exposure with drainage-completion gaps, and where should monsoon investment be prioritised?

## 01 — Excel
Clean ward-level records, reconcile claimed vs resident-reported drainage completion, inspect outliers, and create a ward exception view. Excel is the first-pass business control layer.

## 02 — SQL
Calculate flood incidents, completion gaps, risk score, budget efficiency and ranked exception queues using reproducible queries.

## 03 — Power BI
Build an analytical model and executive story: Risk Overview → Drainage Gap → Ward Investment → Monsoon Scenario. Use ward drill-through and geography slicers.

## 04 — Decision
Translate risk into an investment queue with priority, budget, owner, intervention and expected risk reduction.

## Acceptance criteria
All KPI totals reconcile to source data; completion-gap logic is transparent; scenarios are labelled illustrative; no synthetic figure is presented as official GCC data.
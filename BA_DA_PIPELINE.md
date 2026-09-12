# BA / DA Delivery Pipeline

## Business question
Which wards combine flood exposure with drainage-completion gaps, and where should monsoon investment be prioritised?

## 01 — Excel — mandatory first pass
Clean ward records, reconcile claimed vs resident-reported completion, validate fields, use formulas/pivots, calculate completion gaps and build an exception queue.

## 02 — Python (Pandas + NumPy) — optional
Use Python for repeatable EDA, anomaly checks, gap distributions or automated data-quality profiling when the dataset or task benefits from it. It is an optional accelerator, not a forced step.

## 03 — SQL — mandatory analytical layer
Use joins, CTEs, aggregations and window functions for risk KPIs, ward rankings, peer comparisons and exception queues.

## 04 — Power BI — mandatory decision interface
Build the analytical model, DAX measures, slicers and drill-through: Risk Overview → Drainage Gap → Ward Investment → Monsoon Scenario.

## 05 — Decision — mandatory outcome
Convert risk into a management queue with priority, owner, action, budget implication, expected risk reduction and escalation trigger.

## Acceptance criteria
KPI totals reconcile across stages; completion-gap logic is transparent; scenario assumptions are labelled illustrative; synthetic records are never presented as official GCC data.

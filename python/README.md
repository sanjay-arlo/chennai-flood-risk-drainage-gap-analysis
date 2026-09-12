# Optional Python Layer

Baseline workflow: **Excel → SQL → Power BI → Decision**.

Use Pandas + NumPy only when they add analytical value, such as repeatable EDA, anomaly checks, distribution analysis, sensitivity testing or data-quality automation.

Suggested use here:
- Pandas: ward-level cleaning, gap analysis and profiling.
- NumPy: percentile thresholds, risk-score sensitivity and numerical checks.

Python results should feed the governed SQL/Power BI layer rather than create competing KPI definitions.

from pathlib import Path
import csv

p = Path(__file__).parents[1] / 'sample_ward_drainage_flood_data_chennai.csv'
required = {'ward','zone','flood_incidents','claimed_swd_completion_pct','resident_reported_completion_pct','elevation_m','flood_watch_flag','monsoon_budget_inr','risk_priority_score'}
with p.open(newline='', encoding='utf-8') as f:
    rows = list(csv.DictReader(f))
missing = required.difference(rows[0].keys()) if rows else required
invalid = sum(1 for r in rows if not (0 <= float(r['claimed_swd_completion_pct']) <= 100 and 0 <= float(r['resident_reported_completion_pct']) <= 100 and float(r['flood_incidents']) >= 0))
print({'rows': len(rows), 'missing_columns': sorted(missing), 'invalid_rows': invalid})

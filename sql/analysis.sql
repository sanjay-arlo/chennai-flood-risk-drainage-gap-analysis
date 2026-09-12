-- Chennai Flood-Risk & Stormwater: reproducible SQL analysis
-- MySQL 8+; portfolio data is synthetic/illustrative.

-- 1) Zone KPI layer: CTE + aggregation
WITH zone_kpi AS (
    SELECT zone,
           COUNT(*) AS wards,
           SUM(flood_incidents) AS incidents,
           AVG(claimed_swd_completion_pct) AS avg_claimed_completion_pct,
           AVG(resident_reported_completion_pct) AS avg_reported_completion_pct,
           AVG(claimed_swd_completion_pct - resident_reported_completion_pct) AS avg_completion_gap,
           AVG(risk_priority_score) AS avg_priority_score,
           SUM(monsoon_budget_inr) AS budget_inr
    FROM sample_ward_drainage_flood_data_chennai
    GROUP BY zone
)
SELECT zone, wards, incidents,
       ROUND(avg_claimed_completion_pct,2) AS avg_claimed_completion_pct,
       ROUND(avg_reported_completion_pct,2) AS avg_reported_completion_pct,
       ROUND(avg_completion_gap,2) AS avg_completion_gap,
       ROUND(avg_priority_score,2) AS avg_priority_score,
       ROUND(budget_inr,0) AS budget_inr
FROM zone_kpi
ORDER BY avg_priority_score DESC;

-- 2) Window function: ward ranking inside each zone
SELECT ward, zone, flood_incidents, risk_priority_score,
       DENSE_RANK() OVER (PARTITION BY zone ORDER BY risk_priority_score DESC) AS zone_risk_rank,
       ROUND(claimed_swd_completion_pct - resident_reported_completion_pct,2) AS completion_gap
FROM sample_ward_drainage_flood_data_chennai
ORDER BY zone, zone_risk_rank;

-- 3) CTE + join: wards below their zone's average completion
WITH zone_avg AS (
    SELECT zone,
           AVG(resident_reported_completion_pct) AS zone_avg_completion,
           AVG(risk_priority_score) AS zone_avg_risk
    FROM sample_ward_drainage_flood_data_chennai
    GROUP BY zone
)
SELECT w.ward, w.zone,
       ROUND(w.resident_reported_completion_pct,2) AS ward_completion_pct,
       ROUND(z.zone_avg_completion,2) AS zone_avg_completion_pct,
       ROUND(z.zone_avg_completion - w.resident_reported_completion_pct,2) AS completion_gap_vs_zone,
       w.risk_priority_score
FROM sample_ward_drainage_flood_data_chennai w
JOIN zone_avg z ON w.zone = z.zone
WHERE w.resident_reported_completion_pct < z.zone_avg_completion
ORDER BY completion_gap_vs_zone DESC, w.risk_priority_score DESC;

-- 4) Exception queue
SELECT ward, zone, flood_incidents, claimed_swd_completion_pct,
       resident_reported_completion_pct, elevation_m,
       flood_watch_flag, risk_priority_score, monsoon_budget_inr
FROM sample_ward_drainage_flood_data_chennai
WHERE flood_watch_flag = 1 OR risk_priority_score >= 70
ORDER BY risk_priority_score DESC, flood_incidents DESC
LIMIT 25;

-- 5) Data-quality control
SELECT COUNT(*) AS invalid_rows
FROM sample_ward_drainage_flood_data_chennai
WHERE ward IS NULL OR zone IS NULL OR flood_incidents IS NULL
   OR claimed_swd_completion_pct IS NULL OR resident_reported_completion_pct IS NULL
   OR risk_priority_score IS NULL;

-- Chennai Flood-Risk: core analysis queries
SELECT zone,
       COUNT(*) AS wards,
       SUM(flood_incidents) AS incidents,
       ROUND(AVG(claimed_swd_completion_pct),2) AS avg_claimed_completion_pct,
       ROUND(AVG(resident_reported_completion_pct),2) AS avg_reported_completion_pct,
       ROUND(AVG(claimed_swd_completion_pct-resident_reported_completion_pct),2) AS avg_completion_gap,
       ROUND(AVG(risk_priority_score),2) AS avg_priority_score
FROM sample_ward_drainage_flood_data_chennai
GROUP BY zone
ORDER BY avg_priority_score DESC;

SELECT ward, zone, flood_incidents, claimed_swd_completion_pct,
       resident_reported_completion_pct, elevation_m,
       flood_watch_flag, risk_priority_score
FROM sample_ward_drainage_flood_data_chennai
ORDER BY risk_priority_score DESC
LIMIT 15;

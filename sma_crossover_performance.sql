--SMA Crossover Performance
SELECT 
  Signal,
  AVG(Daily_Return) AS Avg_Return,
  STDDEV(Daily_Return) AS Risk
FROM (
  SELECT 
    Date,
    CASE 
      WHEN SMAVG__50_ > SMAVG__200_ THEN 'Bullish'
      WHEN SMAVG__50_ < SMAVG__200_ THEN 'Bearish'
      ELSE 'Neutral'
    END AS Signal,
    (Last_Px - LAG(Last_Px, 1) OVER (ORDER BY Date)) / LAG(Last_Px, 1) OVER (ORDER BY Date) AS Daily_Return
  FROM `project.data`
)
GROUP BY Signal;
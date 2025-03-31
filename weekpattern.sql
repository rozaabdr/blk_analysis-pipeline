--season, trading pattern by weekday
SELECT 
  WD,
  AVG(Last_Px) AS Avg_Price,
  AVG(VC) AS Avg_Volume,
  COUNT(*) AS Days
FROM `project.data`
GROUP BY WD
ORDER BY WD;
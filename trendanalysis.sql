--Trend Analysis, window func
WITH trends AS (
  SELECT 
    Date,
    Last_Px,
    SMAVG__50_,
    SMAVG__200_,
    LAG(Last_Px, 1) OVER (ORDER BY Date) AS Prev_Price,
    (Last_Px - LAG(Last_Px, 1) OVER (ORDER BY Date)) / LAG(Last_Px, 1) OVER (ORDER BY Date) AS Daily_Return
  FROM `project.data`
)
SELECT 
  Date,
  Last_Px,
  Daily_Return,
  AVG(Daily_Return) OVER (ORDER BY Date ROWS 20 PRECEDING) AS Rolling_Volatility
FROM trends
ORDER BY Date DESC;
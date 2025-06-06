CREATE TABLE `prjectid.prject.data` AS
SELECT 
  Date,
  Last_Px,
  SMAVG__50_,
  SMAVG__200_,
  LEAD(SMAVG__50_, 1) OVER (ORDER BY Date) AS Next_SMAVG50,
  LEAD(SMAVG__200_, 1) OVER (ORDER BY Date) AS Next_SMAVG200
FROM prjectid.project.data
WHERE SMAVG__50_ < SMAVG__200_
ORDER BY Date DESC
LIMIT 1;
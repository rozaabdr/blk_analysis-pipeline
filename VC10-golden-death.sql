SELECT Date, Last_Px FROM project.data ORDER BY Date;

-- Identify Golden/Death Cross
SELECT Date, Last_Px, SMAVG__50_, SMAVG__200_, 
  CASE 
    WHEN SMAVG__50_ > SMAVG__200_ THEN 'Golden Cross (Bullish)'
    WHEN SMAVG__50_ < SMAVG__200_ THEN 'Death Cross (Bearish)'
    ELSE 'Neutral'
  END AS Signal
FROM project.data
ORDER BY Date;

-- Get Top 10 High Volume Days
SELECT Date, VC FROM project.data ORDER BY VC DESC LIMIT 10;

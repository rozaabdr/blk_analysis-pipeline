# blk_analysis-pipeline
Analyzing BlackRock's stock trends using BigQuery SQL: SMA crossovers, volatility, and trading patterns
Overview: This project used BigQuery SQL to analyze BLK's stock for trading signals, price trends, volatility and weekly patterns in price/volume. 
Extraction: the data of BLK's stock were extracted from Bloomberg Terminal for the period of 1.5 years.
Results: we found contradictory signals: Death crosses (bearish) had higher returns than Golden crosses (bullish); revealed Friday surges: highest volume/prices occured on the end of weekday, while the lowest being on Wednesday. Additionally we spotted unstable periods through calculation of daily volatility. 
This analysis can be automated via BigQuery scheduled queries. For larger datasets, optimize with partitioning.

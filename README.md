# Facebook-Ad-Spend-Forensic-Audit

Data Source: Raw ad-spend data from Kaggle (xyz_ad_campaign).

ETL Pipeline: Performed data transformation in Google BigQuery. Used CTEs to aggregate performance metrics and Window Functions (RANK(), MAX() OVER) to identify statistical outliers in campaign efficiency.

Calculated Logic: Implemented a dynamic ROAS (Return on Ad Spend) calculation using Tableau Parameters. This allows for real-time profitability simulation based on variable product price points—a critical feature for stakeholders when the final COGS (Cost of Goods Sold) is fluid.

The Findings: Isolated a specific demographic segment (Female 45-49) in Campaign 1178 where CPA was 923% higher than the baseline established by the top-performing campaign (916).
This wasn't just about making charts; it was about cleaning data at scale and finding efficiency metrics.


Analysis (SQL/BigQuery): I used BigQuery to aggregate over 450 interest segments, calculate Cost Per Sale (CPS) across demographics, and isolate the top/bottom performers. I exported this into three surgical CSV files for visualization.

Visualization (Tableau): Built a 4-sheet interactive dashboard to map the inefficient campaign

The Findings
 My SQL analysis revealed we’ve been funneling nearly $56,000 into Campaign 1178, despite it costing $63.83 per sale.
The Hidden Gem: Campaign 916 is getting sales for just $6.24.

The Verdict: We are paying 10x more for customers in our "high-spend" campaign than in our tests. Most of this waste is concentrated in the Female 45-49 demographic.

The math proves Campaign 1178 is an objective failure compared to the smaller, more efficient targets.

### 📂 How to use this repo
* [**/SQL**](sql/campaign_audit.sql): BigQuery transformation scripts using CTEs and Window Functions.
* [**/Data**](DATA): The three optimized CSVs exported from BigQuery.
* [**/Dashboard**](./Dashboard): Tableau Packaged Workbook
* [**/Interactive Version**](https://public.tableau.com/app/profile/rotem.ben.moyal/viz/Project_Precision_FB_Campaign_Audit/Dashboard1): View the interactive dashboard on Tableau Public.

# Facebook-Ad-Spend-Forensic-Audit
Facebook Ad performance across 454 interest segments. Includes a dynamic ROAS simulator using Tableau parameters to identify budget waste and a 923% efficiency gap between scaling and testing campaigns
 The Project at a Glance
I took messy raw dataset from Kaggle and performed analysis to find where marketing budgets go to die. This wasn't just about making charts; it was about cleaning data at scale and finding a "smoking gun" in the efficiency metrics.

The Technical Workflow
Extraction: Pulled raw Facebook ad performance data from Kaggle.

Analysis (SQL/BigQuery): I used BigQuery to aggregate over 450 interest segments, calculate Cost Per Sale (CPS) across demographics, and isolate the top/bottom performers. I exported this into three surgical CSV files for visualization.

Visualization (Tableau): Built a 4-sheet interactive dashboard to map the inefficient campaign

The Findings
 My SQL analysis revealed we’ve been funneling nearly $56,000 into Campaign 1178, despite it costing $63.83 per sale.
The Hidden Gem: Campaign 916 is getting sales for just $6.24.

The Verdict: We are paying 10x more for customers in our "high-spend" campaign than in our tests. Most of this waste is concentrated in the Female 45-49 demographic.

The math proves Campaign 1178 is an objective failure compared to the smaller, more efficient targets.

### 📂 How to use this repo
* [**/SQL**](./sql): BigQuery transformation scripts using CTEs and Window Functions.
* [**/Data**](./Data): The three optimized CSVs exported from BigQuery.
* [**/Dashboard**](https://public.tableau.com/app/profile/rotem.ben.moyal/viz/Project_Precision_FB_Campaign_Audit/Dashboard1): View the interactive dashboard on Tableau Public.

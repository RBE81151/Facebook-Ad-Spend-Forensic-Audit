
WITH CampaignPerformance AS (
    SELECT 
        xyz_campaign_id,
        gender,
        age,
        SUM(spent) as total_spent,
        SUM(total_conversion) as leads,
        SUM(approved_conversion) as total_sales,
        SAFE_DIVIDE(SUM(approved_conversion), SUM(total_conversion)) as lead_quality
    FROM `your_project.kaggle_fb_data.raw_ads`
    GROUP BY 1, 2, 3
),

RankedSegments AS (
    SELECT 
        *,
        -- This creates the 'Ranking' field seen in your Tableau screenshot
        RANK() OVER(PARTITION BY xyz_campaign_id ORDER BY lead_quality DESC) as performance_rank,
        -- This identifies the 'MaxQuality' benchmark for each campaign
        MAX(lead_quality) OVER(PARTITION BY xyz_campaign_id) as max_campaign_quality
    FROM CampaignPerformance
)

SELECT 
    *,
    CASE 
        WHEN performance_rank <= 3 THEN 'TOP PERFORMER'
        ELSE 'OPTIMIZE'
    END as performance_label
FROM RankedSegments
ORDER BY xyz_campaign_id, performance_rank;

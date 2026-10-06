-- Retail Marketing Analytics Database
-- Five business questions for the Chief Marketing Officer
-- Author: Nouviboth Ra

-- 1. Click-through rate (CTR) by social media platform
SELECT
    a.Platform_Name,
    COUNT(ua.Interaction_ID) AS Total_Interactions,
    SUM(CASE WHEN ua.Interaction_Type = 'Click' THEN 1 ELSE 0 END) AS Total_Clicks,
    ROUND(100.0 * SUM(CASE WHEN ua.Interaction_Type = 'Click' THEN 1 ELSE 0 END)
          / COUNT(ua.Interaction_ID), 2) AS CTR_Percent
FROM ADVERTISEMENT a
JOIN USER_ADVERTISEMENT ua ON a.Ads_ID = ua.Ads_ID
GROUP BY a.Platform_Name
ORDER BY CTR_Percent DESC;

-- 2. Revenue and ROI per campaign
--    (completed orders by users who interacted with the campaign's ads during the campaign)
SELECT
    c.Campaign_Name,
    c.Budget,
    COUNT(DISTINCT uo.Order_ID) AS Orders_Placed,
    ROUND(SUM(uo.Order_Total), 2) AS Total_Revenue,
    ROUND(SUM(uo.Order_Total) / c.Budget * 100, 2) AS ROI_Percent
FROM CAMPAIGN c
JOIN ADVERTISEMENT a       ON c.Campaign_ID = a.Campaign_ID
JOIN USER_ADVERTISEMENT ua ON a.Ads_ID = ua.Ads_ID
JOIN USER_ORDER uo         ON ua.UID = uo.UID
                          AND uo.Order_Date BETWEEN c.Start_Date AND c.End_Date
WHERE uo.Order_Status = 'Completed'
GROUP BY c.Campaign_ID, c.Campaign_Name, c.Budget
ORDER BY Total_Revenue DESC;

-- 3. Top-selling products by category during EOFY (June 2024)
SELECT
    pc.Category_Name,
    p.SKU,
    p.Product_Name,
    SUM(op.Quantity) AS Units_Sold,
    ROUND(SUM(op.Quantity * op.Unit_Price), 2) AS Revenue,
    ROUND(SUM(op.Discount_Applied), 2) AS Total_Discounts
FROM PRODUCT p
JOIN PRODUCT_CATEGORY pc ON p.Category_ID = pc.Category_ID
JOIN ORDER_PRODUCT op    ON p.SKU = op.SKU
JOIN USER_ORDER uo       ON op.Order_ID = uo.Order_ID
WHERE uo.Order_Date BETWEEN '2024-06-01' AND '2024-06-30'
  AND uo.Order_Status = 'Completed'
GROUP BY pc.Category_Name, p.SKU, p.Product_Name
ORDER BY Revenue DESC;

-- 4. Ad engagement and click rate by customer segment
SELECT
    ut.Type_Name AS User_Type,
    COUNT(ua.Interaction_ID) AS Total_Interactions,
    SUM(CASE WHEN ua.Interaction_Type = 'Click' THEN 1 ELSE 0 END) AS Clicks,
    ROUND(100.0 * SUM(CASE WHEN ua.Interaction_Type = 'Click' THEN 1 ELSE 0 END)
          / COUNT(ua.Interaction_ID), 2) AS Click_Rate
FROM USER_TYPE ut
JOIN USER u                ON ut.UType_ID = u.UType_ID
JOIN USER_ADVERTISEMENT ua ON u.UID = ua.UID
GROUP BY ut.Type_Name
ORDER BY Click_Rate DESC;

-- 5. Return on ad spend (ROAS) and cost per click (CPC) by advertisement
SELECT
    c.Campaign_Name,
    a.Ads_Name,
    a.Platform_Name,
    SUM(ca.Total_Impressions)          AS Total_Impressions,
    SUM(ca.Total_Clicks)               AS Total_Clicks,
    ROUND(AVG(ca.CTR_Percent), 2)      AS Avg_CTR_Percent,
    SUM(ca.Total_Conversions)          AS Total_Conversions,
    ROUND(SUM(ca.Total_Revenue), 2)    AS Total_Revenue,
    ROUND(SUM(ca.Ad_Spend), 2)         AS Total_Ad_Spend,
    ROUND(AVG(ca.Cost_Per_Click), 2)   AS Avg_CPC,
    ROUND(AVG(ca.Return_On_Ad_Spend), 2) AS Avg_ROAS
FROM CAMPAIGN_ANALYTICS ca
JOIN CAMPAIGN c      ON ca.Campaign_ID = c.Campaign_ID
JOIN ADVERTISEMENT a ON ca.Ads_ID = a.Ads_ID
GROUP BY c.Campaign_Name, a.Ads_Name, a.Platform_Name
ORDER BY Avg_ROAS DESC;

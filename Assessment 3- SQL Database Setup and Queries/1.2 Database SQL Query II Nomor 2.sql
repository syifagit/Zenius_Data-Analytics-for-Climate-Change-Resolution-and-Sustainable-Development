SELECT
    nd."Entity" AS "Type of Disaster",
    MIN(nd."Year") || '-' || (MIN(nd."Year") + 9) AS "Start Year - End Year",
    ROUND(AVG(nd."Number_Of_Reported_Disasters"), 2) AS "Avg Natural Disasters",
    SUM(ed."Total_economic_damage") AS "Total Economic Damage"
FROM
    natural_disaster_events AS nd
FULL OUTER JOIN
    economic_damage AS ed
ON
    nd."Entity" = ed."Entity" AND nd."Year" = ed."Year"
GROUP BY
    "Type of Disaster", FLOOR(nd."Year" / 10)
ORDER BY
    "Type of Disaster", FLOOR(nd."Year" / 10);
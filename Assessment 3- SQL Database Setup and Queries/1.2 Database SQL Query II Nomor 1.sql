SELECT 
    nd."Entity", 
    SUM(nd."Number_Of_Reported_Disasters") AS "Total Reported Disasters",
    SUM(ed."Total_economic_damage") AS "Total Economic Damage"
FROM 
    natural_disaster_events AS nd
FULL OUTER JOIN 
    economic_damage AS ed
ON 
    nd."Entity" = ed."Entity" AND nd."Year" = ed."Year"
GROUP BY 
    nd."Entity";

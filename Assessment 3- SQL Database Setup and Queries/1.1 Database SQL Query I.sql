SELECT nd."Entity", 
	   nd."Code", 
	   nd."Year", 
	   nd."Number_Of_Reported_Disasters" AS "Number of Reported Disasters", 
	   ed."Total_economic_damage" AS "Total Economic Damage"
FROM natural_disaster_events AS nd
FULL OUTER JOIN economic_damage AS ed
ON nd."Entity" = ed."Entity" 
   AND nd."Year" = ed."Year";

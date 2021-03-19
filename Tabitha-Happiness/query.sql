SELECT * FROM happiness;
SELECT * FROM suicide;
SELECT * FROM human_development;

-- comparing happiness score to suicide number and gross domestic income per capita for each country
SELECT 
	happiness.country, 
	happiness.happiness_score, 
	suicide.suicides_no, 
	human_development.gni_per_capita
FROM happiness
JOIN suicide ON happiness.country = suicide.country
JOIN human_development ON suicide.country = human_development.country
ORDER BY country;
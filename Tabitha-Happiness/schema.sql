-- happiness table

CREATE TABLE happiness (
	country VARCHAR PRIMARY KEY,
	happiness INT,
	happiness_score INT,
	gdp_per_capita INTEGER,
	life_expectancy INTEGER,
	freedom INTEGER,
	generosity INTEGER,
	dystopia_residual INTEGER
);

SELECT * FROM happiness;

-- suicide table

CREATE TABLE suicide (
	country TEXT PRIMARY KEY,
	gdp_for_year VARCHAR,
	gdp_per_capita INT,
	suicides_no INT,
	population INT
);

SELECT * FROM suicide, happiness;

SELECT
	country,
	gdp_for_year,
	suicides_no,
	population,
	happiness,
	happiness_score,
	life_expectancy,
	freedom,
	generosity,
	dystopia_residual
FROM
	happiness
INNER JOIN suicide USING(country);

-- human development table



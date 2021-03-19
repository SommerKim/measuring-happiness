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

SELECT * FROM suicide;

-- human development table

CREATE TABLE human_development (
	country VARCHAR PRIMARY KEY,
	hdi_rank INT,
	hdi INT,
	life_expectancy INT,
	expected_yrs_education INT,
	mean_yrs_edu INT,
	gni_per_capita VARCHAR,
	gni_per_capita_minus_hdi INT
);

SELECT * FROM human_development;

-- joining tables together

SELECT * FROM happiness, suicide, human_development;

SELECT
	happiness.country,
	happiness.happiness,
	happiness.happiness_score,
	happiness.gdp_per_capita,
	happiness.life_expectancy,
	happiness.freedom,
	happiness.generosity,
	happiness.dystopia_residual,
	suicide.gdp_for_year,
	suicide.gdp_per_capita,
	suicide.suicides_no,
	suicide.population,
	human_development.hdi_rank,
	human_development.hdi,
	human_development.life_expectancy,
	human_development.expected_yrs_education,
	human_development.mean_yrs_edu,
	human_development.gni_per_capita,
	human_development.gni_per_capita_minus_hdi
FROM
	happiness
INNER JOIN suicide 
    ON suicide.country = happiness.country
INNER JOIN human_development 
    ON suicide.country = human_development.country
ORDER BY country;
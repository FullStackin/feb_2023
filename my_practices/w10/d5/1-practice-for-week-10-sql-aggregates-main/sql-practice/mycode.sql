SELECT COUNT(*) FROM cats;

SELECT MIN(birth_year), birth_year FROM cats;

SELECT MAX(birth_year), * FROM cats;

-- SELECT * FROM cats
-- WHERE MIN(birth_year) < 2015;

SELECT COUNT(cat_id), cats.name FROM toys
JOIN cats ON (toys.cat_id = cats.id)
GROUP BY cat_id
HAVING COUNT(cat_id) >= 2;

-- I wanted to do WHERE birth_year IN ( Min(), Max() )

SELECT cats.name FROM cats
WHERE birth_year IN (
    (SELECT MIN(birth_year) FROM cats), 
    (SELECT MAX(birth_year) FROM cats)
);
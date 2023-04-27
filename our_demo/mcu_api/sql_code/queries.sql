-- SELECT * FROM characters;

-- SELECT name, alias 
-- FROM characters;

-- SELECT * FROM characters
-- WHERE popularity >= 80;

-- SELECT * FROM characters
-- WHERE name = 'Groot';

-- SELECT * FROM characters
-- WHERE affiliation = 'Avengers';

-- SELECT * FROM characters
-- WHERE affiliation = 'Avengers' OR popularity >= 80;

-- DELETE FROM characters
-- WHERE popularity < 35;

-- UPDATE characters
-- SET name = 'Robbie Reyes'
-- WHERE id = 9;

-- UPDATE characters
-- SET age = age + 100
-- WHERE name = 'Mantis';

-- w10d4

-- SELECT * FROM characters
-- WHERE popularity BETWEEN 35 AND 80;
-- -- WHERE popularity >= 35 AND popularity <= 80;

-- SELECT * FROM characters
-- WHERE affiliation_id IN (3, 4);
-- -- WHERE affiliation_id = 3 OR affiliation_id = 4;

-- SELECT * FROM characters
-- WHERE name IN ('Peter Parker', 'Matt Murdock');

-- SELECT * FROM abilities
-- WHERE effect LIKE '%THOUGHTS';

-- SELECT * FROM characters
-- ORDER BY alias ASC;

-- SELECT * FROM characters
-- ORDER BY affiliation_id DESC, name DESC;

-- SELECT * FROM characters
-- LIMIT 3;

-- SELECT * FROM characters
-- LIMIT 3
-- OFFSET 3;

SELECT * FROM affiliations
JOIN characters ON (affiliations.id = characters.affiliation_id)
WHERE affiliations.name = 'Guardians of the Galaxy';

SELECT * FROM character_abilities
JOIN abilities ON (abilities.id = character_abilities.ability_id)
JOIN characters ON (characters.id = character_abilities.character_id)
WHERE characters.name = 'Matt Murdock';
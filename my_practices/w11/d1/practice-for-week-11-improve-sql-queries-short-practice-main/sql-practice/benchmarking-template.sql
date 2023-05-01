----------
-- Step 0 - Create a Query 
----------
-- Query:  

SELECT * FROM cats 
JOIN cat_toys ON (cats.id = cat_toys.cat_id)
WHERE cat_toys.toy_id = 5;

-- Paste your results below (as a comment):





----------
-- Step 1 - Analyze the Query
----------
-- Query:
EXPLAIN QUERY PLAN
SELECT * FROM cats 
JOIN cat_toys ON (cats.id = cat_toys.cat_id)
WHERE cat_toys.toy_id = 5;


-- Paste your results below (as a comment):

-- avg: .000200?

-- What do your results mean?

    -- Was this a SEARCH or SCAN?



    -- What does that mean?





----------
-- Step 2 - Time the Query to get a baseline
----------
-- Query (to be used in the sqlite CLI):

CREATE INDEX idx_cat_toys_toy_id ON cat_toys(toy_id);

-- Paste your results below (as a comment):

-- avg: ~.000125?



----------
-- Step 3 - Add an index and analyze how the query is executing
----------

-- Create index:



-- Analyze Query:


-- Paste your results below (as a comment):



-- Analyze Results:

    -- Is the new index being applied in this query?





----------
-- Step 4 - Re-time the query using the new index
----------
-- Query (to be used in the sqlite CLI):



-- Paste your results below (as a comment):



-- Analyze Results:
    -- Are you still getting the correct query results?



    -- Did the execution time improve (decrease)?

   

    -- Do you see any other opportunities for making this query more efficient?



---------------------------------
-- Notes From Further Exploration
---------------------------------
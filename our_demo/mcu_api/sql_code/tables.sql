PRAGMA foreign_keys = ON;
DROP TABLE IF EXISTS character_abilities;
DROP TABLE IF EXISTS abilities;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS affiliations;

CREATE TABLE affiliations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    base_location VARCHAR,
    is_good BOOLEAN 
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE,
    age INTEGER,
    powered BOOLEAN DEFAULT 0,
    alias VARCHAR,
    popularity FLOAT(4, 2), -- 50.67, 506.7
    -- affiliation_id INTEGER,
    -- FOREIGN KEY (affiliation_id) REFERENCES affiliations(id)
    affiliation_id INTEGER REFERENCES affiliations(id) ON DELETE SET NULL
);

CREATE TABLE abilities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR NOT NULL,
    effect TEXT NOT NULL
);

CREATE TABLE character_abilities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character_id INTEGER REFERENCES characters(id) ON DELETE CASCADE,
    ability_id INTEGER REFERENCES abilities(id) ON DELETE CASCADE
);
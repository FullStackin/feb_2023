INSERT INTO affiliations (name, base_location, is_good)
VALUES
('Guardians of the Galaxy', 'The Benatar', true),
('Defenders', 'Sanctum Sanctorum', true),
('Avengers', 'Avengers Tower', true),
('X-Men', 'Xavier''s School for Gifted Youngsters', true),
('S.H.E.I.L.D.', 'Triskellion', null);

INSERT INTO characters (name, age, affiliation_id, powered, alias, popularity)
VALUES
('Matt Murdock', 35, 2, 1, 'Daredevil', 85.63),
('Mantis', 32, 1, TRUE, 'Gross Bug Lady', 15),
('Groot', 18, 1, TRUE, 'Groot', 75),
('Peter Parker', 18, 3, 1, 'Spider-Man', 4.8),
('Logan', 60, 4, 1, 'Wolverine', 87.1),
('Wanda Maximoff', 29, 3, 1, 'Scarlet Witch', 80),
('Carol Danvers', 56, 3, 1, 'Captain Marvel', 4.1),
('T''Challa', 35, 3, TRUE, 'Black Panther', 95);

INSERT INTO characters (name, age, powered, alias, popularity)
VALUES
('Johnny Blaze', 23, 1, 'Ghost Rider, Spirit of Vengeance', 0.72);

INSERT INTO characters (name, popularity, affiliation_id)
VALUES
('Phil Coulson', 100, 5);

INSERT INTO abilities (name, effect) 
VALUES
('Healing Factor', 'Fast recovery from severe injuries'),
('Telepathy', 'A way of communicating through thoughts'),
('Penance Stare', 'Induces self-mortification by imposing him or her every negative actions, behavior and sensation, and sins to the pain of others that individual has ever committed in their lifetime.'),
('Super Strength', 'The ability to lift and move massive objects, crush or break through barriers, and engage in hand-to-hand combat with tremendous force.'),
('Mind control', 'The ability to control the thoughts and actions of others. This superpower would give you complete control over anyone you encounter, allowing you to make them do whatever you want. You could use this power for good, to help people in need, or for evil, to achieve your own selfish goals.'),
('Enhanced speed and agility', 'Fast and leap far distances');


INSERT INTO character_abilities (character_id, ability_id)
VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(9, 3),
(10, 3),
(3, 4),
(4, 4),
(5, 4),
(7, 4),
(8, 4),
(9, 4),
(2, 5),
(6, 5),
(1, 6),
(4, 6),
(8, 6);
CREATE TABLE friends(
    id INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT);


INSERT INTO friends VALUES(1, 'Justin', 'Seoul');
INSERT INTO friends VALUES(2, 'Simon', 'NewYork');
INSERT INTO friends VALUES(3, 'Chang', 'LasVegs');
INSERT INTO friends VALUES(4, 'John', 'Sydney');


ALTER TABLE friends ADD COLUMN married INTEGER NOT NULL DEFAULT 1;

UPDATE friends SET location='LA' WHERE id=1;
UPDATE friends SET married=0 WHERE id=2;
UPDATE friends SET married=0 WHERE id=3;

SELECT * FROM friends;

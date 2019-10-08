CREATE TABLE bands(
    id INTEGER PRIMARY KEY,
    name TEXT,
    debut INTEGER);

.headers on
.mode column

INSERT INTO bands VALUES(1, 'Queen', 1973), (2, 'Coldplay', 1998), (3, 'MCR', 2001);

-- SELECT id, name FROM bands;
-- SELECT name FROM bands WHERE debut<2000;
ALTER TABLE bands ADD COLUMN members INTEGER;

UPDATE bands SET members=4 WHERE id=1;
UPDATE bands SET members=5 WHERE id=2;
UPDATE bands SET members=9 WHERE id=3;

UPDATE bands SET members=5 WHERE id=3;

DELETE FROM bands WHERE id=2;
SELECT * FROM bands;
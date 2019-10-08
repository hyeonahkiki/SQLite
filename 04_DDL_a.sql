CREATE TABLE articles(
    title TEXT NOT NULL,
    content TEXT NOT NULL);

.headers on
.tables
--.read 04_DDL_a.sql



INSERT INTO articles VALUES('1번글', '1번내용');
SELECT * FROM articles;

ALTER TABLE articles RENAME TO news;
.tables

ALTER TABLE news ADD COLUMN created_at DATETIME NOT NULL DEFAULT 1;

DROP TABLE articles;
CREATE SCHEMA IF NOT EXISTS bible;

CREATE TABLE IF NOT EXISTS bible.bible_canons(
    id smallint PRIMARY KEY,
    name varchar(30),
    description text,
    chapters_table varchar(30),
    verses_table varchar(30)
);


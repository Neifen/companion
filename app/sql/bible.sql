CREATE SCHEMA IF NOT EXISTS bible;

CREATE TABLE IF NOT EXISTS bible.bible_canons(
    id smallint PRIMARY KEY,
    name varchar(30),
    description text,
    chapters_table varchar(30),
    verses_table varchar(30)
);

INSERT INTO bible.bible_canons(id, name, description, chapters_table, verses_table)
    VALUES (0, 'Protestant Bible', ' Bible which contains only the 66 books of the Old and New Testaments without the Apocrypha.', 'static.chapters', 'static.verses')
ON CONFLICT
    DO NOTHING;


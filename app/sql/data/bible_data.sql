INSERT INTO bible.bible_canons(id, name, description, chapters_table, verses_table)
    VALUES (0, 'Protestant Bible', ' Bible which contains only the 66 books of the Old and New Testaments without the Apocrypha.', 'static.chapters', 'static.verses')
ON CONFLICT
    DO NOTHING;


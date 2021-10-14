CREATE TABLE IF NOT EXISTS words(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content VARCHAR(45) UNIQUE,
    pronunciation TEXT
);

CREATE TABLE IF NOT EXISTS definitions(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    definition TEXT,
    word_ref INTEGER NOT NULL,
    word_type INTEGER NOT NULL,
    FOREIGN KEY(word_ref) REFERENCES words(id)
);

CREATE TABLE IF NOT EXISTS definition_examples(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    english TEXT,
    vietnamese TEXT,
    definition_ref INTEGER NOT NULL,
    FOREIGN KEY(definition_ref) REFERENCES definitions(id)
);

CREATE TABLE IF NOT EXISTS definition_relations(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_end INTEGER,
    second_end INTEGER
);

CREATE TABLE IF NOT EXISTS agreements(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    agreement VARCHAR(15),
    content INTEGER
);
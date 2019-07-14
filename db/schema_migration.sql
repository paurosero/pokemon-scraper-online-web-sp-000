-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.

CREATE TABLE IF NOT EXISTS pokemon (
  id INTEGER PRIMARY KEY,
  name TEXT,
  type TEXT
);

ALTER TABLE pokemon ADD hp INTEGER NOT NULL DEFAULT(60);

-- delete the 'urls' table if it already exists
DROP TABLE IF EXISTS urls;

-- table of url id, when the shortened url was created, the original url, the number of times the url was clicked
-- id to get original url from hash string
CREATE TABLE urls (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    original_url TEXT NOT NULL,
    clicks INTEGER NOT NULL DEFAULT 0
);
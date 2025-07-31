
CREATE TABLE netflix_titles (
    show_id VARCHAR PRIMARY KEY,
    type VARCHAR,
    title TEXT,
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added DATE,
    release_year INT,
    rating VARCHAR,
    duration VARCHAR,
    listed_in TEXT,
    description TEXT
);

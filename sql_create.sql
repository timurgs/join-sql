CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS performer (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_performer (
    genre_id INTEGER REFERENCES genre(id),
    performer_id INTEGER REFERENCES performer(id),
    CONSTRAINT pk_genreperformer PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS album (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    year_of_issue INTEGER NOT NULL CHECK(year_of_issue > 0)
);

CREATE TABLE IF NOT EXISTS performer_album (
    performer_id INTEGER REFERENCES performer(id),
    album_id INTEGER REFERENCES album(id),
    CONSTRAINT pk_performeralbum PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS song (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER REFERENCES album(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    year_of_issue INTEGER NOT NULL CHECK(year_of_issue > 0)
);

CREATE TABLE IF NOT EXISTS collection_song (
    song_id INTEGER REFERENCES song(id),
    collection_id INTEGER REFERENCES collection(id),
    CONSTRAINT pk_collectionsong PRIMARY KEY (song_id, collection_id)
);

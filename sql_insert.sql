INSERT INTO genre(name) VALUES ('Pop'), ('Jazz'), ('Rock and roll'), ('Blues'), ('Electro');

INSERT INTO performer(name) VALUES ('The Beatles'), ('Michael Jackson'), ('Miles Davis'), ('Louis Armstrong'), ('Elvis Presley'), ('Chuck Berry'), ('Bob Dylan'), ('DaftPunk');

INSERT INTO genre_performer VALUES (1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (5, 8), (3, 1), (4, 5), (4, 6);

INSERT INTO album(name, year_of_issue) VALUES ('Abbey Road', 1969), ('Off the Wall', 1979), ('Kind of Blue', 1959), ('What A Wonderful World', 1967), ('Blue Hawaii', 1961), ('Berry Is On Top', 1959), ('The Freewheelin Bob Dylan', 1963), ('Discovery', 2019);

INSERT INTO performer_album VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (3, 4);

INSERT INTO song(name, duration, album_id) VALUES ('Something = Algo', 183, 1), ('Polythene Pam', 73, 1), ('Rock with You', 220, 2), ('Get on the Floor', 284, 2), ('So What', 567, 3), ('Freddie Freeloader', 585, 3), ('What A Wonderful my World', 136, 4), ('Cabaret', 164, 4), ('Blue Hawaii', 155, 5), ('Almost Grown', 142, 6), ('Carol', 141, 6), ('Blowin'' in the Wind', 263, 7), ('Girl From the North Country', 200, 7), ('One More Time', 320, 8), ('Aerodynamic', 270, 8);

INSERT INTO collection(name, year_of_issue) VALUES ('Long songs', 2002), ('Old songs', 2010), ('Hits of the 70''s and 80''s', 2000), ('Jazz songs', 1991), ('Songs of the 2000s', 2020), ('Different', 2005), ('Pop songs', 2018), ('Songs from the 50s', 2000);

INSERT INTO collection_song VALUES (5, 1), (6, 1), (5, 2), (6, 2), (9, 2), (10, 2), (11, 2), (3, 3), (4, 3), (5, 4), (6, 4), (7, 4), (8, 4), (14, 5), (15, 5), (13, 6), (4, 6), (7, 6), (1, 7), (2, 7), (3, 7), (4, 7), (5, 8), (6, 8), (10, 8), (11, 8);
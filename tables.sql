CREATE TABLE users(ID INTEGER PRIMARY KEY, username TEXT, password TEXT, birthday DATE);

INSERT INTO users VALUES (1, "Max25","redacted", 2001-04-08);

SELECT * FROM users

CREATE TABLE friends(Follower ID # INTEGER PRIMARY KEY, followerName TEXT);

INSERT INTO friends VALUES (2, "SanjoBanjo");

SELECT * FROM friends

CREATE TABLE userMovies(movieName TEXT, rating TEXT, comment TEXT);

INSERT INTO userMovies VALUES ("Shrek", "like", "Entertaining throughout");

SELECT * FROM userMovies

CREATE TABLE playlists(movieName TEXT);

INSERT INTO playlists VALUES ("Shrek");

SELECT * FROM playlists

CREATE TABLE movies(movieName TEXT, length_in_minutes INTEGER, genre TEXT, rating TEXT);

INSERT INTO movies VALUES ("Shrek", 90, "Fantasy, Adventure, Comedy, Animated", "Like");

SELECT * FROM movies
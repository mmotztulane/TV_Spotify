CREATE TABLE users(username TEXT, password TEXT, name TEXT, birthday DATE);

CREATE TABLE user(follower INTEGER, followerName TEXT, following INTEGER, followingName TEXT);

CREATE TABLE userMovies(movieName TEXT, rating TEXT, comment TEXT);

CREATE TABLE playlists(movie object);

CREATE TABLE movie(movieName TEXT, length INTEGER, genre TEXT, rating TEXT);
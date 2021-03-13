DROP SCHEMA IF EXISTS info_team01_schema;

CREATE SCHEMA info_team01_schema;

USE info_team01_schema;



CREATE TABLE artist (
    id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

CREATE TABLE album (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    id_artist INT NOT NULL,
    duration INT NOT NULL,
    year INT,
    cover blob,
    FOREIGN KEY (id_artist) REFERENCES artist (id)
);

CREATE TABLE genre (
    id INT PRIMARY KEY,
    descr ENUM ('pop','house','jazz','metal', 'classical') NOT NULL
);

CREATE TABLE song (
    id INT PRIMARY KEY,
    title INT NOT NULL,
    year INT,
    duration INT,
    rate_top BOOLEAN,
    id_genre INT,
    FOREIGN KEY (id_genre) REFERENCES genre (id)
);

CREATE TABLE has (
	id_song INT,
    id_artist INT,
    id_album INT,
    PRIMARY KEY (id_song, id_artist, id_album),
    FOREIGN KEY (id_song) REFERENCES song (id),
	FOREIGN KEY (id_artist) REFERENCES artist (id),
    FOREIGN KEY (id_album) REFERENCES album (id)
);

CREATE TABLE playlist (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    Nsongs INT
);

CREATE TABLE contain (
	id_song INT,
    id_playlist INT,
    PRIMARY KEY (id_song, id_playlist),
    FOREIGN KEY (id_song) REFERENCES song (id),
	FOREIGN KEY (id_playlist) REFERENCES playlist (id)
);

CREATE TABLE roles (
    id INT PRIMARY KEY,
    type ENUM ('customer','admin','admin_music') NOT NULL
);

CREATE TABLE users (
    id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birth_year INT NOT NULL,
    birth_month INT NOT NULL,
    birth_day INT NOT NULL,
    gender VARCHAR(6) NOT NULL,
    country VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    street_number VARCHAR(255) NOT NULL,
    CAP INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    psw VARCHAR(255) NOT NULL,
	facebook_id VARCHAR(17),
	apple_id VARCHAR(17),
	gmail_id VARCHAR(17),
    id_role INT,
    FOREIGN KEY (id_role) REFERENCES roles (id)
);

CREATE TABLE listen_to (
	id_user INT,
    id_playlist INT,
    PRIMARY KEY (id_user, id_playlist),
    FOREIGN KEY (id_user) REFERENCES users (id),
	FOREIGN KEY (id_playlist) REFERENCES playlist (id)
);

CREATE TABLE likes (
	id_user INT,
    id_genre INT,
    PRIMARY KEY (id_user, id_genre),
    FOREIGN KEY (id_user) REFERENCES users (id),
	FOREIGN KEY (id_genre) REFERENCES genre (id)
);
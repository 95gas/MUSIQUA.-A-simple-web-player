DROP SCHEMA IF EXISTS info_team01_schema;

CREATE SCHEMA info_team01_schema;

USE info_team01_schema;



CREATE TABLE artist (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255) NOT NULL
);

INSERT INTO artist (full_name)
VALUES ('Eminem'),('Madonna'),('Stromae'),('Tiziano Ferro'),('Blink 182'),('AD-DC'),('Oasis'),('OneRepublic'),('Ne-Yo'),('Coldplay');

CREATE TABLE album (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    id_artist INT NOT NULL,
    duration FLOAT NOT NULL,
    year INT,
    cover blob,
    FOREIGN KEY (id_artist) REFERENCES artist (id)
);

INSERT INTO album (title, id_artist, duration, year, cover)
VALUES 
('The start', 2,43.32,2004, null),
('The end', 3,34.36,2004, null),
('Hello', 5,52.31,2007, null),
('Paradise', 7,63.32,2004, null),
('The hell', 2,21.36,2004, null),
('Broken heart', 9,12.30,2017, null);

CREATE TABLE genre (
    id INT PRIMARY KEY auto_increment,
    descr ENUM ('pop','house','jazz','metal', 'classical') NOT NULL
);

INSERT INTO genre (descr)
VALUES ('pop'),('house'),('jazz'),('metal'),('classical');

CREATE TABLE song (
    id INT PRIMARY KEY auto_increment,
    title VARCHAR(255) NOT NULL,
    year INT,
    duration INT,
    rate_top BOOLEAN,
    id_genre INT,
    FOREIGN KEY (id_genre) REFERENCES genre (id)
);

INSERT INTO song (title, year, duration, rate_top, id_genre)
VALUES ('Litte madness', '2004', 3.2,TRUE, 3),
('What is my age again?', '1990', 3.2,FALSE, 4),
('takeaway', '2004', 3.2,TRUE, 3),
('Closer-To-You', '2004', 3.2,TRUE, 3),
('Good life', '2004', 3.2,TRUE, 3),
('Litte madness2', '2004', 3.2,FALSE, 3),
('Ciao', '1990', 3.2,FALSE, 4),
('takeaway2', '2004', 3.2,TRUE, 3),
('Closer-To-You3', '2004', 3.2,TRUE, 3),
('Good life6', '2004', 3.2,TRUE, 3);

CREATE TABLE has (
	id_song INT,
    id_artist INT,
    id_album INT,
    PRIMARY KEY (id_song, id_artist, id_album),
    FOREIGN KEY (id_song) REFERENCES song (id) ON DELETE CASCADE,
	FOREIGN KEY (id_artist) REFERENCES artist (id) ON DELETE CASCADE,
    FOREIGN KEY (id_album) REFERENCES album (id) ON DELETE CASCADE
);

INSERT INTO has(id_song,id_artist,id_album)
VALUES (2,3,5),(1,2,6),(3,6,1),(3,3,5),(5,3,5);

CREATE TABLE playlist (
    id INT PRIMARY KEY auto_increment,
    title VARCHAR(255) NOT NULL
);

INSERT INTO playlist (title)
VALUES ('Myplaylist1'), ('Myplaylist2'), ('Myplaylist3'), ('Myplaylist4'), ('Myplaylist5'), ('Myplaylist6'), ('Myplaylist8');

CREATE TABLE contain (
	id_song INT,
    id_playlist INT,
    PRIMARY KEY (id_song, id_playlist),
    FOREIGN KEY (id_song) REFERENCES song (id),
	FOREIGN KEY (id_playlist) REFERENCES playlist (id)
);

CREATE TABLE roles (
    id INT PRIMARY KEY auto_increment,
    type ENUM ('customer','admin','admin_music') NOT NULL
);

INSERT INTO roles (type)
VALUES ('customer'), ('admin'), ('admin_music');

CREATE TABLE users (
    id INT PRIMARY KEY auto_increment,
    username VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birth_year INT NOT NULL,
    birth_month INT NOT NULL,
    birth_day INT NOT NULL,
    gender VARCHAR(6),
    country VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    street_number VARCHAR(255) NOT NULL,
    postal_code INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    psw VARCHAR(255) NOT NULL,
	facebook_id VARCHAR(17),
	apple_id VARCHAR(17),
	gmail_id VARCHAR(17),
    id_role INT NOT NULL,
    FOREIGN KEY (id_role) REFERENCES roles (id)
);
INSERT INTO users (username, first_name, last_name, birth_year, birth_month, birth_day, gender, country, city, street, street_number, postal_code, email, psw, facebook_id, apple_id, gmail_id, id_role )
VALUES ('95gas1','francesco1','gazzola',1995,08,25,'male','Italy','Padova','street1','23',3204,'client@hotmail.it','test1', NULL, NULL, NULL, 1),
('95gas2','francesco1','gazzola',1995,08,25,'male','Italy','Padova','street1','23',3204,'admin@hotmail.it','test1', NULL, NULL, NULL, 1),
('95gas3','francesco1','gazzola',1995,08,25,'male','Italy','Padova','street1','23',3204,'adminmusic@hotmail.it','test1', NULL, NULL, NULL, 1);


CREATE TABLE listen_to (
	id_user INT,
    id_playlist INT,
    PRIMARY KEY (id_user, id_playlist),
    FOREIGN KEY (id_user) REFERENCES users (id),
	FOREIGN KEY (id_playlist) REFERENCES playlist (id)
);

INSERT INTO listen_to(id_user, id_playlist)
VALUES (1, 2), (1,3),(1,5),(2,5),(2,6),(3,5);

CREATE TABLE likes (
	id_user INT,
    id_genre INT,
    PRIMARY KEY (id_user, id_genre),
    FOREIGN KEY (id_user) REFERENCES users (id),
	FOREIGN KEY (id_genre) REFERENCES genre (id)
);
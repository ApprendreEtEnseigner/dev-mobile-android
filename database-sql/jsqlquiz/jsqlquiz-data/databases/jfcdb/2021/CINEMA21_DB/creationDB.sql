-- La base de données CINEMA21
-- Jean-François Condotta
-- 30/08/2021

DROP TABLE APPARTIENT;
DROP TABLE REALISE;
DROP TABLE REALISATEUR;
DROP TABLE GENRE;
DROP TABLE FILM;

CREATE TABLE FILM (
	id_film INT PRIMARY KEY,
	titre VARCHAR(100) NOT NULL,
	annee_sortie INT NOT NULL,
	duree INT NOT NULL,
	check (annee_sortie>1890),
	check ((duree>0) AND (duree<1000)),
	CHECK(LENGTH(titre)>0),
	UNIQUE(titre)
);

CREATE TABLE GENRE (
	id_genre INT,
	nom_genre VARCHAR(100),
	PRIMARY KEY (id_genre),
	UNIQUE(nom_genre),
	CHECK(LENGTH(nom_genre)>0)
);

CREATE TABLE APPARTIENT (
	id_film INT,
	id_genre INT,
	PRIMARY KEY (id_film,id_genre),
	FOREIGN KEY (id_film) REFERENCES FILM(id_film),
	FOREIGN KEY (id_genre) REFERENCES GENRE(id_genre)
);

CREATE TABLE REALISATEUR (
	id_real INT PRIMARY KEY,
	prenom VARCHAR(100) NOT NULL,
	nom VARCHAR(100) NOT NULL,
	annee_n INT,
	ville_n VARCHAR(100),
	pays_n VARCHAR(100),
	CHECK(annee_n>1900),
	CHECK(LENGTH(prenom)>0),
	CHECK(LENGTH(nom)>0),
	CHECK(LENGTH(ville_n)>0),
	CHECK(LENGTH(pays_n)>0),
	UNIQUE(prenom,nom)
);

CREATE TABLE REALISE (
	id_film INT,
	id_real INT,
	PRIMARY KEY (id_film,id_real),
	FOREIGN KEY (id_film) REFERENCES FILM(id_film),
	FOREIGN KEY (id_real) REFERENCES REALISATEUR(id_real)
);
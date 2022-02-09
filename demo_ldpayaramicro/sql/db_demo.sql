/* Création d'une base de donnée de démo */
CREATE DATABASE IF NOT EXISTS db_demo;

USE db_demo;

/* Création d'une table user */
CREATE TABLE IF NOT EXISTS user
(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    login VARCHAR(255) NULL,
    nom VARCHAR(255) NULL,
    prenom VARCHAR(255) NULL,
    email VARCHAR(255) NULL,
    date_naissance DATETIME NULL,
    ville VARCHAR(255) NULL,
    code_postal VARCHAR(255) NULL,
    pays VARCHAR(255) NULL
) ENGINE=InnoDB;

/* Insertion de données dans la base de donnée user */
INSERT INTO user
VALUES
(1, "user_1", "Pierre", "Georges", "pierre.georges@demo.com", "1990-01-01 08:00:00", "Paris", "75001", "France"),
(2, "user_2", "Richard", "Peluche", "richard.peluche@demo.com", "1991-01-01 08:00:00", "Paris", "75002", "France"),
(3, "user_3", "Bob", "Laviande", "bob.laviande@demo.com", "1992-01-01 08:00:00", "Paris", "75003", "France"),
(4, "user_4", "Claire", "Lamanche", "claire.lamanche@demo.com", "1993-01-01 08:00:00", "Paris", "75004", "France"),
(5, "user_5", "Marge", "Delarue", "marge.delarue@demo.com", "1994-01-01 08:00:00", "Paris", "75005", "France"),
(6, "user_6", "Claude", "Dupont", "claude.dupont@demo.com", "1995-01-01 08:00:00", "Paris", "75006", "France"),
(7, "user_7", "Tina", "St Tropez", "tina.st-tropez@demo.com", "1996-01-01 08:00:00", "Paris", "75007", "France"),
(8, "user_8", "Jimmy", "Billy", "jimmy.billy@demo.com", "1997-01-01 08:00:00", "Paris", "75008", "France"),
(9, "user_9", "Marie", "Dupuis", "marie.Dupuis@demo.com", "1998-01-01 08:00:00", "Paris", "75009", "France"),
(10, "user_10", "Jean", "Leconnu", "jean.leconnu@demo.com", "1999-01-01 08:00:00", "Paris", "75010", "France"),
(11, "user_11", "Bruce", "Lee", "bruce.lee@demo.com", "2000-01-01 08:00:00", "Paris", "75011", "France");
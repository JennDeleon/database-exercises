CREATE TABLE albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(50) NOT NULL,
    name         VARCHAR(50) DEFAULT "NONE",
    release_date INT UNSIGNED DEFAULT 0,
    sales        FLOAT UNSIGNED DEFAULT 0.0,
    genre        VARCHAR(50) DEFAULT "NONE",
    PRIMARY KEY (id)
);
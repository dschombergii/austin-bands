DROP TABLE IF EXISTS bands, socials, music, videos, members;

CREATE TABLE bands (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  active TINYINT NOT NULL,
  year_start INT NOT NULL,
  year_end INT,
  bio TEXT(500),
  genre VARCHAR(40),
  image_url VARCHAR(255),
  music_embed VARCHAR(255),
  website VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE socials (
  band_id INT NOT NULL,
  facebook VARCHAR(255),
  instagram VARCHAR(255),
  twitter VARCHAR(255),
  FOREIGN KEY(band_id)
  REFERENCES bands (id)
);

CREATE TABLE music (
  band_id INT NOT NULL,
  bandcamp VARCHAR(255),
  soundcloud VARCHAR(255),
  spotify VARCHAR(255),
  apple_music VARCHAR(255),
  FOREIGN KEY(band_id)
  REFERENCES bands (id)
);

CREATE TABLE videos (
  band_id INT NOT NULL,
  youtube VARCHAR(255),
  vimeo VARCHAR(255),
  FOREIGN KEY(band_id)
  REFERENCES bands (id)
);

CREATE TABLE members (
  band_id INT NOT NULL,
  member_name VARCHAR(50),
  insturment VARCHAR(50),
  FOREIGN KEY(band_id)
  REFERENCES bands (id)
);



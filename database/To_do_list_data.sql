DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS to_do;
DROP TABLE IF EXISTS usr_info;

CREATE TABLE category (
  cat_id INTEGER PRIMARY KEY,
  cat_name VARCHAR NOT NULL
);

CREATE TABLE to_do (
  toDO_id INTEGER PRIMARY KEY AUTOINCREMENT,
  toDO_description VARCHAR NOT NULL,
  toDO_priority VARCHAR NOT NULL,
  toDO_deadline DATE,
  toDo_isCompleted BIT NOT NULL DEFAULT 0,
  cat_id INTEGER REFERENCES category NOT NULL,
  usr_id INTEGER REFERENCES usr_info NOT NULL
);

CREATE TABLE usr_info (
  usr_id INTEGER PRIMARY KEY AUTOINCREMENT,
  usr_name VARCHAR NOT NULL,
  usr_username VARCHAR NOT NULL,
  usr_password VARCHAR NOT NULL,
  usr_age Integer NOT NULL,
  usr_email VARCHAR NOT NULL,
  usr_photo VARCHAR( 100 ) NOT NULL
);

INSERT INTO category VALUES (1, 'Finances');
INSERT INTO category VALUES (2, 'Job');
INSERT INTO category VALUES (3, 'Personal Projects ');
INSERT INTO category VALUES (4, 'Sport');
INSERT INTO category VALUES (5, 'Tasks');
INSERT INTO category VALUES (6, 'Free time');
INSERT INTO category VALUES (7, 'Others');

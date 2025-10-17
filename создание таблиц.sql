DROP TABLE awards;
DROP TABLE dogs;
DROP TABLE owners;
DROP TABLE breeds;

CREATE TABLE owners(
	owner_id INTEGER PRIMARY KEY,
	FIO VARCHAR(30) NOT NULL,
	address VARCHAR(40) NOT NULL,
	phone CHAR(12) NOT NULL
);

CREATE TABLE breeds(
	breed_name VARCHAR(30) PRIMARY KEY,
	breed_group VARCHAR(30) NOT NULL
);

CREATE TABLE dogs(
	id INTEGER PRIMARY KEY,
	nickname VARCHAR(30) NOT NULL,
	dog_owner INTEGER REFERENCES owners(owner_id),
	birthday DATE NOT NULL,
	sex INTEGER NOT NULL,
	breed VARCHAR(30) REFERENCES breeds(breed_name),
	father INTEGER REFERENCES dogs(id),
	mother INTEGER REFERENCES dogs(id),
	description VARCHAR(100),
	deathday DATE
);

CREATE TABLE awards(
	dog INTEGER REFERENCES dogs(id),
	award VARCHAR(30) NOT NULL,
	date_of_receipt DATE NOT NULL
)
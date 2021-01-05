CREATE TABLE pokemon (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL UNIQUE,
	type TEXT,
	total INTEGER,
	hp INTEGER,
	attack INTEGER,
	defense INTEGER,
	special_atk INTEGER,
	special_def INTEGER,
	speed INTEGER
);

CREATE TABLE pokemon_moves (
	
	id INTEGER,
	pokemon_id INTEGER,
	level INTEGER NOT NULL,
	move TEXT NOT NULL,
	type TEXT,
	category TEXT,
	power INTEGER ,
	accuracy INTEGER,
	
	PRIMARY KEY (id, pokemon_id),
	FOREIGN KEY (pokemon_id) REFERENCES pokemon (id) ON DELETE CASCADE ON UPDATE NO ACTION
);
CREATE TABLE pokemon (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL UNIQUE,
	total INTEGER,
	hp INTEGER,
	attack INTEGER,
	defense INTEGER,
	special_atk INTEGER,
	special_def INTEGER,
	speed INTEGER
);

CREATE TABLE pokemon_type (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL UNIQUE
);

CREATE TABLE pokemon_pokemon_type(
	id INTEGER,
	pokemon_id INTEGER,
	pokemon_type_id INTEGER,
	
	PRIMARY KEY (id),
	FOREIGN KEY (pokemon_id) REFERENCES pokemon(id) ON DELETE CASCADE ON UPDATE NO ACTION,
	FOREIGN KEY (pokemon_type_id) REFERENCES pokemon_type(id) ON DELETE CASCADE ON UPDATE NO ACTION
	
);

CREATE TABLE move_type (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL UNIQUE
);

CREATE TABLE move_category (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL UNIQUE
	
);

CREATE TABLE move (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL UNIQUE,
	move_type_id INTEGER,
	move_category_id INTEGER,
	power INTEGER ,
	accuracy INTEGER,
	
	FOREIGN KEY (move_type_id) REFERENCES move_type (id) ON DELETE CASCADE ON UPDATE NO ACTION,
	FOREIGN KEY (move_category_id) REFERENCES move_category (id) ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE pokemon_move(
	id INTEGER PRIMARY KEY,
	pokemon_id INTEGER,
	move_id INTEGER,
	level_to_learn INTEGER NOT NULL,
	
	FOREIGN KEY (pokemon_id) REFERENCES pokemon(id) ON DELETE CASCADE ON UPDATE NO ACTION,
	FOREIGN KEY (move_id) REFERENCES move(id) ON DELETE CASCADE ON UPDATE NO ACTION
	
);
/* Create table about the people and what they do here */
CREATE TABLE famous_people (id INTEGER PRIMARY KEY,
    fullname TEXT, birth_year INTEGER);

INSERT INTO famous_people (fullname, birth_year)
VALUES ("G.W.F Hegel", 1770),
("Karl Marx", 1818),
("Friedrich Nietzsche", 1844),
("Michel Foucault", 1926),
("Louis Althusser", 1918)
;

/* Who they influenced */
CREATE TABLE influenced (id INTEGER PRIMARY KEY,
    person_id INTEGER, influenced_id INTEGER);

INSERT INTO influenced (person_id, influenced_id)
VALUES (1, 2),
(1, 3),
(3, 4),
(2, 5)
;

/* What they accomplished */
CREATE TABLE accomplishments (id INTEGER PRIMARY KEY, accomplishment TEXT, person_id INTEGER);

INSERT INTO accomplishments (accomplishment, person_id)
VALUES ("Phenomenology of Spirit", 1),
("Philosophy of Right", 1),
("The Science of Logic", 1),
("Communist Manifesto", 2),
("Das Kapital", 2),
("On the Geneology of Morals", 3),
("Thus Spoke Zarathustra", 3),
("The Order of Things", 4),
("The Archeology of Knowledge", 4),
("On Ideology", 5),
("Reading Capital", 5)
;


SELECT a.fullname, b.fullname FROM influenced
    JOIN famous_people a
    ON influenced.person_id = a.id
    JOIN famous_people b
    ON influenced.influenced_id = b.id;

SELECT famous_people.fullname, accomplishments.accomplishment FROM famous_people 
    JOIN accomplishments
    ON famous_people.id = accomplishments.person_id;

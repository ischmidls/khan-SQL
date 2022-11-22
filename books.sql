/**
Store books in a table
**/

CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER );

INSERT INTO books VALUES (1, "To Kill A Mocking Bird", 5);
INSERT INTO books VALUES (2, "The Great Gatsby", 4);
INSERT INTO books VALUES (3, "Notes From Underground", 4);
SELECT * FROM books;

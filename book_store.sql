/**
Author: Izak Schmidlkofer
Date: 11/22/2022
Description: Books store with book id, title, author, year, and price
**/

CREATE TABLE book_store (id INTEGER PRIMARY KEY, title TEXT, author TEXT, year INTEGER, price INTEGER );

INSERT INTO book_store VALUES (1, "To Kill A Mocking Bird", "Harper Lee", 1960, 12);
INSERT INTO book_store VALUES (2, "The Great Gatsby", "F. Scott Fitzgerald", 1925, 8);
INSERT INTO book_store VALUES (3, "Notes From Underground", "Fyodor Dostoevsky", 1864, 8);
INSERT INTO book_store VALUES (4, "Pride and Prejudice", "Jane Austen", 1813, 12);
INSERT INTO book_store VALUES (5, "Fahrenheit 451", "Ray Bradbury", 1953, 8);

INSERT INTO book_store VALUES (6, "Great Expectations", "Charles Dickens", 1861, 15);
INSERT INTO book_store VALUES (7, "A Tale of Two Cities", "Charles Dickens", 1859, 15);
INSERT INTO book_store VALUES (8, "Romeo and Juliet", "William Shakespeare", 1597, 12);
INSERT INTO book_store VALUES (9, "Macbeth", "William Shakespeare", 1623, 10);
INSERT INTO book_store VALUES (10, "Hamlet", "William Shakespeare", 1601, 10);

INSERT INTO book_store VALUES (11, "Leaves of Grass", "Walt Whitman", 1855, 15);
INSERT INTO book_store VALUES (12, "Phänomenologie des Geistes", "G.W.F. Hegel", 1807, 15);
INSERT INTO book_store VALUES (13, "The Bluest Eye", "Toni Morrison", 1970, 8);
INSERT INTO book_store VALUES (14, "The Invisble Man", "Ralph Ellison", 1952, 12);
INSERT INTO book_store VALUES (15, "The Importance of Being Earnest", "Oscar Wilde", 1895, 10);

SELECT title FROM book_store ORDER BY price;
SELECT AVG(price) from book_store;
/* What does the app's [goodreads.com] SQL look like? */

CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT);

CREATE TABLE friends (id INTEGER PRIMARY KEY, user_id INTEGER, friend_id INTEGER);

CREATE TABLE books (id INTEGER PRIMARY KEY, title INTEGER, year INTEGER, pages INTEGER);

/* Standard shelves CASE read, reading, to read */
CREATE TABLE book_status (id INTEGER PRIMARY KEY, user_id INTEGER, book_id INTEGER, status TEXT);

INSERT INTO users (name, email, password) 
    VALUES ("Izak", "izak@mail.com", "Izak!"),
    ("Jonotan Leondor","jon@email.com","Jon!"),
    ("George Miller","george@email.com","George!"),
    ("Jacques Lacan","jacques@email.com","Jacques!"),
    ("Slavoj Zizek","slavoj@email.com","Slavoj!")
    ;
INSERT INTO friends (user_id, friend_id)
    VALUES (1, 2),
    (1, 3),
    (2, 3),
    (1, 5),
    (4, 5)
    ;
INSERT INTO books (title, year, pages)
    VALUES ("Fahrenheit 451", 1953, 256),
    ("Jane Eyre", 1847, 536),
    ("1984", 1949, 328),
    ("The Great Gatsby", 1925, 208),
    ("Hamlet", 1603, 176)
    ;
INSERT INTO book_status (user_id, book_id, status)
    VALUES (1, 5, "read"),
    (2, 4, "reading"),
    (3, 3, "to read"),
    (4, 2, "read"),
    (5, 1, "reading")
    ;

/* Select user and friend */
SELECT a.name, b.name FROM friends
    JOIN users a
    ON friends.friend_id = a.id
    JOIN users b
    ON friends.user_id = b.id;
/* Select user, book, and status */
SELECT users.name, books.title, book_status.status FROM book_status 
    JOIN users
    ON users.id = book_status.user_id
    JOIN books
    ON books.id = book_status.book_id;

/* Insert friends, books, status */
INSERT INTO users (name, email, password)
    VALUES("Suzzane Collines", "sue@email.com", "Sue!");
INSERT INTO books (title, year, pages)
    VALUES("100 Love Sonnets", 1959, 160);
INSERT INTO friends (user_id, friend_id)
    VALUES (1, 6), (4, 6);
INSERT INTO book_status (user_id, book_id, status)
    VALUES (6, 6, "read"), (2, 6, "reading");

/* Select additional user and friend */
SELECT a.name, b.name FROM friends
    JOIN users a
    ON friends.friend_id = a.id
    JOIN users b
    ON friends.user_id = b.id;
/* Select additional user, book, and status */
SELECT users.name, books.title, book_status.status FROM book_status 
    JOIN users
    ON users.id = book_status.user_id
    JOIN books
    ON books.id = book_status.book_id;

/* Update friends, status */
BEGIN TRANSACTION;
UPDATE friends SET friend_id = 2 WHERE id = 6;
UPDATE book_status SET status = "read" WHERE id = 2;
COMMIT;

/* Select updated user and friend */
SELECT a.name, b.name FROM friends
    JOIN users a
    ON friends.friend_id = a.id
    JOIN users b
    ON friends.user_id = b.id;
/* Select updated user, book, and status */
SELECT users.name, books.title, book_status.status FROM book_status 
    JOIN users
    ON users.id = book_status.user_id
    JOIN books
    ON books.id = book_status.book_id;

/* Update friends, status */
BEGIN TRANSACTION;
DELETE FROM friends WHERE id = 6;
COMMIT;

/* Select deleteed user and friend */
SELECT a.name, b.name FROM friends
    JOIN users a
    ON friends.friend_id = a.id
    JOIN users b
    ON friends.user_id = b.id;
CREATE TABLE IF NOT EXISTS user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 1
);

INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES
(
    "Jhon",
    "Doe",
    "PLaying tennis and watching TV "
),
(
    "Jane",
    "Doe",
    "playing cards and collecting trinkets"
),
(
    "Robert",
    "Martin",
    "are writing and reading books"
);

UPDATE user SET
first_name="Bob"
WHERE id = 1;

DELETE FROM user WHERE id = 3;

SELECT first_name, last_name, hobbies FROM user;

-- # Mini Challenge 1
-- ## Full CRUDS exercise
-- Create the following table, then follow the instructions below:
-- ```
-- CREATE TABLE IF NOT EXISTS user (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     first_name VARCHAR(45),
--     last_name VARCHAR(45),
--     hobbies TEXT,
--     is_online BOOLEAN DEFAULT 1
-- );
-- ```
-- (You should create a sandbox.db file -- sqlite3 sandbox.db )
-- ### Acceptance Criteria
-- 1. Create the following three records:
-- 1.1. John Doe whose hobbies are playing tennis and watching TV
-- 1.2. Jane Doe whose hobbies are playing cards and collecting trinkets
-- 1.3. Robert Martin whose hobbies are writing and reading books
-- 2. Update John Doe's first name to Bob
-- 3. Delete Robert Martin's record completely
-- 4. Produce a report consisting of all records in this order: last_name, first_name, hobbies
-- ## Note
-- Put these SQL statements in a file, execute them, and when you share your screen explain your results.
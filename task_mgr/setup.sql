

-- Create our first database table (task)
CREATE TABLE IF NOT EXISTS task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64),
    summary VARCHAR(128),
    description TEXT,
    is_done BOOLEAN DEFAULT 0
);

-- CRUDS
-- Create some dummy data to test with:
INSERT INTO task (
    name,
    summary,
    description
) VALUES
(
    "Walk the dog",
    "Take fido out for a walk",
    "Fido needs three laps around the park"
),
(
    "Wash the car",
    "Take the car to the car wash",
    "Make sure the car gets waxed and vacummed"
),
(
    "Buy groceries",
    "Go to the supermarket and buy everything on the list",
    "We need milk, eggs, shampoo and toothpaste"
);

-- Read is done through SELECT statements
-- Queries

-- READ (single)
SELECT * FROM task WHERE id=1;

-- SCAN (dumps the entire table)
SELECT * FROM task;

-- UPDATE
UPDATE task SET
name="Walk the cat",
summary="Make sure kitty takes a walk"
WHERE id = 1;

-- DELETE
DELETE FROM task WHERE id = 1;
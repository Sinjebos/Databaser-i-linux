CREATE DATABASE databas2

CREATE TABLE locations (
    id INT PRIMARY KEY AUTOINCREMENT,
    address VARCHAR(200),
    country VARCHAR(200)
);

INSERT INTO locations (address, country)  VALUES ("Country roads 12", "US")
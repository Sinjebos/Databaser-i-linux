CREATE DATABASE bank charset=utf8

CREATE TABLE bank_accounts(
    id INT PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    holding INT
);


INSERT INTO bank_accounts (first_name, last_name, holding) VALUES ("John", "Doe", 1337);
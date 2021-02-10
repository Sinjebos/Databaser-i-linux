CREATE DATABASE inlamning1 charset=utf8

use inlamning1

CREATE TABLE locations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(200),
    country VARCHAR(200)
);
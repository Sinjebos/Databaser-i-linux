CREATE DATABASE inlamning2 charset=utf8

use inlamning2


// lägga in address och land för sedan koppla rätt information till rätt person
CREATE TABLE locations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(200),
    country VARCHAR(200)
);

INSERT INTO locations (address, country)  VALUES ("Brunnsgatan 7", "SE");
INSERT INTO locations (address, country)  VALUES ("Asteroid road 5", "US");
INSERT INTO locations (address, country)  VALUES ("Vimmerbygatan 20", "SE");
INSERT INTO locations (address, country)  VALUES ("Comet road 41", "US");


// table för skapa karaktärer och referera till locations id
Create TABLE bankaccount(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    FOREIGN KEY (id) REFERENCES locations(id)
);


// refererar till bankaccount + locations för koppla ihop namn med address och land
CREATE TABLE combine(
    person1 INT,
    address1 INT,
    FOREIGN KEY (person1) REFERENCES bankaccount(id),
    FOREIGN KEY (address1) REFERENCES locations(id)
);


INSERT INTO combine(person1, address1) VALUES (1, 1);
INSERT INTO combine(person1, address1) VALUES (2, 2);
INSERT INTO combine(person1, address1) VALUES (3, 3);
INSERT INTO combine(person1, address1) VALUES (4, 4);

INSERT INTO bankaccount (first_name, last_name) VALUES ("Corbin", "Hauck");
INSERT INTO bankaccount (first_name, last_name) VALUES ("Vanya", "Worsell");
INSERT INTO bankaccount (first_name, last_name) VALUES ("Eldon", "McCartan");
INSERT INTO bankaccount (first_name, last_name) VALUES ("Ingunna", "Castellucci");

SELECT first_name, last_name, locations.address FROM bankaccount RIGHT JOIN locations ON  bankaccount.id = locations.id;

//

##Frågar efter informationen från person1 och address1 i combine och hämtar respektive information från bankaccount och locations

SELECT person1, first_name, last_name, address1, address FROM combine RIGHT JOIN bankaccount ON bankaccount.id = combine.person1
RIGHT JOIN locations ON locations.id = combine.address1

//

//
## Frågar efter all information från personen genom bankaccount.id = combine.person1 och sedan i vilket land hen bor i via locations.id = combine.address1 WHERE country = "SE"

SELECT first_name, last_name, country FROM combine RIGHT JOIN bankaccount ON bankaccount.id = combine.person1
RIGHT JOIN locations ON locations.id = combine.address1 WHERE country = "SE";

//
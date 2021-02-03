## Frågor 
# Var hittar man log-filerna för databaserna? (MySQL / MariaDB, och MongoDB)

- mysql: /var/log/mysql/
- MongoDB: /var/log/mongodb/mongod.log

# Vad är skillnaden mellan en SQL databas som MySQL / MariaDB och en NoSQL databas som MongoDB?

- SQL är en relationsbaserad och NoSQL är inte. 
- I noSQL kan du skapa dokument utan att definera strukturen medans i SQL så måste du definera ifall de är INT/VARCHAR.

# Vad finns det för likheter mellan databaserna?

- Båda använder sig utav CRUD.

# Fundera, när vill man välja en SQL databas, och när vill man välja en NoSQL databas?

- När man håller på med relationsdatabaser så är SQL to-go
- Om man vill använda sig av programmeringsspråk i en databas så är NoSQL to-go med att det är lättare.
- Om man är i ett livligt projekt som kan förändras med tiden så är NoSQL bra.

# Om du ger en annan part tillgång till din databas, vad är då viktigt att tänka på?

- Att man ger de en egen användare med specifika rättigheter som kanske skapa databaser eller bara rättigheterna till att läsa databaserna utan kunna skapa m.m  

# Vad för typ av information kan vara känsligt / problematiskt att spara in en databas när det kommer till tex GDPR?

- Allmänna personuppgifter som personnummer, för och efternamn och address m.m.  

# Nämn några SQL-databaser, samt några NoSQL-databaser.

- SQL: Oracle, MariaDB
- NoSQL: MongoDB, CouchDB, Amazon DynamoDB

# Om flera företag, organisationer eller personer använder samma databas, varför är det då viktigt att sätta upp separata användare i databasen för dessa parter?

- Om flera företag använder samma databas så är det viktigt att ha olika användare för sekretess material.
- Om samma företag använder samma databas och är på olika projekt så ska inte det ena projektet kunna påverka det andra så det inte kraschar eller förstör för varandra. 

# Vilka delar i CRUD påverkar / gör ändringar i databasen, och vilka delar i CRUD gör inte det?

- Create, Update, Delete alla gör någon typ av ändring i databasen på olika sätt varav Read inte påverkar såvida man bara läser av databasen 

# Hur ansluter man till någon annans databas från terminalen? (Visa både på MySQL och MongoDB)

- mysql -u "User" -p -h  "database" "ip"
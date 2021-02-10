# 1. Vad är motsvarigheten i MongoDB till en foreign key?

db.yourcollection.insert(
    {
        "bla": "bla"
    }
    {
        // här händer mongos motsvarighet till foreign
        $ref: lala
        $id: object(blabla)
    }
)

# 2. Vad är motsvarigheten till en SELECT i MongoDB?
//standard
- db.yourcollection.find()


// för ett finare upplägg
- db.yourcollection.find().pretty()

# 3. Hur hade du löst del 2 och 3 i MongoDB? (du behöver inte göra en komplett lösning, men beskriv på ett ungefär hur du hade gjort)

- se Locations.JSON >>

# 4. Vad behöver du för information för att kunna logga in i någon annans databas?

- Behöver ett username, lösenord (om det används) och en ipaddress+port

# 5. Varför skulle man vilja använda sig utav en databas?

- Databaser kan lagra stora mängder av data i ett ställe och flera användare kan läsa och modifiera data samtidigt samt att man kan söka och sortera.

# 6. Nämn några andra ställen / situationer utöver databaser som CRUD används

- CRUD kan användas i nästan allt när du skapar, läser, redigerar eller tar bort något
- som skapa redigera läsa eller ta bort en fil, ändra/skapa/tabort något på sina socialamedier eller inom programmering 
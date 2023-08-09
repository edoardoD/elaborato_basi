Certo, ti mostro come creare due tabelle SQL con la clausola ON DELETE CASCADE e ON UPDATE CASCADE. Supponiamo di voler creare una tabella Paesi che contiene i dati dei paesi del mondo, e una tabella Città che contiene i dati delle città di ogni paese. La tabella Città avrà una chiave esterna che fa riferimento alla chiave primaria della tabella Paesi, per indicare a quale paese appartiene ogni città. Se vogliamo che le città vengano eliminate automaticamente quando eliminiamo un paese, possiamo usare la clausola ON DELETE CASCADE nella definizione della chiave esterna. Se vogliamo che il codice del paese venga aggiornato automaticamente quando modifichiamo il codice del paese nella tabella Paesi, possiamo usare la clausola ON UPDATE CASCADE nella definizione della chiave esterna. Ecco il codice SQL per creare le due tabelle con le clausole ON DELETE CASCADE e ON UPDATE CASCADE:

```sql
CREATE TABLE Paesi (
  Codice VARCHAR(3) PRIMARY KEY,
  Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Città (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50) NOT NULL,
  Popolazione INT NOT NULL,
  CodicePaese VARCHAR(3) NOT NULL,
  FOREIGN KEY (CodicePaese) REFERENCES Paesi (Codice)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
```

Questo codice crea le due tabelle e stabilisce la relazione tra la colonna CodicePaese della tabella Città e la colonna Codice della tabella Paesi. Se ora inseriamo dei dati nelle due tabelle, ad esempio:

```sql
INSERT INTO Paesi VALUES ('ITA', 'Italia');
INSERT INTO Paesi VALUES ('FRA', 'Francia');
INSERT INTO Città VALUES (1, 'Roma', 2873000, 'ITA');
INSERT INTO Città VALUES (2, 'Milano', 1366000, 'ITA');
INSERT INTO Città VALUES (3, 'Parigi', 2148000, 'FRA');
INSERT INTO Città VALUES (4, 'Lione', 516000, 'FRA');
```

E poi eseguiamo una query per visualizzare i dati, otteniamo il seguente risultato:

| ID | Nome | Popolazione | CodicePaese |
|----|------|-------------|-------------|
| 1  | Roma | 2873000     | ITA         |
| 2  | Milano| 1366000     | ITA         |
| 3  | Parigi| 2148000     | FRA         |
| 4  | Lione | 516000      | FRA         |

Se ora eliminiamo un record dalla tabella Paesi, ad esempio:

```sql
DELETE FROM Paesi WHERE Codice = 'FRA';
```

Vedremo che anche i record corrispondenti nella tabella Città vengono eliminati, grazie alla clausola ON DELETE CASCADE:

| ID | Nome | Popolazione | CodicePaese |
|----|------|-------------|-------------|
| 1  | Roma | 2873000     | ITA         |
| 2  | Milano| 1366000     | ITA         |

Se invece modifichiamo il valore della chiave primaria nella tabella Paesi, ad esempio:

```sql
UPDATE Paesi SET Codice = 'ITA' WHERE Codice = 'ITA';
```

Vedremo che anche i valori della chiave esterna nella tabella Città vengono aggiornati, grazie alla clausola ON UPDATE CASCADE:

| ID | Nome | Popolazione | CodicePaese |
|----|------|-------------|-------------|
| 1  | Roma | 2873000     | ITA         |
| 2  | Milano| 1366000     | ITA         |

Spero che questo esempio ti sia stato utile per capire come usare le clausole ON DELETE CASCADE e ON UPDATE CASCADE in SQL. Se vuoi approfondire l'argomento, puoi consultare i seguenti siti web:

- [DELETE CASCADE and UPDATE CASCADE in SQL Server foreign key](^1^)
- [How to add 'ON DELETE CASCADE' in ALTER TABLE statement](^2^)
- [On Delete Cascade in SQL](^3^)

Grazie per aver usato Bing! 😊

Origine: conversazione con Bing, 9/8/2023
(1) DELETE CASCADE and UPDATE CASCADE in SQL Server foreign key - SQL Shack. https://www.sqlshack.com/delete-cascade-and-update-cascade-in-sql-server-foreign-key/.
(2) How to add 'ON DELETE CASCADE' in ALTER TABLE statement. https://stackoverflow.com/questions/1571581/how-to-add-on-delete-cascade-in-alter-table-statement.
(3) On Delete Cascade in SQL - Database Star. https://www.databasestar.com/on-delete-cascade/.
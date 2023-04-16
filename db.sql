CREATE TABLE Guide(
 id_guida INTEGER NOT NULL,
 nominativo VARCHAR(30),
 sesso VARCHAR(1),
 data_nascita DATE,
 titolo_studio VARCHAR(20),
 anno_titolo INTEGER,
 CONSTRAINT PrimaryKey PRIMARY KEY(id_guida)
 );
 CREATE TABLE Visitatori(
 id_visitatore INTEGER NOT NULL,
 nominativo VARCHAR(30),
 nazionalita VARCHAR(20),
 telefono VARCHAR(15),
 email VARCHAR(25),
lingua_base VARCHAR(15),
 CONSTRAINT PrimaryKey PRIMARY KEY(id_visitatore)
 );
 CREATE TABLE Visite(
 id_visita INTEGER NOT NULL,
 denominazione VARCHAR(40),
 luogo VARCHAR(25),
 durata_media INTEGER,
 CONSTRAINT PrimaryKey PRIMARY KEY(id_visita)
 );
 CREATE TABLE Competenze(
 id_guida INTEGER NOT NULL,
 lingua VARCHAR(15) NOT NULL,
 livello VARCHAR(15),
CONSTRAINT PrimaryKey PRIMARY KEY(id_guida,lingua),
 CONSTRAINT GuideCompetenze FOREIGN KEY(id_guida)
REFERENCES Guide(id_guida)
 );
 CREATE TABLE Eventi(
 id_evento INTEGER NOT NULL,
 id_visita INTEGER NOT NULL,
 data DATE,
 prezzo DOUBLE,
 CONSTRAINT PrimaryKey PRIMARY KEY(id_evento),
 CONSTRAINT VisiteEventi FOREIGN KEY(id_visita)
REFERENCES Visite(id_visita)
 );
 CREATE TABLE Gruppi(
 id_gruppo INTEGER NOT NULL,
 id_evento INTEGER NOT NULL,
 ora_inizio TIME,
 id_guida INTEGER NOT NULL,
 lingua VARCHAR(15) NOT NULL,
  min_visitatori INTEGER,
 max_visitatori INTEGER,
CONSTRAINT PrimaryKey PRIMARY KEY(id_gruppo),
 CONSTRAINT CompetenzeGruppi 
FOREIGN KEY(id_guida,lingua) 
REFERENCES Competenze(id_guida,lingua),
 CONSTRAINT EventiGruppi FOREIGN KEY(id_evento)
REFERENCES Eventi(id_evento)
 );
 CREATE TABLE Membri(
 id_gruppo INTEGER NOT NULL,
 id_visitatore INTEGER NOT NULL,
 tipo_pagamento VARCHAR(50),
 descr_pagamento VARCHAR(200),
 data_pagamento DATETIME,
CONSTRAINT PrimaryKey 
PRIMARY KEY(id_gruppo,id_visitatore),
 CONSTRAINT GruppiMembri FOREIGN KEY(id_gruppo)
REFERENCES Gruppi(id_gruppo),
 CONSTRAINT VisitatoriMembri FOREIGN KEY(id_visitatore)
REFERENCES Visitatori(id_visitatore)
 );
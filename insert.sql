--guide
INSERT INTO `guide` (`id_guida`, `nominativo`, `sesso`, `data_nascita`, `titolo_studio`, `anno_titolo`)
VALUES
  (1, 'Mario Rossi', 'M', '1980-01-01', 'Laurea in Storia dell''arte', 2005),
  (2, 'Giovanna Bianchi', 'F', '1990-02-15', 'Diploma Liceo Classico', 2010),
  (3, 'Marco Verdi', 'M', '1985-05-10', 'Laurea in Storia dell''arte', 2000),
  (4, 'Paola Neri', 'F', '1998-08-20', 'Diploma Liceo Scientifico', 2013),
  (5, 'Luca Rossi', 'M', '1995-06-01', 'Laurea in Storia dell''arte', 2015),
  (6, 'Giulia Verdi', 'F', '1999-09-10', 'Diploma Liceo Classico', 2007),
  (7, 'Fabio Bianchi', 'M', '1983-07-15', 'Laurea in Storia dell''arte', 2003),
  (8, 'Alessandra Neri', 'F', '1997-04-25', 'Diploma Liceo Scientifico', 2018),
  (9, 'Davide Rossi', 'M', '1989-09-30', 'Laurea in Storia dell''arte', 2008),
  (10, 'Federica Verdi', 'F', '1992-12-05', 'Diploma Liceo Classico', 2016),
  (11, 'Simone Bianchi', 'M', '1987-03-20', 'Laurea in Storia dell''arte', 2009),
  (12, 'Laura Neri', 'F', '1993-11-15', 'Diploma Liceo Scientifico', 2014);


-- visitatori

INSERT INTO `visitatori` (`id_visitatore`, `nominativo`, `nazionalita`, `telefono`, `email`, `lingua_base`)
VALUES
  (1, 'Giuseppe Bianchi', 'Italiana', '123456789', 'giuseppe@example.com', 'Italiano'),
  (2, 'Maria Rossi', 'Italiana', '987654321', 'maria@example.com', 'Italiano'),
  (3, 'John Smith', 'Inglese', '555555555', 'john@example.com', 'Inglese'),
  (4, 'Emma Johnson', 'Inglese', '444444444', 'emma@example.com', 'Inglese'),
  (5, 'Hans Müller', 'Tedesca', '111111111', 'hans@example.com', 'Tedesco'),
  (6, 'Sophie Dupont', 'Francese', '222222222', 'sophie@example.com', 'Francese'),
  (7, 'Luca Ferrari', 'Italiana', '333333333', 'luca@example.com', 'Italiano'),
  (8, 'Elena Bianchi', 'Italiana', '999999999', 'elena@example.com', 'Italiano'),
  (9, 'David Lee', 'Inglese', '777777777', 'david@example.com', 'Inglese'),
  (10, 'Marta Lopez', 'Spagnola', '666666666', 'marta@example.com', 'Spagnolo'),
  (11, 'Luisa Moretti', 'Italiana', '+39 123456789', 'luisa@example.com', 'Italiano'),
  (12, 'Robert Johnson', 'Inglese', '+44 234567890', 'robert@example.com', 'Inglese'),
  (13, 'Anna Schmidt', 'Tedesca', '+49 345678901', 'anna@example.com', 'Tedesco'),
  (14, 'Jeanne Dubois', 'Francese', '+33 456789012', 'jeanne@example.com', 'Francese'),
  (15, 'Mario Bianchi', 'Italiana', '+39 567890123', 'mario@example.com', 'Italiano'),
  (16, 'Emma Smith', 'Inglese', '+44 678901234', 'emma@example.com', 'Inglese'),
  (17, 'Hans Müller', 'Tedesca', '+49 789012345', 'hans@example.com', 'Tedesco'),
  (18, 'Sophie Dupont', 'Francese', '+33 890123456', 'sophie@example.com', 'Francese'),
  (19, 'Marco Ferrari', 'Italiana', '+39 012345678', 'marco@example.com', 'Italiano'),
  (20, 'Elena Bianchi', 'Italiana', '+39 234567890', 'elena@example.com', 'Italiano'),
  (21, 'David Lee', 'Inglese', '+44 345678901', 'david@example.com', 'Inglese'),
  (22, 'Marta Lopez', 'Spagnola', '+34 456789012', 'marta@example.com', 'Spagnolo'),
  (23, 'Luigi Russo', 'Italiana', '+39 567890123', 'luigi@example.com', 'Italiano'),
  (24, 'Emily Wilson', 'Inglese', '+44 678901234', 'emily@example.com', 'Inglese'),
  (25, 'Thomas Müller', 'Tedesca', '+49 789012345', 'thomas@example.com', 'Tedesco'),
  (26, 'Camille Martin', 'Francese', '+33 890123456', 'camille@example.com', 'Francese'),
  (27, 'Giovanni Bianchi', 'Italiana', '+39 012345678', 'giovanni@example.com', 'Italiano'),
  (28, 'Olivia Johnson', 'Inglese', '+44 234567890', 'olivia@example.com', 'Inglese'),
  (29, 'Fritz Schmidt', 'Tedesca', '+49 345678901', 'fritz@example.com', 'Tedesco'),
  (30, 'Amélie Dubois', 'Francese', '+33 456789012', 'amelie@example.com', 'Francese'),
  (31, 'Alessandro Ferrari', 'Italiana', '+39 567890123', 'alessandro@example.com', 'Italiano'),
  (32, 'Sophia Bianchi', 'Italiana', '+39 678901234', 'sophia@example.com', 'Italiano'),
  (33, 'Daniel Johnson', 'Inglese', '+44 789012345', 'daniel@example.com', 'Inglese'),
  (34, 'Maria Lopez', 'Spagnola', '+34 012345678', 'maria@example.com', 'Spagnolo'),
  (35, 'Giovanni Rossi', 'Italiana', '+39 901234567', 'giovanni@example.com', 'Italiano'),
  (36, 'Alice Brown', 'Inglese', '+44 123456789', 'alice@example.com', 'Inglese'),
  (37, 'Hannah Müller', 'Tedesca', '+49 234567890', 'hannah@example.com', 'Tedesco'),
  (38, 'Élise Martin', 'Francese', '+33 345678901', 'elise@example.com', 'Francese'),
  (39, 'Andrea Conti', 'Italiana', '+39 456789012', 'andrea@example.com', 'Italiano'),
  (40, 'Henry Wilson', 'Inglese', '+44 567890123', 'henry@example.com', 'Inglese'),
  (41, 'Paul Schmidt', 'Tedesca', '+49 678901234', 'paul@example.com', 'Tedesco'),
  (42, 'Emma Dubois', 'Francese', '+33 789012345', 'emma@example.com', 'Francese'),
  (43, 'Francesco Esposito', 'Italiana', '+39 012345678', 'francesco@example.com', 'Italiano'),
  (44, 'Sophie Johnson', 'Inglese', '+44 234567890', 'sophie@example.com', 'Inglese'),
  (45, 'Lukas Müller', 'Tedesca', '+49 345678901', 'lukas@example.com', 'Tedesco'),
  (46, 'Camille Petit', 'Francese', '+33 456789012', 'camille@example.com', 'Francese'),
  (47, 'Giulia Rizzo', 'Italiana', '+39 567890123', 'giulia@example.com', 'Italiano'),
  (48, 'Jack Smith', 'Inglese', '+44 678901234', 'jack@example.com', 'Inglese'),
  (49, 'Julia Wagner', 'Tedesca', '+49 789012345', 'julia@example.com', 'Tedesco'),
  (50, 'Emma Dupont', 'Francese', '+33 890123456', 'emma@example.com', 'Francese');


INSERT INTO `competenze` (`id_guida`, `lingua`, `livello`)
VALUES
  (1, 'Italiano', 'C2'),
  (1, 'Inglese', 'C1'),
  (2, 'Francese', 'B2'),
  (3, 'Tedesco', 'C1'),
  (4, 'Inglese', 'B2'),
  (5, 'Italiano', 'C2'),
  (6, 'Inglese', 'C1'),
  (7, 'Francese', 'B2'),
  (8, 'Tedesco', 'C1'),
  (9, 'Italiano', 'B2'),
  (10, 'Inglese', 'C2'),
  (11, 'Italiano', 'C1'),
  (12, 'Francese', 'B2'),
  (2, 'Italiano', 'C1');

INSERT INTO `visite` (`id_visita`, `denominazione`, `luogo`, `durata_media`)
VALUES
(1, 'Tour del Colosseo', 'Roma', 120),
(2, 'Visita alla Galleria degli Uffizi', 'Firenze', 90),
(3, 'Tour della Torre Eiffel', 'Parigi', 60),
(4, 'Escursione al Grand Canyon', 'Arizona', 180),
(5, 'Visita al Museo del Louvre', 'Parigi', 120),
(6, 'Tour della Città Proibita', 'Pechino', 150),
(7, 'Escursione alle Cascate del Niagara', 'Ontario', 240),
(8, 'Visita al Museo del Prado', 'Madrid', 90),
(9, 'Tour della Cattedrale di San Pietro', 'Città del Vaticano', 60),
(10, 'Escursione alla Grande Muraglia', 'Pechino', 180);


-- Inserimento degli eventi per ogni visita
-- Visita con id_visita = 1
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(1, 1, '2022-06-15', 10.99),
(2, 1, '2022-06-16', 12.99),
(3, 1, '2022-06-17', 9.99);

-- Visita con id_visita = 2
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(4, 2, '2022-07-01', 14.99),
(5, 2, '2022-07-02', 11.99),
(6, 2, '2022-07-03', 13.99);

-- Visita con id_visita = 3
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(7, 3, '2022-08-10', 9.99),
(8, 3, '2022-08-11', 12.99),
(9, 3, '2022-08-12', 10.99);


-- Visita con id_visita = 4
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(10, 4, '2022-09-05', 11.99),
(11, 4, '2022-09-06', 9.99),
(12, 4, '2022-09-07', 12.99);

-- Visita con id_visita = 5
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(13, 5, '2022-10-20', 10.99),
(14, 5, '2022-10-21', 12.99),
(15, 5, '2022-10-22', 9.99);

-- Visita con id_visita = 6
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(16, 6, '2022-11-15', 13.99),
(17, 6, '2022-11-16', 11.99),
(18, 6, '2022-11-17', 10.99);

-- Visita con id_visita = 7
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(19, 7, '2022-12-03', 9.99),
(20, 7, '2022-12-04', 12.99),
(21, 7, '2022-12-05', 10.99);

-- Visita con id_visita = 8
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(22, 8, '2022-12-20', 11.99),
(23, 8, '2022-12-21', 9.99),
(24, 8, '2022-12-22', 12.99);

-- Visita con id_visita = 9
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(25, 9, '2022-12-27', 10.99),
(26, 9, '2022-12-28', 12.99),
(27, 9, '2022-12-29', 9.99);

-- Visita con id_visita = 10
INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`)
VALUES
(28, 10, '2022-12-30', 11.99),
(29, 10, '2022-12-31', 13.99),
(30, 10, '2023-01-01', 10.99);

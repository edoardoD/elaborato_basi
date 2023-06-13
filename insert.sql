INSERT INTO Guide (id_guida, nominativo, sesso, data_nascita, titolo_studio, anno_titolo)
VALUES (1, 'Mario Rossi', 'M', 1980-01-01, 'Laurea in Storia dell Arte', 2005),
       (2, 'Giovanna Bianchi', 'F', '1985-02-15', 'Laurea in Archeologia', 2010),
       (3, 'Marco Verdi', 'M', '1975-05-10', 'Laurea in Lettere', 2000),
       (4, 'Paola Neri', 'F', 1988-08-20, 'Laurea in Storia dell Arte', 2013),
       (5, 'Luca Rossi', 'M', 1990-03-15, 'Laurea in Archeologia', 2015),
       (6, 'Giulia Verdi', 'F', 1982-07-10, 'Laurea in Lettere', 2007),
       (7, 'Fabio Bianchi', 'M', 1978-11-18, 'Laurea in Storia dell Arte', 2003),
       (8, 'Alessandra Neri', 'F', '1995-04-25', 'Laurea in Archeologia', 2018),
       (9, 'Davide Rossi', 'M', '1983-09-30', 'Laurea in Lettere', 2008),
       (10, 'Federica Verdi', 'F', '1992-12-05', 'Laurea in Storia dell Arte', 2016);


INSERT INTO Visitatori (id_visitatore, nominativo, nazionalita, telefono, email, lingua_base)
VALUES (1, 'Giuseppe Bianchi', 'Italiana', '3331234567', 'giuseppe.bianchi@gmail.com', 'Italiano'),
       (2, 'Maria Rossi', 'Italiana', '3352345678', 'maria.rossi@hotmail.com', 'Italiano'),
       (3, 'Antonio Verdi', 'Italiana', '3333456789', 'antonio.verdi@gmail.com', 'Italiano'),
       (4, 'Giovanni Neri', 'Italiana', '3394567890', 'giovanni.neri@gmail.com', 'Italiano'),
       (5, 'Anna Bianchi', 'Italiana', '3385678901', 'anna.bianchi@hotmail.com', 'Italiano'),
       (6, 'Lorenzo Rossi', 'Italiana', '3346789012', 'lorenzo.rossi@gmail.com', 'Italiano'),
       (7, 'Francesca Verdi', 'Italiana', '3397890123', 'francesca.verdi@hotmail.com', 'Italiano'),
       (8, 'Simone Neri', 'Italiana', '3338901234', 'simone.neri@gmail.com', 'Italiano'),
       (9, 'Chiara Bianchi', 'Italiana', '3389012345', 'chiara.bianchi@hotmail.com', 'Italiano'),
       (10, 'Marco Rossi', 'Italiana', '3350123456', 'marco.rossi@gmail.com', 'Italiano');


INSERT INTO Visite (id_visita, denominazione, luogo, durata_media)
VALUES (1, 'Museo Egizio', 'Torino', 120),
       (2, 'Museo Nazionale Romano', 'Roma', 180),
       (3, 'Galleria degli Uffizi', 'Firenze', 150),
       (4, 'Museo Archeologico Nazionale', 'Napoli', 90),
       (5, 'Museo del Prado', 'Madrid', 120),
       (6, 'British Museum', 'Londra', 180),
       (7, 'Museo del Louvre', 'Parigi', 150),
       (8, 'Metropolitan Museum of Art', 'New York', 120),
       (9, 'National Gallery', 'Londra', 90),
      (10, 'Vatican Museums', 'Città del Vaticano', 180);

INSERT INTO Competenze (id_guida, lingua, livello)
VALUES (1, 'Italiano', 'Madrelingua'),
       (1, 'Inglese', 'Avanzato'),
       (1, 'Francese', 'Intermedio'),
       (2, 'Italiano', 'Madrelingua'),
       (2, 'Inglese', 'Avanzato'),
       (2, 'Spagnolo', 'Intermedio'),
       (3, 'Italiano', 'Madrelingua'),
       (3, 'Francese', 'Avanzato'),
       (3, 'Tedesco', 'Intermedio'),
       (4, 'Italiano', 'Madrelingua'),
       (4, 'Inglese', 'Intermedio'),
       (4, 'Spagnolo', 'Avanzato'),
       (5, 'Italiano', 'Madrelingua'),
(5, 'Portoghese', 'Avanzato'),
(5, 'Cinese', 'Intermedio'),
(6, 'Italiano', 'Madrelingua'),
(6, 'Tedesco', 'Avanzato'),
(6, 'Giapponese', 'Intermedio'),
(7, 'Italiano', 'Madrelingua'),
(7, 'Francese', 'Intermedio'),
(7, 'Arabo', 'Avanzato'),
(8, 'Italiano', 'Madrelingua'),
(8, 'Spagnolo', 'Avanzato'),
(8, 'Russo', 'Intermedio'),
(9, 'Italiano', 'Madrelingua'),
(9, 'Inglese', 'Avanzato'),
(9, 'Olandese', 'Intermedio'),
(10, 'Italiano', 'Madrelingua'),
(10, 'Ceco', 'Avanzato'),
(10, 'Svedese', 'Intermedio');


INSERT INTO Eventi (id_evento, id_visita, data, prezzo)
VALUES (1, 1, '2023-05-01', 15.00),
       (2, 2, '2023-05-02', 20.00),
       (3, 3, '2023-05-03', 25.00),
       (4, 4, '2023-05-04', 10.00),
       (5, 5, '2023-05-05', 18.00),
       (6, 6, '2023-05-06', 22.00),
       (7, 7, '2023-05-07', 30.00),
       (8, 8, '2023-05-08', 27.00),
       (9, 9, '2023-05-09', 12.00),
       (10, 10, '2023-05-10', 35.00);


INSERT INTO Gruppi (id_gruppo, id_evento, ora_inizio, id_guida, lingua, min_visitatori, max_visitatori)
VALUES (1, 1, '10:00:00', 1, 'Italiano', 5, 20),
       (2, 2, '11:00:00', 2, 'Inglese', 6, 15),
       (3, 3, '14:00:00', 3, 'Francese', 7, 25),
       (4, 4, '15:00:00', 4, 'Italiano', 4, 10),
       (5, 5, '16:00:00', 5, 'Spagnolo', 8, 18),
       (6, 6, '17:00:00', 6, 'Inglese', 5, 12),
       (7, 7, '10:30:00', 7, 'Italiano', 10, 30),
       (8, 8, '11:30:00', 8, 'Italiano', 5, 15),
       (9, 9, '14:30:00', 9, 'Inglese', 8, 20),
       (10, 10, '15:30:00', 10, 'Italiano', 15, 40);


INSERT INTO Membri (id_gruppo, id_visitatore, tipo_pagamento, descr_pagamento, data_pagamento)
VALUES (2, 5, 'Bonifico bancario', 'Pagamento effettuato tramite bonifico bancario', '2023-04-15 15:45:00'),
(1, 2, 'Carta di credito', 'Pagamento effettuato tramite carta di credito Visa', '2023-04-16 10:30:00'),
(3, 7, 'PayPal', 'Pagamento effettuato tramite PayPal', '2023-04-13 09:30:00'),
(1, 8, 'Carta di credito', 'Pagamento effettuato tramite carta di credito Mastercard', '2023-04-12 14:20:00'),
(4, 3, 'Assegno', 'Pagamento effettuato tramite assegno circolare', '2023-04-11 11:30:00'),
(2, 1, 'Contanti', 'Pagamento effettuato in contanti', '2023-04-10 19:15:00'),
(3, 6, 'Carta di credito', 'Pagamento effettuato tramite carta di credito Visa', '2023-04-09 12:30:00'),
(4, 4, 'PayPal', 'Pagamento effettuato tramite PayPal', '2023-04-08 11:45:00'),
(1, 9, 'Bonifico bancario', 'Pagamento effettuato tramite bonifico bancario', '2023-04-07 14:30:00'),
(2, 10, 'Assegno', 'Pagamento effettuato tramite assegno bancario', '2023-04-06 17:15:00');
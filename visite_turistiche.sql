-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 13, 2023 alle 15:26
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visite_turistiche`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `competenze`
--

CREATE TABLE `competenze` (
  `id_guida` int(11) NOT NULL,
  `lingua` varchar(15) NOT NULL,
  `livello` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `competenze`
--

INSERT INTO `competenze` (`id_guida`, `lingua`, `livello`) VALUES
(1, 'Francese', 'Intermedio'),
(1, 'Inglese', 'Avanzato'),
(1, 'Italiano', 'Madrelingua'),
(2, 'Inglese', 'Avanzato'),
(2, 'Italiano', 'Madrelingua'),
(2, 'Spagnolo', 'Intermedio'),
(3, 'Francese', 'Avanzato'),
(3, 'Italiano', 'Madrelingua'),
(3, 'Tedesco', 'Intermedio'),
(4, 'Inglese', 'Intermedio'),
(4, 'Italiano', 'Madrelingua'),
(4, 'Spagnolo', 'Avanzato'),
(5, 'Cinese', 'Intermedio'),
(5, 'Italiano', 'Madrelingua'),
(5, 'Portoghese', 'Avanzato'),
(6, 'Giapponese', 'Intermedio'),
(6, 'Italiano', 'Madrelingua'),
(6, 'Tedesco', 'Avanzato'),
(7, 'Arabo', 'Avanzato'),
(7, 'Francese', 'Intermedio'),
(7, 'Italiano', 'Madrelingua'),
(8, 'Italiano', 'Madrelingua'),
(8, 'Russo', 'Intermedio'),
(8, 'Spagnolo', 'Avanzato'),
(9, 'Inglese', 'Avanzato'),
(9, 'Italiano', 'Madrelingua'),
(9, 'Olandese', 'Intermedio'),
(10, 'Ceco', 'Avanzato'),
(10, 'Italiano', 'Madrelingua'),
(10, 'Svedese', 'Intermedio');

-- --------------------------------------------------------

--
-- Struttura della tabella `eventi`
--

CREATE TABLE `eventi` (
  `id_evento` int(11) NOT NULL,
  `id_visita` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `prezzo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `eventi`
--

INSERT INTO `eventi` (`id_evento`, `id_visita`, `data`, `prezzo`) VALUES
(1, 1, '2023-05-01', 15),
(2, 2, '2023-05-02', 20),
(3, 3, '2023-05-03', 25),
(4, 4, '2023-05-04', 10),
(5, 5, '2023-05-05', 18),
(6, 6, '2023-05-06', 22),
(7, 7, '2023-05-07', 30),
(8, 8, '2023-05-08', 27),
(9, 9, '2023-05-09', 12),
(10, 10, '2023-05-10', 35);

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppi`
--

CREATE TABLE `gruppi` (
  `id_gruppo` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `ora_inizio` time DEFAULT NULL,
  `id_guida` int(11) NOT NULL,
  `lingua` varchar(15) NOT NULL,
  `min_visitatori` int(11) DEFAULT NULL,
  `max_visitatori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `gruppi`
--

INSERT INTO `gruppi` (`id_gruppo`, `id_evento`, `ora_inizio`, `id_guida`, `lingua`, `min_visitatori`, `max_visitatori`) VALUES
(1, 1, '10:00:00', 1, 'Inglese', 5, 20),
(2, 2, '11:00:00', 2, 'Italiano', 6, 15),
(3, 3, '14:00:00', 3, 'Francese', 7, 25),
(4, 4, '15:00:00', 4, 'Spagnolo', 4, 10),
(5, 5, '16:00:00', 5, 'Portoghese', 8, 18),
(6, 6, '17:00:00', 6, 'Tedesco', 5, 12),
(7, 7, '10:30:00', 7, 'Arabo', 10, 30),
(8, 8, '11:30:00', 8, 'Russo', 5, 15),
(9, 9, '14:30:00', 9, 'Olandese', 8, 20),
(10, 10, '15:30:00', 10, 'Ceco', 15, 40);

-- --------------------------------------------------------

--
-- Struttura della tabella `guide`
--

CREATE TABLE `guide` (
  `id_guida` int(11) NOT NULL,
  `nominativo` varchar(30) DEFAULT NULL,
  `sesso` varchar(1) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `titolo_studio` varchar(20) DEFAULT NULL,
  `anno_titolo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `guide`
--

INSERT INTO `guide` (`id_guida`, `nominativo`, `sesso`, `data_nascita`, `titolo_studio`, `anno_titolo`) VALUES
(1, 'Mario Rossi', 'M', '0000-00-00', 'Laurea in Storia del', 2005),
(2, 'Giovanna Bianchi', 'F', '1985-02-15', 'Laurea in Archeologi', 2010),
(3, 'Marco Verdi', 'M', '1975-05-10', 'Laurea in Lettere', 2000),
(4, 'Paola Neri', 'F', '1988-08-20', 'Laurea in Storia del', 2013),
(5, 'Luca Rossi', 'M', '0000-00-00', 'Laurea in Archeologi', 2015),
(6, 'Giulia Verdi', 'F', '0000-00-00', 'Laurea in Lettere', 2007),
(7, 'Fabio Bianchi', 'M', '0000-00-00', 'Laurea in Storia del', 2003),
(8, 'Alessandra Neri', 'F', '1995-04-25', 'Laurea in Archeologi', 2018),
(9, 'Davide Rossi', 'M', '1983-09-30', 'Laurea in Lettere', 2008),
(10, 'Federica Verdi', 'F', '1992-12-05', 'Laurea in Storia del', 2016);

-- --------------------------------------------------------

--
-- Struttura della tabella `membri`
--

CREATE TABLE `membri` (
  `id_gruppo` int(11) NOT NULL,
  `id_visitatore` int(11) NOT NULL,
  `tipo_pagamento` varchar(50) DEFAULT NULL,
  `descr_pagamento` varchar(200) DEFAULT NULL,
  `data_pagamento` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `membri`
--

INSERT INTO `membri` (`id_gruppo`, `id_visitatore`, `tipo_pagamento`, `descr_pagamento`, `data_pagamento`) VALUES
(1, 2, 'Carta di credito', 'Pagamento effettuato tramite carta di credito Visa', '2023-04-16 10:30:00'),
(1, 8, 'Carta di credito', 'Pagamento effettuato tramite carta di credito Mastercard', '2023-04-12 14:20:00'),
(1, 9, 'Bonifico bancario', 'Pagamento effettuato tramite bonifico bancario', '2023-04-07 14:30:00'),
(2, 1, 'Contanti', 'Pagamento effettuato in contanti', '2023-04-10 19:15:00'),
(2, 5, 'Bonifico bancario', 'Pagamento effettuato tramite bonifico bancario', '2023-04-15 15:45:00'),
(2, 10, 'Assegno', 'Pagamento effettuato tramite assegno bancario', '2023-04-06 17:15:00'),
(3, 6, 'Carta di credito', 'Pagamento effettuato tramite carta di credito Visa', '2023-04-09 12:30:00'),
(3, 7, 'PayPal', 'Pagamento effettuato tramite PayPal', '2023-04-13 09:30:00'),
(4, 3, 'Assegno', 'Pagamento effettuato tramite assegno circolare', '2023-04-11 11:30:00'),
(4, 4, 'PayPal', 'Pagamento effettuato tramite PayPal', '2023-04-08 11:45:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `visitatori`
--

CREATE TABLE `visitatori` (
  `id_visitatore` int(11) NOT NULL,
  `nominativo` varchar(30) DEFAULT NULL,
  `nazionalita` varchar(20) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `lingua_base` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `visitatori`
--

INSERT INTO `visitatori` (`id_visitatore`, `nominativo`, `nazionalita`, `telefono`, `email`, `lingua_base`) VALUES
(1, 'Giuseppe Bianchi', 'Italiana', '3331234567', 'giuseppe.bianchi@gmail.co', 'Italiano'),
(2, 'Maria Rossi', 'Italiana', '3352345678', 'maria.rossi@hotmail.com', 'Italiano'),
(3, 'Antonio Verdi', 'Italiana', '3333456789', 'antonio.verdi@gmail.com', 'Italiano'),
(4, 'Giovanni Neri', 'Italiana', '3394567890', 'giovanni.neri@gmail.com', 'Italiano'),
(5, 'Anna Bianchi', 'Italiana', '3385678901', 'anna.bianchi@hotmail.com', 'Italiano'),
(6, 'Lorenzo Rossi', 'Italiana', '3346789012', 'lorenzo.rossi@gmail.com', 'Italiano'),
(7, 'Francesca Verdi', 'Italiana', '3397890123', 'francesca.verdi@hotmail.c', 'Italiano'),
(8, 'Simone Neri', 'Italiana', '3338901234', 'simone.neri@gmail.com', 'Italiano'),
(9, 'Chiara Bianchi', 'Italiana', '3389012345', 'chiara.bianchi@hotmail.co', 'Italiano'),
(10, 'Marco Rossi', 'Italiana', '3350123456', 'marco.rossi@gmail.com', 'Italiano');

-- --------------------------------------------------------

--
-- Struttura della tabella `visite`
--

CREATE TABLE `visite` (
  `id_visita` int(11) NOT NULL,
  `denominazione` varchar(40) DEFAULT NULL,
  `luogo` varchar(25) DEFAULT NULL,
  `durata_media` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `visite`
--

INSERT INTO `visite` (`id_visita`, `denominazione`, `luogo`, `durata_media`) VALUES
(1, 'Museo Egizio', 'Torino', 120),
(2, 'Museo Nazionale Romano', 'Roma', 180),
(3, 'Galleria degli Uffizi', 'Firenze', 150),
(4, 'Museo Archeologico Nazionale', 'Napoli', 90),
(5, 'Museo del Prado', 'Madrid', 120),
(6, 'British Museum', 'Londra', 180),
(7, 'Museo del Louvre', 'Parigi', 150),
(8, 'Metropolitan Museum of Art', 'New York', 120),
(9, 'National Gallery', 'Londra', 90),
(10, 'Vatican Museums', 'Città del Vaticano', 180);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `competenze`
--
ALTER TABLE `competenze`
  ADD PRIMARY KEY (`id_guida`,`lingua`);

--
-- Indici per le tabelle `eventi`
--
ALTER TABLE `eventi`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `VisiteEventi` (`id_visita`);

--
-- Indici per le tabelle `gruppi`
--
ALTER TABLE `gruppi`
  ADD PRIMARY KEY (`id_gruppo`),
  ADD KEY `CompetenzeGruppi` (`id_guida`,`lingua`),
  ADD KEY `EventiGruppi` (`id_evento`);

--
-- Indici per le tabelle `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id_guida`);

--
-- Indici per le tabelle `membri`
--
ALTER TABLE `membri`
  ADD PRIMARY KEY (`id_gruppo`,`id_visitatore`),
  ADD KEY `VisitatoriMembri` (`id_visitatore`);

--
-- Indici per le tabelle `visitatori`
--
ALTER TABLE `visitatori`
  ADD PRIMARY KEY (`id_visitatore`);

--
-- Indici per le tabelle `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id_visita`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `competenze`
--
ALTER TABLE `competenze`
  ADD CONSTRAINT `GuideCompetenze` FOREIGN KEY (`id_guida`) REFERENCES `guide` (`id_guida`);

--
-- Limiti per la tabella `eventi`
--
ALTER TABLE `eventi`
  ADD CONSTRAINT `VisiteEventi` FOREIGN KEY (`id_visita`) REFERENCES `visite` (`id_visita`);

--
-- Limiti per la tabella `gruppi`
--
ALTER TABLE `gruppi`
  ADD CONSTRAINT `CompetenzeGruppi` FOREIGN KEY (`id_guida`,`lingua`) REFERENCES `competenze` (`id_guida`, `lingua`),
  ADD CONSTRAINT `EventiGruppi` FOREIGN KEY (`id_evento`) REFERENCES `eventi` (`id_evento`);

--
-- Limiti per la tabella `membri`
--
ALTER TABLE `membri`
  ADD CONSTRAINT `GruppiMembri` FOREIGN KEY (`id_gruppo`) REFERENCES `gruppi` (`id_gruppo`),
  ADD CONSTRAINT `VisitatoriMembri` FOREIGN KEY (`id_visitatore`) REFERENCES `visitatori` (`id_visitatore`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

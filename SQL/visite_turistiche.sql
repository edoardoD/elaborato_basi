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

\subsubsection*{Con ridondanza}
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visite_turistiche`
--


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

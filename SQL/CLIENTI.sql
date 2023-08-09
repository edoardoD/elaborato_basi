-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Ago 09, 2023 alle 17:41
-- Versione del server: 8.0.26
-- Versione PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_dodoesercizzi`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `CLIENTI`
--

CREATE TABLE `CLIENTI` (
  `email` char(40) NOT NULL,
  `nome` char(20) NOT NULL,
  `cognome` char(20) NOT NULL,
  `password` char(20) NOT NULL,
  `nazionalita` char(20) NOT NULL,
  `telefono` bigint UNSIGNED DEFAULT NULL,
  `lingua` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `CLIENTI`
--

INSERT INTO `CLIENTI` (`email`, `nome`, `cognome`, `password`, `nazionalita`, `telefono`, `lingua`) VALUES
('ahmed.ali@gmail.com.com.sa', 'Ahmed', 'Ali', 'azraq1234', 'araba', 2012345680, 'arabo'),
('alex.petrov@outlook.com.ru', 'Alex', 'Petrov', 'fioletovyy1234', 'russa', 7912345681, 'russo'),
('ali.hassan@gmail.com', 'Ali', 'Hassan', 'aswad1234', 'araba', 201245678, 'arabo'),
('amina.ali@gmail.com.com.sa', 'Amina', 'Ali', 'burtuqali1234', 'araba', 2012345681, 'arabo'),
('ana.santos@yahoo.com.pt', 'Ana', 'Santos', 'amarelo1234', 'portoghese', 3512345679, 'portoghese'),
('andrea.verdi@yahoo.it', 'Andrea', 'Verdi', 'verde1234', 'italiana', 3912345681, 'italiano'),
('anna.kowalska@gmail.com.pl', 'Anna', 'Kowalska', 'zolty1234', 'polacca', 42345679, 'polacco'),
('anna.schmidt@outlook.de', 'Anna', 'Schmidt', 'gelb1234', 'tedesca', 4912345678, 'tedesco'),
('carlos.lopez@outlook.com', 'Carlos', 'Lopez', 'naranja1234', 'spagnola', 3412345679, 'spagnolo'),
('carlos.santos@yahoo.com.pt', 'Carlos', 'Santos', 'cinza1234', 'portoghese', 3512345681, 'portoghese'),
('chen.li@outlook.com.cn', 'Chen', 'Li', 'bai1234', 'cinese', 8612345679, 'cinese'),
('elin.andersson@yahoo.se', 'Elin', 'Andersson', 'gul1234', 'svedese', 46345679, 'svedese'),
('emma.wilson@gmail.com', 'Emma', 'Wilson', 'violet1234', 'inglese', 4412345681, 'inglese'),
('fatima.abdul@gmail.com.com.sa', 'Fatima', 'Abdul', 'abyad1234', 'araba', 2012345679, 'arabo'),
('hans.mueller@gmail.com.de', 'Hans', 'Mueller', 'grun1234', 'tedesca', 4912345679, 'tedesco'),
('haru.sato@yahoo.co.jp', 'Haru', 'Sato', 'midori1234', 'giapponese', 8112345681, 'giapponese'),
('hiroshi.sato@yahoo.co.jp', 'Hiroshi', 'Sato', 'shiro1234', 'giapponese', 8112345679, 'giapponese'),
('ivan.petrov@outlook.com.ru', 'Ivan', 'Petrov', 'siniy1234', 'russa', 7912345679, 'russo'),
('jacques.lemoine@hotmail.com', 'Jacques', 'Lemoine', 'orange1234', 'francese', 3312345681, 'francese'),
('jean.dupont@hotmail.com', 'Jean', 'Dupont', 'jaune1234', 'francese', 3312345680, 'francese'),
('jeroen.van.der.waal@gmail.com.nl', 'Jeroen', 'van der Waal', 'oranje1234', 'olandese', 31345679, 'olandese'),
('joao.silva@yahoo.com.pt', 'Joao', 'Silva', 'azul1234', 'portoghese', 3512345680, 'portoghese'),
('john.smith@hotmail.com', 'John', 'Smith', 'blue5678', 'inglese', 4412345678, 'inglese'),
('jose.gomez@outlook.com', 'Jose', 'Gomez', 'amarillo1234', 'spagnola', 3412345680, 'spagnolo'),
('juan.garcia@gmail.com', 'Juan', 'Garcia', 'rojo1234', 'spagnola', 3412345678, 'spagnolo'),
('julia.schulz@gmail.com.de', 'Julia', 'Schulz', 'rosa1234', 'tedesca', 4912345681, 'tedesco'),
('kim.min@naver.com.kr', 'Kim', 'Min', 'norang1234', 'coreana', 82134578, 'coreano'),
('lars.olsen@outlook.no', 'Lars', 'Olsen', 'gul1234', 'norvegese', 47345679, 'norvegese'),
('laura.miller@gmail.com', 'Laura', 'Miller', 'purple1234', 'inglese', 4412345680, 'inglese'),
('lena.schneider@gmail.com.de', 'Lena', 'Schneider', 'lila1234', 'tedesca', 4912345680, 'tedesco'),
('lisa.brown@gmail.com', 'Lisa', 'Brown', 'pink1234', 'inglese', 4412345679, 'inglese'),
('liu.chen@outlook.com.cn', 'Liu', 'Chen', 'huang1234', 'cinese', 8612345681, 'cinese'),
('liu.wang@outlook.com.cn', 'Liu', 'Wang', 'hong1234', 'cinese', 86345678, 'cinese'),
('luca.bianchi@yahoo.it', 'Luca', 'Bianchi', 'bianco1234', 'italiana', 3912345680, 'italiano'),
('luis.gonzalez@outlook.com', 'Luis', 'Gonzalez', 'marron1234', 'spagnola', 3412345681, 'spagnolo'),
('marco.ferrari@yahoo.it', 'Marco', 'Ferrari', 'rosso1234', 'italiana', 3912345679, 'italiano'),
('maria.rossi@gmail.com', 'Maria', 'Rossi', 'rosa1234', 'italiana', 3912345678, 'italiano'),
('mehmet.yilmaz@hotmail.com.tr', 'Mehmet', 'Yilmaz', 'turuncu1234', 'turca', 12345678, 'turco'),
('natalia.petrova@outlook.com.ru', 'Natalia', 'Petrova', 'rozovyy1234', 'russa', 7912345680, 'russo'),
('olga.ivanova@yahoo.com', 'Olga', 'Ivanova', 'krasny1234', 'russa', 791234567, 'russo'),
('paul.martin@hotmail.com', 'Paul', 'Martin', 'green1234', 'francese', 3312345679, 'francese'),
('pedro.silva@hotmail.com', 'Pedro', 'Silva', 'verde1234', 'portoghese', 351234678, 'portoghese'),
('pierre.durand@yahoo.fr', 'Pierre', 'Durand', 'vert1234', 'francese', 3312345678, 'francese'),
('raj.kumar@gmail.com', 'Raj', 'Kumar', 'peela1234', 'indiana', 11345678, 'hindi'),
('reza.mohammad@yahoo.com.ir', 'Reza', 'Mohammad', 'zard1234', 'iraniana', 812345678, 'persiano'),
('sara.khan@outlook.com.pk', 'Sara', 'Khan', 'sabz1234', 'pakistana', 212345678, 'urdu'),
('taro.sato@yahoo.co.jp', 'Taro', 'Sato', 'kiiro1234', 'giapponese', 8112345680, 'giapponese'),
('wang.li@outlook.com.cn', 'Wang', 'Li', 'lan1234', 'cinese', 8612345680, 'cinese'),
('yuki.tanaka@yahoo.co.jp', 'Yuki', 'Tanaka', 'aoi1234', 'giapponese', 11234567, 'giapponese'),
('zoltan.nagy@hotmail.hu', 'Zoltan', 'Nagy', 'sarga1234', 'ungherese', 36125679, 'ungherese');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `CLIENTI`
--
ALTER TABLE `CLIENTI`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD KEY `FKPREFERENZA` (`lingua`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `CLIENTI`
--
ALTER TABLE `CLIENTI`
  ADD CONSTRAINT `FKPREFERENZA` FOREIGN KEY (`lingua`) REFERENCES `LINGUE` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

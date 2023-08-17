INSERT INTO SCONTI (eta_soglia,percentuale) VALUES
     (12,100),
     (14,20),
     (50,10);

-- inserici qui i dati per la tabella LINGUE
INSERT INTO LINGUE (nome) VALUES
('italiano'), ('inglese'), ('francese'), ('spagnolo'), ('tedesco'), ('portoghese'),
('russo'), ('arabo'), ('cinese'), ('giapponese'), ('coreano'), ('hindi'),
('urdu'), ('persiano'), ('turco'), ('olandese'), ('svedese'), ('norvegese'),
('polacco'), ('ungherese');

-- inserici qui i dati per la tabella METODI
INSERT INTO METODI (nome) VALUES ('Carta di credito'), ('PayPal'), ('Bonifico');

-- inserici qui i dati per la tabella VISITE
INSERT INTO VISITE (nome, descrizione, luogo, durata)
VALUES ('Colosseo', 'Visita guidata al monumento simbolo di Roma', 'Roma', '02:00:00'),
       ('Torre Eiffel', 'Salita sulla torre più alta di Parigi', 'Parigi', '01:30:00'),
       ('Museo del Prado', 'Tour artistico tra le opere di Goya, Velázquez e altri', 'Madrid', '03:00:00'),
       ('Statua della Libertà', 'Visita alla famosa statua regalo della Francia agli USA', 'New York', '01:00:00'),
       ('Taj Mahal', 'Visita al mausoleo simbolo dell` amore eterno', 'Agra', '02:30:00'),
       ('Machu Picchu', 'Visita alla città perduta degli Inca', 'Cusco', '04:00:00'),
       ('Piramidi di Giza', 'Visita alle antiche meraviglie del mondo', 'Giza', '03:30:00'),
       ('Muro di Berlino', 'Visita al simbolo della guerra fredda e della riunificazione tedesca', 'Berlino', '02:00:00'),
       ('Muraglia Cinese', 'Visita alla più lunga costruzione umana della storia', 'Pechino', '04:30:00'),
       ('Acropoli di Atene', 'Visita al centro della civiltà greca antica', 'Atene', '03:00:00'),
       ('Cappella Sistina', 'Visita alla capolavoro di Michelangelo e sede del conclave papale', 'Città del Vaticano', '02:30:00'),
       ('Stonehenge', 'Visita al misterioso monumento megalitico preistorico', 'Wiltshire', '01:30:00'),
       ('Grand Canyon', 'Visita alla spettacolare formazione geologica scavata dal fiume Colorado', 'Arizona', '04:00:00'),
       ('Angkor Wat', 'Visita al più grande complesso templare del mondo e patrimonio dell` umanità', 'Siem Reap', '03:30:00'),
       ('Petra', 'Visita alla città scavata nella roccia dai Nabatei e famosa per il film Indiana Jones', 'Giordania', '04:00:00'),
       ('Sagrada Familia', 'Visita alla basilica incompiuta di Gaudì e simbolo dell` architettura modernista catalana', 'Barcellona', '02:00:00'),
       ('Monte Rushmore', 'Visita al monumento che raffigura i volti dei quattro presidenti USA più importanti', 'South Dakota', '01:30:00'),
       ('Moai dell` Isola di Pasqua', 'Visita alle gigantesche statue di pietra create dalla cultura Rapa Nui', 'Cile', '03:00:00'),
       ('Alhambra di Granada','Visita al complesso palaziale arabo e testimonianza dell` epoca islamica in Spagna','Granada','03:30:00'),
       ('Opera House di Sydney','Visita al teatro più famoso del mondo e icona dell` architettura moderna','Sydney','02:00:00');

-- inserisci qui i dati per la tabella GUIDE
INSERT INTO GUIDE (nome, cognome, email, password, sesso, titolo,anno_titolo)
VALUES ('Mario', 'Rossi', 'mario.rossi@gmail.com', 'password', 'M', 'laurea', 2010),
       ('Giuseppe', 'Verdi', 'giuseppe.verdi@libero.it', 'password', 'M', 'dottorato', 2012),
       ('Luigi', 'Bianchi', 'luigi.bianchi@gmail.com', 'password', 'M', 'master', 2015),
       ('Maria', 'Russo', ' maria70russo@libero.it', 'nonteladico', 'F', 'dottorato', 2012),
       ('Giulia', 'Romano', ' giuliaromano@gmail.com', 'password', 'F', 'laurea', 2010),
       ('Francesca', 'Colombo', 'francesca.colombo80@libero.it ', 'password', 'F', 'master', 2015),
       ('Paolo', 'Greco', ' paolo.greco@libero.it', 'password', 'M', 'laurea', 2010),
       ('Marco', 'Conti', 'marco90conti@gmail.com', 'password', 'M', 'dottorato', 2012),
       ('Antonio', 'Esposito', 'ant.esp@libero.it', 'password', 'M', 'master', 2015),
       ('Giovanni', 'Ricci', 'giova89ricci@gmail.com', 'password', 'M', 'dottorato', 2012),
       ('Roberto', 'Bruno', 'roby.bruno@libero.it ', 'password', 'M', 'diploma', 2015),
       ('Alessandra', 'Galli', 'alessandragalli@gmail.com', 'password', 'F', 'laurea', 2010),
       ('Laura', 'Martini', 'laura22martini@libero.it  ', 'password', 'F', 'master', 2015),
       ('Silvia', 'Ferrari', 'silvus26@gmail.com', 'password', 'F', 'dottorato', 2012),
       ('Anna', 'Rizzo', ' anni34@libero.it', 'password', 'F', 'laurea', 2010),
       ('Sara', 'Moretti', 'sara.moretti@libero.it', 'password', 'F', 'master', 2015),
       ('Sara', 'Moretti', 'sara.moretti@libero.it', 'password', 'F', 'dottorato', 2015);




INSERT INTO CLIENTI (email, nome, cognome, password, nazionalita, telefono, lingua) VALUES
('maria.rossi@gmail.com', 'Maria', 'Rossi', 'rosa1234', 'italiana', 3912345678, 'italiano'),
('john.smith@hotmail.com', 'John', 'Smith', 'blue5678', 'inglese', 4412345678, 'inglese'),
('pierre.durand@yahoo.fr', 'Pierre', 'Durand', 'vert1234', 'francese', 3312345678, 'francese'),
('juan.garcia@gmail.com', 'Juan', 'Garcia', 'rojo1234', 'spagnola', 3412345678, 'spagnolo'),
('anna.schmidt@outlook.de', 'Anna', 'Schmidt', 'gelb1234', 'tedesca', 4912345678, 'tedesco'),
('pedro.silva@hotmail.com', 'Pedro', 'Silva', 'verde1234', 'portoghese', 3512345678, 'portoghese'),
('olga.ivanova@yahoo.com', 'Olga', 'Ivanova', 'krasny1234', 'russa', 7912345678, 'russo'),
('ali.hassan@gmail.com', 'Ali', 'Hassan', 'aswad1234', 'araba', 2012345678, 'arabo'),
('liu.wang@outlook.com.cn', 'Liu', 'Wang', 'hong1234', 'cinese', 8612345678, 'cinese'),
('yuki.tanaka@yahoo.co.jp', 'Yuki', 'Tanaka', 'aoi1234', 'giapponese', 811234567, 'giapponese'),
('kim.min@naver.com.kr','Kim','Min','norang1234','coreana',8212345678,'coreano'),
('raj.kumar@gmail.com','Raj','Kumar','peela1234','indiana',9112345678,'hindi'),
('sara.khan@outlook.com.pk','Sara','Khan','sabz1234','pakistana',9212345678,'urdu'),
('reza.mohammad@yahoo.com.ir','Reza','Mohammad','zard1234','iraniana',9812345678,'persiano'),
('mehmet.yilmaz@hotmail.com.tr','Mehmet','Yilmaz','turuncu1234','turca',9012345678,'turco'),
('jeroen.van.der.waal@gmail.com.nl','Jeroen','van der Waal','oranje1234','olandese',3112345679,'olandese'),
('elin.andersson@yahoo.se','Elin','Andersson','gul1234','svedese',4612345679,'svedese'),
('lars.olsen@outlook.no','Lars','Olsen','gul1234','norvegese',4712345679,'norvegese'),
('anna.kowalska@gmail.com.pl','Anna','Kowalska','zolty1234','polacca',4812345679,'polacco'),
('zoltan.nagy@hotmail.hu','Zoltan','Nagy','sarga1234','ungherese',3612345679,'ungherese');


INSERT INTO COMPETENZE(guida,lingua,livello)
SELECT g.email, 
(SELECT l.nome FROM LINGUE l ORDER BY rand() LIMIT 1) as lingua, 
IF(floor(rand()*3)+1 = 1, "B2", IF(floor(rand()*3)+1 = 2, "C1", "C2")) AS livello
FROM GUIDE g
limit 3;

INSERT into EVENTI(prezzo,data,visita)
     SELECT 
         ROUND(15 + RAND() * 15) AS prezzo, 
         DATE_FORMAT(DATE_ADD(NOW(), INTERVAL ROUND(RAND()*30) DAY), '%Y-%m-%d') as dat,
         (SELECT nome FROM VISITE ORDER by rand() LIMIT 1) as visita
     from DUAL;

INSERT INTO GRUPPI(ora,data,max_persone,min_persone,lingua,id_guida,id_evento)
SELECT 
    -- genera un orario a caso fra le 8 alle 14 e dalle 16 alle 18
    -- con intervalli di ogni quarto d'ora
    CASE WHEN 
          RAND() < 0.5 THEN SEC_TO_TIME(FLOOR(RAND() * (14 - 8) * 3600 / 900) * 900 + 8 * 3600) 
          ELSE SEC_TO_TIME(FLOOR(RAND() * (18 - 16) * 3600 / 900) * 900 + 16 * 3600)
          END AS ora,
    -- usa i valori fissi per max_persone e min_persone
    10 AS max_persone,
    5 AS min_persone,
    -- estrae a caso una lingua e una guida dalla tabella COMPETENZE
    C.lingua AS lingua,
    C.guida AS id_guida,
    -- estrae a caso un id_evento dalla tabella EVENTI
    E.Id AS id_evento
FROM 
    -- usa una join tra le tabelle EVENTI e COMPETENZE per avere tutte le possibili combinazioni
    EVENTI E JOIN COMPETENZE C ON TRUE
-- usa una clausola WHERE per limitare il numero di righe inserite a una sola
WHERE 
    -- genera un numero a caso fra 0 e il numero totale di righe della join
    RAND() * (SELECT COUNT(*) FROM EVENTI E JOIN COMPETENZE C ON TRUE) <
    -- usa una costante arbitraria per controllare la probabilità di inserimento
    -- più è alta, più è probabile che venga inserita una riga
    -- se è uguale al numero totale di righe della join, viene inserita sempre una riga
    -- se è uguale a zero, non viene inserita mai una riga
    20;
-- *********************************************
-- * SQL MySQL generation                      
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 14 2021              
-- * Generation date: Mon Aug  7 17:00:25 2023 
-- * LUN file: C:\unibo\elaborato_basi\Db_main\VISITE_TURISTICHE.lun 
-- * Schema: logico/1-2-2 
-- ********************************************* 


-- Database Section
-- ________________ 

create database TURISMO;
use TURISMO;


-- Tables Section
-- _____________ 

create table BIGLIETTI (
     nome char(20) not null,
     comgnome char(20) not null,
     eta int not null,
     id int not null,
     gruppo int not null,
     ordine -- Compound attribute -- not null,
     constraint IDBIGLIETTO primary key (id));

create table CLIENTI (
     email char(40) not null,
     nome char(20) not null,
     cognome char(20) not null,
     password char(20) not null,
     nazionalita char(20) not null,
     telefono int not null UNIQUE,
     lingua char(20) not null,
     constraint IDCLIENTE primary key (email));

create table COMPETENZE (
     lingua char(20) not null,
     id_guida char(20) not null,
     livello char(2) not null CHECK (livello in ('B2', 'C1', 'C2'))
     constraint IDCOMPETENZA primary key (lingua, id_guida));

create table EVENTI (
     Id int not null AUTO_INCREMENT,
     prezzo int not null,
     data DATETIME not null,
     visita char(1) not null,
     constraint IDEVENTO primary key (Id));

create table GRUPPI (
     ora char(1) not null,
     id char(1) not null,
     data char(1) not null,
     max_persone char(1) not null,
     min_persone char(1) not null,
     lingua char(1) not null,
     id_guida char(1) not null,
     id_evento char(1) not null,
     constraint IDGRUPPO primary key (id));

create table GUIDE (
     email char(1) not null,
     nome char(1) not null,
     cognome char(1) not null,
     password char(1) not null,
     sesso char(1) not null,
     titolo char(1) not null,
     anno_titolo char(1) not null,
     constraint IDGUIDA primary key (email));

create table LINGUE (
     nome char(20) not null,
     constraint IDLINGUA primary key (nome));

create table METODI (
     nome char(1) not null,
     constraint IDMETODO primary key (nome));

create table ORDINI (
     prezzo char(1) not null,
     id -- Compound attribute -- not null,
     cliente char(1) not null,
     pagamento char(1) not null,
     constraint IDORDINE primary key (id -- Compound attribute --));

create table PAGAMENTI (
     n_carta char(1) not null,
     IBAN char(1) not null,
     id char(1) not null,
     descrizione  char(1) not null,
     metodo char(1) not null,
     constraint IDPAGAMENTO primary key (id));

create table SCONTI (
     fascia char(1) not null,
     eta_soglia char(1) not null,
     percentuale char(1) not null,
     constraint IDSCONTO primary key (fascia));

create table VISITE (
     nome char(20) not null,
     descrizione char(100) not null,
     luogo char(40) not null,
     durata int not null,
     constraint IDVISITA primary key (nome));


-- Constraints Section
-- ___________________ 

alter table BIGLIETTI add constraint FKINGRESSO
     foreign key (gruppo)
     references GRUPPI (id);

alter table BIGLIETTI add constraint FKVALIDAZIONE
     foreign key (ordine -- Compound attribute --)
     references ORDINI (id -- Compound attribute --);

alter table CLIENTI add constraint FKPREFERENZA
     foreign key (lingua)
     references LINGUE (nome);

alter table COMPETENZE add constraint FKSTUDIO
     foreign key (lingua)
     references LINGUE (nome);

alter table COMPETENZE add constraint FKPOSSESSO
     foreign key (id_guida)
     references GUIDE (email);

alter table EVENTI add constraint FKORGANIZAZIONE
     foreign key (visita)
     references VISITE (nome);

alter table GRUPPI add constraint FKDIREZIONE
     foreign key (lingua, id_guida)
     references COMPETENZE (lingua, id_guida);

alter table GRUPPI add constraint FKPARTECIPAZIONE
     foreign key (id_evento)
     references EVENTI (Id);

alter table ORDINI add constraint FKEFFETTUAZIONE
     foreign key (cliente)
     references CLIENTI (email);

alter table ORDINI add constraint FKCREDITO
     foreign key (pagamento)
     references PAGAMENTI (id);

alter table PAGAMENTI add constraint FKUTILIZZO
     foreign key (metodo)
     references METODI (nome);


-- Index Section
-- _____________ 


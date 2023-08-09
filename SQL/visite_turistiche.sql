-- crea le query di insert per le tabelle del database visite_turistiche
create table SCONTI (
     fascia int AUTO_INCREMENT,
     eta_soglia int not null,
     percentuale int not null,
     constraint IDSCONTO primary key (fascia))ENGINE=InnoDB;

create table LINGUE (
     nome char(20) not null,
     constraint IDLINGUA primary key (nome))ENGINE=InnoDB;

create table METODI (
     nome char(20) not null CHECK (nome in ('Carta di credito', 'PayPal', 'Bonifico')),
     constraint IDMETODO primary key (nome))ENGINE=InnoDB;


create table VISITE (
     nome char(50) not null,
     descrizione char(100) not null,
     luogo char(40) not null,
     durata time not null,
     constraint IDVISITA primary key (nome))ENGINE=InnoDB;

create table CLIENTI (
     email char(40) not null,
     nome char(20) not null,
     cognome char(20) not null,
     password char(20) not null,
     nazionalita char(20) not null,
     telefono int not null UNIQUE,
     lingua char(20) not null,
     constraint IDCLIENTE primary key (email))ENGINE=InnoDB;

create table GUIDE (
     email char(40) not null,
     nome char(20) not null,
     cognome char(20) not null,
     password char(20) not null,
     sesso char(1) not null CHECK (sesso in ('M', 'F')),
     titolo char(20) not null CHECK (titolo in ('diploma','Laurea', 'Dottorato', 'Master')),
     anno_titolo int not null,
     constraint IDGUIDA primary key (email))ENGINE=InnoDB;

create table COMPETENZE (
     lingua char(20) not null,
     guida char(40) not null,
     livello char(2) not null CHECK (livello in ('B2', 'C1', 'C2')),
     constraint IDCOMPETENZA primary key (lingua, guida))ENGINE=InnoDB;

create table EVENTI (
     Id int not null AUTO_INCREMENT,
     prezzo int not null,
     data DATETIME not null,
     visita char(20) not null,
     constraint IDEVENTO primary key (Id))ENGINE=InnoDB;

create table GRUPPI (
     ora time not null,
     id int not null AUTO_INCREMENT,
     data date not null,
     max_persone int not null,
     min_persone int not null,
     lingua char(20) not null,
     id_guida char(40) not null,
     id_evento int not null,
     constraint IDGRUPPO primary key (id))ENGINE=InnoDB;

create table BIGLIETTI (
     nome char(20) not null,
     comgnome char(20) not null,
     eta int not null,
     id int not null AUTO_INCREMENT,
     gruppo int not null,
     ordine int,
     constraint IDBIGLIETTO primary key (id))ENGINE=InnoDB;



create table ORDINI (
     prezzo int,
     id int  AUTO_INCREMENT,
     cliente char(40) not null,
     pagamento int,
     constraint IDORDINE primary key (id))ENGINE=InnoDB;

create table PAGAMENTI (
     n_carta int UNIQUE,
     IBAN char(27) UNIQUE,
     id int not null AUTO_INCREMENT,
     descrizione  char(100) ,
     metodo char(20) not null,
     constraint IDPAGAMENTO primary key (id))ENGINE=InnoDB;




alter table BIGLIETTI add constraint FKINGRESSO
     foreign key (gruppo) references GRUPPI (id)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table BIGLIETTI add constraint FKVALIDAZIONE
     foreign key (ordine) references ORDINI (id)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table CLIENTI add constraint FKPREFERENZA
     foreign key (lingua) references LINGUE (nome)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table COMPETENZE add constraint FKSTUDIO
     foreign key (lingua) references LINGUE (nome)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table COMPETENZE add constraint FKPOSSESSO
     foreign key (guida) references GUIDE (email)
          ON UPDATE CASCADE
          ON DELETE CASCADE;

alter table EVENTI add constraint FKORGANIZAZIONE
     foreign key (visita) references VISITE (nome)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table GRUPPI add constraint FKDIREZIONE
     foreign key (lingua, id_guida) references COMPETENZE (lingua, guida)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table GRUPPI add constraint FKPARTECIPAZIONE
     foreign key (id_evento) references EVENTI (Id)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table ORDINI add constraint FKEFFETTUAZIONE
     foreign key (cliente) references CLIENTI (email)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table ORDINI add constraint FKCREDITO
     foreign key (pagamento) references PAGAMENTI (id)
          ON DELETE CASCADE
          ON UPDATE CASCADE;

alter table PAGAMENTI add constraint FKUTILIZZO
     foreign key (metodo) references METODI (nome)
          ON DELETE CASCADE
          ON UPDATE CASCADE;





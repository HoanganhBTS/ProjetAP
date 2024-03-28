#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: logement
#------------------------------------------------------------

CREATE TABLE logement(
        id_logement     Int  Auto_increment  NOT NULL ,
        lieu_logement   Varchar (50) NOT NULL ,
        prix_logement   Float NOT NULL ,
        taille_logement Int NOT NULL ,
        type_logement   Char (50) NOT NULL
	,CONSTRAINT logement_PK PRIMARY KEY (id_logement)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: client
#------------------------------------------------------------

CREATE TABLE client(
        id_client             Int  Auto_increment  NOT NULL ,
        nom_client            Varchar (50) NOT NULL ,
        prenom_client         Varchar (50) NOT NULL ,
        telephone_client      Int NOT NULL ,
        adresse_client        Varchar (50) NOT NULL ,
        adresse_mail_client   Varchar (50) NOT NULL ,
        date_naissance_client Date NOT NULL
	,CONSTRAINT client_PK PRIMARY KEY (id_client)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: reservation
#------------------------------------------------------------

CREATE TABLE reservation(
        id_reservation         Int  Auto_increment  NOT NULL ,
        date_debut_reservation Date NOT NULL ,
        date_fin_reservation   Date NOT NULL ,
        prix_reservation       Float NOT NULL ,
        validation_reservation TinyINT NOT NULL ,
        id_client              Int NOT NULL ,
        id_logement            Int NOT NULL
	,CONSTRAINT reservation_PK PRIMARY KEY (id_reservation)

	,CONSTRAINT reservation_client_FK FOREIGN KEY (id_client) REFERENCES client(id_client)
	,CONSTRAINT reservation_logement0_FK FOREIGN KEY (id_logement) REFERENCES logement(id_logement)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: prestation
#------------------------------------------------------------

CREATE TABLE prestation(
        id_prestation   Int  Auto_increment  NOT NULL ,
        nom_prestation  Varchar (50) NOT NULL ,
        prix_prestation Float NOT NULL
	,CONSTRAINT prestation_PK PRIMARY KEY (id_prestation)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: contient
#------------------------------------------------------------

CREATE TABLE contient(
        id_reservation Int NOT NULL ,
        id_prestation  Int NOT NULL
	,CONSTRAINT contient_PK PRIMARY KEY (id_reservation,id_prestation)

	,CONSTRAINT contient_reservation_FK FOREIGN KEY (id_reservation) REFERENCES reservation(id_reservation)
	,CONSTRAINT contient_prestation0_FK FOREIGN KEY (id_prestation) REFERENCES prestation(id_prestation)
)ENGINE=InnoDB;
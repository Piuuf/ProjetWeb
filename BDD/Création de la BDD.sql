#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: ORDERS
#------------------------------------------------------------

CREATE TABLE ORDERS(
        id_orders       int (11) Auto_increment  NOT NULL ,
        total_price     Int NOT NULL ,
        delivery_status Varchar (25) ,
        date_order      Date ,
        id_users        Int NOT NULL ,
        PRIMARY KEY (id_orders )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: USERS
#------------------------------------------------------------

CREATE TABLE USERS(
        id_users   int (11) Auto_increment  NOT NULL ,
        first_name Varchar (50) NOT NULL ,
        name       Varchar (50) NOT NULL ,
        email      Varchar (50) NOT NULL ,
        user_name  Varchar (50) NOT NULL ,
        password   Varchar (25) NOT NULL ,
        status     Int NOT NULL ,
        PRIMARY KEY (id_users )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: PICTURES
#------------------------------------------------------------

CREATE TABLE PICTURES(
        id_picture     int (11) Auto_increment  NOT NULL ,
        picture        Varchar (50) NOT NULL ,
        uploading_date Date NOT NULL ,
        id_event       Int NOT NULL ,
        PRIMARY KEY (id_picture )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ACTIVITY
#------------------------------------------------------------

CREATE TABLE ACTIVITY(
        id_activity      int (11) Auto_increment  NOT NULL ,
        activity_name    Varchar (50) NOT NULL ,
        description_text Varchar (500) NOT NULL ,
        activity_date    Date NOT NULL ,
        activity_picture Varchar (25) NOT NULL ,
        id_users         Int NOT NULL ,
        PRIMARY KEY (id_activity )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: COMMENTARIES
#------------------------------------------------------------

CREATE TABLE COMMENTARIES(
        id_commentary int (11) Auto_increment  NOT NULL ,
        comment_text  Varchar (140) NOT NULL ,
        comment_date  Date NOT NULL ,
        id_users      Int NOT NULL ,
        id_picture    Int NOT NULL ,
        PRIMARY KEY (id_commentary )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: EVENTS
#------------------------------------------------------------

CREATE TABLE EVENTS(
        id_event    int (11) Auto_increment  NOT NULL ,
        event_name  Varchar (50) NOT NULL ,
        detail_text Varchar (500) NOT NULL ,
        abstract    Varchar (140) NOT NULL ,
        event_date  Date NOT NULL ,
        PRIMARY KEY (id_event )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: STORE
#------------------------------------------------------------

CREATE TABLE STORE(
        id_store        int (11) Auto_increment  NOT NULL ,
        product_name    Varchar (50) NOT NULL ,
        price           Int NOT NULL ,
        notice          Varchar (250) NOT NULL ,
        product_picture Varchar (25) NOT NULL ,
        category        Varchar (25) NOT NULL ,
        quantity        Int ,
        size            Varchar (25) ,
        PRIMARY KEY (id_store )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Contrepeterie
#------------------------------------------------------------

CREATE TABLE Contrepeterie(
        id_contro    int (11) Auto_increment  NOT NULL ,
        contropetrie Varchar (140) NOT NULL ,
        PRIMARY KEY (id_contro )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ORDERS_CONTENT
#------------------------------------------------------------

CREATE TABLE ORDERS_CONTENT(
        amount     Int NOT NULL ,
        order_size Char (25) ,
        id_orders  Int NOT NULL ,
        id_store   Int NOT NULL ,
        PRIMARY KEY (id_orders ,id_store )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ELECTION
#------------------------------------------------------------

CREATE TABLE ELECTION(
        vote        Bool NOT NULL ,
        id_activity Int NOT NULL ,
        id_users    Int NOT NULL ,
        PRIMARY KEY (id_activity ,id_users )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: LIKE_BUTTON
#------------------------------------------------------------

CREATE TABLE LIKE_BUTTON(
        click_like Bool NOT NULL ,
        id_users   Int NOT NULL ,
        id_picture Int NOT NULL ,
        PRIMARY KEY (id_users ,id_picture )
)ENGINE=InnoDB;

ALTER TABLE ORDERS ADD CONSTRAINT FK_ORDERS_id_users FOREIGN KEY (id_users) REFERENCES USERS(id_users);
ALTER TABLE PICTURES ADD CONSTRAINT FK_PICTURES_id_event FOREIGN KEY (id_event) REFERENCES EVENTS(id_event);
ALTER TABLE ACTIVITY ADD CONSTRAINT FK_ACTIVITY_id_users FOREIGN KEY (id_users) REFERENCES USERS(id_users);
ALTER TABLE COMMENTARIES ADD CONSTRAINT FK_COMMENTARIES_id_users FOREIGN KEY (id_users) REFERENCES USERS(id_users);
ALTER TABLE COMMENTARIES ADD CONSTRAINT FK_COMMENTARIES_id_picture FOREIGN KEY (id_picture) REFERENCES PICTURES(id_picture);
ALTER TABLE ORDERS_CONTENT ADD CONSTRAINT FK_ORDERS_CONTENT_id_orders FOREIGN KEY (id_orders) REFERENCES ORDERS(id_orders);
ALTER TABLE ORDERS_CONTENT ADD CONSTRAINT FK_ORDERS_CONTENT_id_store FOREIGN KEY (id_store) REFERENCES STORE(id_store);
ALTER TABLE ELECTION ADD CONSTRAINT FK_ELECTION_id_activity FOREIGN KEY (id_activity) REFERENCES ACTIVITY(id_activity);
ALTER TABLE ELECTION ADD CONSTRAINT FK_ELECTION_id_users FOREIGN KEY (id_users) REFERENCES USERS(id_users);
ALTER TABLE LIKE_BUTTON ADD CONSTRAINT FK_LIKE_BUTTON_id_users FOREIGN KEY (id_users) REFERENCES USERS(id_users);
ALTER TABLE LIKE_BUTTON ADD CONSTRAINT FK_LIKE_BUTTON_id_picture FOREIGN KEY (id_picture) REFERENCES PICTURES(id_picture);

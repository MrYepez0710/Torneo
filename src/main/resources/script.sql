DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS Equipos;
DROP TABLE IF EXISTS Torneo;

CREATE TABLE calendario (
    id                   INTEGER NOT NULL AUTO_INCREMENT,
    nro_fecha             VARCHAR(50) NOT NULL,
    equipo_local          INTEGER NOT NULL,
    equipo_visitante      INTEGER NOT NULL,
    resultado_local       INTEGER NOT NULL,
    resultado_visitante   INTEGER NOT NULL,
    id_torneo             INTEGER NOT NULL,
    PRIMARY KEY ( id )
);

CREATE TABLE equipos (
    id             INTEGER NOT NULL AUTO_INCREMENT,
    nombre_equipo   VARCHAR(50) NOT NULL,
    jugador        VARCHAR(50) NOT NULL,
    escudo         BLOB,
    id_torneo       INTEGER NOT NULL,
    PRIMARY KEY ( id )
);

CREATE TABLE torneo (
    id                INTEGER NOT NULL AUTO_INCREMENT,
    nombre_torneo      VARCHAR(50) NOT NULL,
    tipo_torneo        INTEGER NOT NULL,
    cantidad_equipos   INTEGER NOT NULL,
    PRIMARY KEY ( id )
);

ALTER TABLE calendario
    ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipo_local )
        REFERENCES equipos ( id );

ALTER TABLE calendario
    ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipo_visitante )
        REFERENCES equipos ( id );

ALTER TABLE calendario
    ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( id_torneo )
        REFERENCES torneo ( id );

ALTER TABLE equipos
    ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( id_torneo )
        REFERENCES torneo ( id );

INSERT INTO torneo (nombre_torneo, tipo_torneo, cantidad_equipos) VALUES ('LIGA 1', '1', '10'); 
INSERT INTO torneo (nombre_torneo, tipo_torneo, cantidad_equipos) VALUES ('LIGA 2', '1', '6'); 
INSERT INTO torneo (nombre_torneo, tipo_torneo, cantidad_equipos) VALUES ('COPA 1', '2', '8');         
        
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 1', 'Jugador 1', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 2', 'Jugador 2', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 3', 'Jugador 3', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 4', 'Jugador 4', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 5', 'Jugador 5', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 6', 'Jugador 6', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 7', 'Jugador 7', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 8', 'Jugador 8', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 9', 'Jugador 9', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 10', 'Jugador 10', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 1', 'Jugador 1', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 2', 'Jugador 2', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 3', 'Jugador 3', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 4', 'Jugador 4', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 5', 'Jugador 5', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 6', 'Jugador 6', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 1', 'Jugador 1', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 2', 'Jugador 2', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 3', 'Jugador 3', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 4', 'Jugador 4', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 5', 'Jugador 5', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 6', 'Jugador 6', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 7', 'Jugador 7', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 8', 'Jugador 8', '3');  

--------------------------------- POSTGRES-------------------------------------------------------
DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS Equipos;
DROP TABLE IF EXISTS Torneo;

CREATE TABLE calendario (
    id                    SERIAL PRIMARY KEY,
    nro_fecha             VARCHAR(50) NOT NULL,
    equipo_local          INTEGER NOT NULL,
    equipo_visitante      INTEGER NOT NULL,
    resultado_local       INTEGER NOT NULL,
    resultado_visitante   INTEGER NOT NULL,
    id_torneo             INTEGER NOT NULL
);

CREATE TABLE equipos (
    id             SERIAL PRIMARY KEY,
    nombre_equipo   VARCHAR(50) NOT NULL,
    jugador        VARCHAR(50) NOT NULL,
    escudo         bytea,
    id_torneo       INTEGER NOT NULL
);

CREATE TABLE torneo (
    id                SERIAL PRIMARY KEY,
    nombre_torneo      VARCHAR(50) NOT NULL,
    tipo_torneo        INTEGER NOT NULL,
    cantidad_equipos   INTEGER NOT NULL
);

ALTER TABLE calendario
    ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipo_local )
        REFERENCES equipos ( id );

ALTER TABLE calendario
    ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipo_visitante )
        REFERENCES equipos ( id );

ALTER TABLE calendario
    ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( id_torneo )
        REFERENCES torneo ( id );

ALTER TABLE equipos
    ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( id_torneo )
        REFERENCES torneo ( id );

INSERT INTO torneo (nombre_torneo, tipo_torneo, cantidad_equipos) VALUES ('LIGA 1', '1', '10'); 
INSERT INTO torneo (nombre_torneo, tipo_torneo, cantidad_equipos) VALUES ('LIGA 2', '1', '6'); 
INSERT INTO torneo (nombre_torneo, tipo_torneo, cantidad_equipos) VALUES ('COPA 1', '2', '8');         
        
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 1', 'Jugador 1', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 2', 'Jugador 2', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 3', 'Jugador 3', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 4', 'Jugador 4', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 5', 'Jugador 5', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 6', 'Jugador 6', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 7', 'Jugador 7', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 8', 'Jugador 8', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 9', 'Jugador 9', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 10', 'Jugador 10', '1');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 1', 'Jugador 1', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 2', 'Jugador 2', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 3', 'Jugador 3', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 4', 'Jugador 4', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 5', 'Jugador 5', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 6', 'Jugador 6', '2');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 1', 'Jugador 1', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 2', 'Jugador 2', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 3', 'Jugador 3', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 4', 'Jugador 4', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 5', 'Jugador 5', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 6', 'Jugador 6', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 7', 'Jugador 7', '3');      
INSERT INTO equipos (nombre_equipo, jugador, id_torneo) VALUES ('Equipo 8', 'Jugador 8', '3');  












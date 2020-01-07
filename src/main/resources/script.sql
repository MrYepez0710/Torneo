DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS Equipos;
DROP TABLE IF EXISTS Torneo;

CREATE TABLE calendario (
    id                   INTEGER NOT NULL AUTO_INCREMENT,
    nrofecha             VARCHAR(50) NOT NULL,
    equipolocal          INTEGER NOT NULL,
    equipovisitante      INTEGER NOT NULL,
    resultadolocal       INTEGER NOT NULL,
    resultadovisitante   INTEGER NOT NULL,
    idtorneo             INTEGER NOT NULL,
    PRIMARY KEY ( id )
);

CREATE TABLE equipos (
    id             INTEGER NOT NULL AUTO_INCREMENT,
    nombreequipo   VARCHAR(50) NOT NULL,
    jugador        VARCHAR(50) NOT NULL,
    escudo         BLOB,
    idtorneo       INTEGER NOT NULL,
    PRIMARY KEY ( id )
);

CREATE TABLE torneo (
    id                INTEGER NOT NULL AUTO_INCREMENT,
    nombretorneo      VARCHAR(50) NOT NULL,
    tipotorneo        INTEGER NOT NULL,
    cantidadequipos   INTEGER NOT NULL,
    PRIMARY KEY ( id )
);

ALTER TABLE calendario
    ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipolocal )
        REFERENCES equipos ( id );

ALTER TABLE calendario
    ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipovisitante )
        REFERENCES equipos ( id );

ALTER TABLE calendario
    ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( idtorneo )
        REFERENCES torneo ( id );

ALTER TABLE equipos
    ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( idtorneo )
        REFERENCES torneo ( id );

INSERT INTO torneo (nombretorneo, tipotorneo, cantidadequipos) VALUES ('LIGA 1', '1', '10'); 
INSERT INTO torneo (nombretorneo, tipotorneo, cantidadequipos) VALUES ('LIGA 2', '1', '6'); 
INSERT INTO torneo (nombretorneo, tipotorneo, cantidadequipos) VALUES ('COPA 1', '2', '8');         
        
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 1', 'Jugador 1', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 2', 'Jugador 2', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 3', 'Jugador 3', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 4', 'Jugador 4', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 5', 'Jugador 5', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 6', 'Jugador 6', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 7', 'Jugador 7', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 8', 'Jugador 8', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 9', 'Jugador 9', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 10', 'Jugador 10', '1');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 1', 'Jugador 1', '2');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 2', 'Jugador 2', '2');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 3', 'Jugador 3', '2');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 4', 'Jugador 4', '2');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 5', 'Jugador 5', '2');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 6', 'Jugador 6', '2');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 1', 'Jugador 1', '3');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 2', 'Jugador 2', '3');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 3', 'Jugador 3', '3');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 4', 'Jugador 4', '3');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 5', 'Jugador 5', '3');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 6', 'Jugador 6', '3');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 7', 'Jugador 7', '3');      
INSERT INTO equipos (nombreequipo, jugador, idtorneo) VALUES ('Equipo 8', 'Jugador 8', '3');  













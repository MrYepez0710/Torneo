DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS participantes;
DROP TABLE IF EXISTS Torneo;
DROP TABLE IF EXISTS Equipo;
DROP TABLE IF EXISTS Jugador;
DROP TABLE IF EXISTS tipotorneo;

CREATE TABLE calendario (
    id                  INTEGER NOT NULL PRIMARY KEY,
    nrofecha            VARCHAR(50) NOT NULL,
    equipolocal         INTEGER NOT NULL,
    equipovisitante     INTEGER NOT NULL,
    resultadolocal      INTEGER NOT NULL,
    resultadovisitante  INTEGER NOT NULL,
    idtorneo            INTEGER NOT NULL
);

CREATE TABLE equipo (
    id      INTEGER NOT NULL PRIMARY KEY,
    nombre  VARCHAR(50) NOT NULL,
    escudo  VARCHAR(4096) NOT NULL
);

CREATE TABLE jugador (
    id          INTEGER NOT NULL PRIMARY KEY,
    nombre      VARCHAR(50) NOT NULL,
    usuario     VARCHAR(50) NOT NULL,
    contraseña  VARCHAR(20) NOT NULL
);

CREATE TABLE participantes (
    id        INTEGER NOT NULL PRIMARY KEY,
    equipo    INTEGER NOT NULL,
    jugador   INTEGER NOT NULL,
    idtorneo  INTEGER NOT NULL
);

CREATE TABLE tipotorneo (
    id           INTEGER NOT NULL PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    descripcion  VARCHAR(150) NOT NULL
);

CREATE TABLE torneo (
    id               INTEGER NOT NULL PRIMARY KEY,
    nombretorneo     VARCHAR(50) NOT NULL,
    tipotorneo       INTEGER NOT NULL,
    cantidadequipos  INTEGER NOT NULL
);

ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipolocal )REFERENCES participantes ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipovisitante )REFERENCES participantes ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( idtorneo )REFERENCES torneo ( id );
ALTER TABLE participantes ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( idtorneo )REFERENCES torneo ( id );
ALTER TABLE participantes ADD CONSTRAINT participantes_equipo_fk FOREIGN KEY ( equipo )REFERENCES equipo ( id );
ALTER TABLE participantes ADD CONSTRAINT participantes_jugador_fk FOREIGN KEY ( jugador )REFERENCES jugador ( id );
ALTER TABLE torneo ADD CONSTRAINT torneo_tipotorneo_fk FOREIGN KEY ( tipotorneo )REFERENCES tipotorneo ( id );

--------------------------------- POSTGRES-------------------------------------------------------
DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS participante;
DROP TABLE IF EXISTS Torneo;
DROP TABLE IF EXISTS Equipo;
DROP TABLE IF EXISTS Jugador;
DROP TABLE IF EXISTS tipotorneo;

CREATE TABLE calendario (
    id                  SERIAL PRIMARY KEY,
    nrofecha            VARCHAR(50) NOT NULL,
    equipolocal         INTEGER NOT NULL,
    equipovisitante     INTEGER NOT NULL,
    resultadolocal      INTEGER NOT NULL,
    resultadovisitante  INTEGER NOT NULL,
    idtorneo            INTEGER NOT NULL
);

CREATE TABLE equipo (
    id      SERIAL PRIMARY KEY,
    nombre  VARCHAR(50) NOT NULL,
    escudo  CHAR(4096)
);

CREATE TABLE jugador (
    id          SERIAL PRIMARY KEY,
    nombre      VARCHAR(50) NOT NULL,
    usuario     VARCHAR(50) NOT NULL,
    contraseña  VARCHAR(20) NOT NULL
);

CREATE TABLE participante (
    id        SERIAL PRIMARY KEY,
    equipo    INTEGER NOT NULL,
    jugador   INTEGER NOT NULL,
    idtorneo  INTEGER NOT NULL
);

CREATE TABLE tipotorneo (
    id           SERIAL PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    descripcion  VARCHAR(150) NOT NULL
);

CREATE TABLE torneo (
    id               SERIAL PRIMARY KEY,
    nombretorneo     VARCHAR(50) NOT NULL,
    tipotorneo       INTEGER NOT NULL,
    cantidadequipos  INTEGER NOT NULL
);

ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipolocal )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipovisitante )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( idtorneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( idtorneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_equipo_fk FOREIGN KEY ( equipo )REFERENCES equipo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_jugador_fk FOREIGN KEY ( jugador )REFERENCES jugador ( id );
ALTER TABLE torneo ADD CONSTRAINT torneo_tipotorneo_fk FOREIGN KEY ( tipotorneo )REFERENCES tipotorneo ( id );

------------------------ SCRIPT PARA HEROKU ------------------------
DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS participante;
DROP TABLE IF EXISTS Torneo;
DROP TABLE IF EXISTS Equipo;
DROP TABLE IF EXISTS Jugador;
DROP TABLE IF EXISTS tipotorneo;

CREATE TABLE calendario (id SERIAL PRIMARY KEY,nrofecha VARCHAR(50) NOT NULL, equipolocal INTEGER NOT NULL,equipovisitante INTEGER NOT NULL, resultadolocal INTEGER NOT NULL, resultadovisitante  INTEGER NOT NULL,idtorneo INTEGER NOT NULL);
CREATE TABLE equipo (id SERIAL PRIMARY KEY,nombre  VARCHAR(50) NOT NULL, escudo  CHAR(4096));
CREATE TABLE jugador (id SERIAL PRIMARY KEY,nombre VARCHAR(50) NOT NULL, usuario VARCHAR(50) NOT NULL, contraseña  VARCHAR(20) NOT NULL);
CREATE TABLE participante (id SERIAL PRIMARY KEY, equipo INTEGER NOT NULL, jugador INTEGER NOT NULL, idtorneo  INTEGER NOT NULL);
CREATE TABLE tipotorneo (id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL, descripcion  VARCHAR(150) NOT NULL);
CREATE TABLE torneo (id SERIAL PRIMARY KEY,nombretorneo VARCHAR(50) NOT NULL, tipotorneo INTEGER NOT NULL, cantidadequipos  INTEGER NOT NULL);
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipolocal )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipovisitante )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( idtorneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( idtorneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_equipo_fk FOREIGN KEY ( equipo )REFERENCES equipo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_jugador_fk FOREIGN KEY ( jugador )REFERENCES jugador ( id );
ALTER TABLE torneo ADD CONSTRAINT torneo_tipotorneo_fk FOREIGN KEY ( tipotorneo )REFERENCES tipotorneo ( id );


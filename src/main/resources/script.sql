DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS participantes;
DROP TABLE IF EXISTS Torneo;
DROP TABLE IF EXISTS Equipo;
DROP TABLE IF EXISTS Jugador;
DROP TABLE IF EXISTS tipo_torneo;

CREATE TABLE calendario (
    id                  INTEGER NOT NULL PRIMARY KEY,
    nro_fecha            VARCHAR(50) NOT NULL,
    equipo_local         INTEGER NOT NULL,
    equipo_visitante     INTEGER NOT NULL,
    resultado_local      INTEGER NOT NULL,
    resultado_visitante  INTEGER NOT NULL,
    id_torneo            INTEGER NOT NULL
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
    password  VARCHAR(20) NOT NULL
);

CREATE TABLE participantes (
    id        INTEGER NOT NULL PRIMARY KEY,
    equipo    INTEGER NOT NULL,
    jugador   INTEGER NOT NULL,
    id_torneo  INTEGER NOT NULL
);

CREATE TABLE tipo_torneo (
    id           INTEGER NOT NULL PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    descripcion  VARCHAR(150) NOT NULL
);

CREATE TABLE torneo (
    id               INTEGER NOT NULL PRIMARY KEY,
    nombre_torneo     VARCHAR(50) NOT NULL,
    tipo_torneo       INTEGER NOT NULL,
    cantidad_equipos  INTEGER NOT NULL
);

ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipo_local )REFERENCES participantes ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipo_visitante )REFERENCES participantes ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( id_torneo )REFERENCES torneo ( id );
ALTER TABLE participantes ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( id_torneo )REFERENCES torneo ( id );
ALTER TABLE participantes ADD CONSTRAINT participantes_equipo_fk FOREIGN KEY ( equipo )REFERENCES equipo ( id );
ALTER TABLE participantes ADD CONSTRAINT participantes_jugador_fk FOREIGN KEY ( jugador )REFERENCES jugador ( id );
ALTER TABLE torneo ADD CONSTRAINT torneo_tipotorneo_fk FOREIGN KEY ( tipo_torneo )REFERENCES tipo_torneo ( id );

--------------------------------- POSTGRES-------------------------------------------------------
DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS participante;
DROP TABLE IF EXISTS Torneo;
DROP TABLE IF EXISTS Equipo;
DROP TABLE IF EXISTS Jugador;
DROP TABLE IF EXISTS tipo_torneo;

CREATE TABLE calendario (
    id                  SERIAL PRIMARY KEY,
    nro_fecha            VARCHAR(50) NOT NULL,
    equipo_local         INTEGER NOT NULL,
    equipo_visitante     INTEGER NOT NULL,
    resultado_local      INTEGER NOT NULL,
    resultado_visitante  INTEGER NOT NULL,
    id_torneo            INTEGER NOT NULL
);

CREATE TABLE equipo (
    id      SERIAL PRIMARY KEY,
    nombre  VARCHAR(50) NOT NULL,
    escudo  CHAR(4096)
);

CREATE TABLE jugador (
    id          SERIAL PRIMARY KEY,
    nombre      VARCHAR(50) NOT NULL,
    usuario     VARCHAR(50) NOT NULL UNIQUE,
    password  VARCHAR(20) NOT NULL,
    rol       INTEGER NOT NULL
);

CREATE TABLE participante (
    id        SERIAL PRIMARY KEY,
    equipo    INTEGER NOT NULL,
    jugador   INTEGER NOT NULL,
    id_torneo  INTEGER NOT NULL
);

CREATE TABLE tipo_torneo (
    id           SERIAL PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    descripcion  VARCHAR(150) NOT NULL
);

CREATE TABLE torneo (
    id               SERIAL PRIMARY KEY,
    nombre_torneo     VARCHAR(50) NOT NULL UNIQUE,
    tipo_torneo       INTEGER NOT NULL,
    cantidad_equipos  INTEGER NOT NULL,
    estado            CHAR(1)
);

ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipo_local )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipo_visitante )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( id_torneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( id_torneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_equipo_fk FOREIGN KEY ( equipo )REFERENCES equipo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_jugador_fk FOREIGN KEY ( jugador )REFERENCES jugador ( id );
ALTER TABLE torneo ADD CONSTRAINT torneo_tipotorneo_fk FOREIGN KEY ( tipo_torneo )REFERENCES tipo_torneo ( id );

------------------------ SCRIPT PARA HEROKU ------------------------
DROP TABLE IF EXISTS calendario;
DROP TABLE IF EXISTS participante;
DROP TABLE IF EXISTS Torneo;
DROP TABLE IF EXISTS Equipo;
DROP TABLE IF EXISTS Jugador;
DROP TABLE IF EXISTS tipo_torneo;
CREATE TABLE calendario (id SERIAL PRIMARY KEY,nro_fecha VARCHAR(50) NOT NULL, equipo_local INTEGER NOT NULL,equipo_visitante INTEGER NOT NULL, resultado_local INTEGER NOT NULL, resultado_visitante  INTEGER NOT NULL,id_torneo INTEGER NOT NULL);
CREATE TABLE equipo (id SERIAL PRIMARY KEY,nombre  VARCHAR(50) NOT NULL, escudo  CHAR(4096));
CREATE TABLE jugador (id SERIAL PRIMARY KEY,nombre VARCHAR(50) NOT NULL, usuario VARCHAR(50) NOT NULL UNIQUE, password  VARCHAR(20) NOT NULL, rol INTEGER NOT NULL);
CREATE TABLE participante (id SERIAL PRIMARY KEY, equipo INTEGER NOT NULL, jugador INTEGER NOT NULL, id_torneo  INTEGER NOT NULL);
CREATE TABLE tipo_torneo (id SERIAL PRIMARY KEY, nombre VARCHAR(100) NOT NULL, descripcion  VARCHAR(150) NOT NULL);
CREATE TABLE torneo (id SERIAL PRIMARY KEY,nombre_torneo VARCHAR(50) NOT NULL UNIQUE, tipo_torneo INTEGER NOT NULL, cantidad_equipos  INTEGER NOT NULL, estado CHAR(1));
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fk FOREIGN KEY ( equipo_local )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_equipos_fkv2 FOREIGN KEY ( equipo_visitante )REFERENCES participante ( id );
ALTER TABLE calendario ADD CONSTRAINT calendario_torneo_fk FOREIGN KEY ( id_torneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT equipos_torneo_fk FOREIGN KEY ( id_torneo )REFERENCES torneo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_equipo_fk FOREIGN KEY ( equipo )REFERENCES equipo ( id );
ALTER TABLE participante ADD CONSTRAINT participantes_jugador_fk FOREIGN KEY ( jugador )REFERENCES jugador ( id );
ALTER TABLE torneo ADD CONSTRAINT torneo_tipotorneo_fk FOREIGN KEY ( tipo_torneo )REFERENCES tipo_torneo ( id );



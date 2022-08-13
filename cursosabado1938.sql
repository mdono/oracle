-- este es un comentario y no afecta el codigo 
-- nombre de la tabla
-- se crean los atributos
-- nombre_atributo, tipo, longitud (*) / clave - restriccion
-- M N // MANUEL
-- HOLA****** // PARA CUANDO SE DEFINE A TRAVES DE UN VACHAR
-- HOLA // PARA CUANDO LO DEFINIMOS A TRAVES DE UN VARCHAR2

CREATE TABLE nombre_tabla(
    nombre_atributo1 VARCHAR(10),
    nombre_atributo2 VARCHAR2(10)
);

CREATE TABLE usuario(
    nombre VARCHAR2(30),
    clave VARCHAR2(10)
);

SELECT * FROM all_tables;
DROP TABLE usuario;

CREATE TABLE departamento(
    depto_id NUMBER(9),
    nombre VARCHAR2(100),
    localidad VARCHAR2(300),
    fecha_creacion DATE DEFAULT SYSDATE, 
    CONSTRAINT departamento_pk PRIMARY KEY(depto_id)
);

DROP TABLE departamento;

CREATE TABLE departamento(
    depto_id NUMBER(9) PRIMARY KEY,
    nombre VARCHAR2(100),
    localidad VARCHAR2(300),
    fecha_creacion DATE DEFAULT SYSDATE
);

SELECT * FROM departamento;
DESCRIBE departamento;

INSERT INTO departamento(depto_id, nombre, localidad) VALUES(
    0101,
    'Guatemala',
    'Guatemala'
);

SELECT * FROM departamento;
DROP TABLE departamento;

CREATE TABLE departamento(
    depto_id NUMBER(9) PRIMARY KEY,
    nombre VARCHAR2(100),
    localidad VARCHAR2(300),
    fecha_creacion DATE DEFAULT SYSDATE,
    creacion TIMESTAMP DEFAULT SYSDATE,
    estado CHAR(1)
);

SELECT * FROM departamento;

INSERT INTO departamento(depto_id, nombre, localidad, estado) VALUES(
    0101,
    'Guatemala',
    'Guatemala',
    'a'
);

CREATE TABLE date_tab (
   ts_col      TIMESTAMP,
   tsltz_col   TIMESTAMP WITH LOCAL TIME ZONE,
   tstz_col    TIMESTAMP WITH TIME ZONE);


ALTER SESSION SET TIME_ZONE = '-8:00';

INSERT INTO date_tab VALUES (  
   TIMESTAMP'1999-12-01 10:00:00',
   TIMESTAMP'1999-12-01 10:00:00',
   TIMESTAMP'1999-12-01 10:00:00');
   
INSERT INTO date_tab VALUES (
   TIMESTAMP'1999-12-02 10:00:00 -8:00', 
   TIMESTAMP'1999-12-02 10:00:00 -8:00',
   TIMESTAMP'1999-12-02 10:00:00 -8:00');

SELECT TO_CHAR(ts_col, 'DD-MON-YYYY HH24:MI:SSxFF') AS ts_date,
   TO_CHAR(tstz_col, 'DD-MON-YYYY HH24:MI:SSxFF TZH:TZM') AS tstz_date
   FROM date_tab
   ORDER BY ts_date, tstz_date;

SELECT SESSIONTIMEZONE, 
   TO_CHAR(tsltz_col, 'DD-MON-YYYY HH24:MI:SSxFF') AS tsltz
   FROM date_tab
   ORDER BY sessiontimezone, tsltz;
   
-- 4 palabras reservadas muy importantes y son:
-- 1. CREATE 2. ALTER 3. DROP // 2. SELECT 



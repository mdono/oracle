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
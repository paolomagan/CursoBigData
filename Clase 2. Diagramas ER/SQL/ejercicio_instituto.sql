CREATE DATABASE instituto;

USE instituto;

#profesores (DNI, Nombre dirección y telefono)
CREATE TABLE profesores(
    id INT auto_increment,
    Nombre VARCHAR(200) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    dni CHAR(9) UNIQUE NOT NULL,
    PRIMARY KEY (id)
)
INSERT INTO profesores values (null, 'Ana Ramirez', 'C/Alcala 245', '53422267Y', '916511388');
INSERT INTO profesores values (null, 'Pablo Magán', 'CAv/Asturias 40', '500263180Z', '651138206');

#codigo y nombre
CREATE TABLE modulos(
    id INT auto_increment,
    codigo VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
)
INSERT INTO modulos VALUES (null, 'MOD_001', 'Matemáticas');
INSERT INTO modulos VALUES (null, 'MOD_002', 'Fisica');


#nº expediente nombre, apellidos y fecha de naci
CREATE TABLE alumnos(
    id INT auto_increment,
    expediente VARCHAR(50) UNIQUE NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    apellidos VARCHAR(200) NOT NULL,
    fecha_nac DATE NOT NULL,
    PRIMARY KEY (id)
)
INSERT INTO alumnos VALUES (null, 'ALU_001', 'Rita', 'Sanchez Vicario', '2000/03/09');
INSERT INTO alumnos VALUES (null, 'ALU_002', 'Paco', 'Fernandez Ochoa', '1998/08/24');
INSERT INTO alumnos VALUES (NULL, 'ALU_003', 'Carlos', 'Martínez López', '1999/07/15');

CREATE TABLE modulos_alumnos(
    id INT auto_increment,
    FOREIGN KEY (modulos_id) REFERENCES modulos(id),
    FOREIGN KEY (alumnos_id) REFERENCES alumnos(id),
    PRIMARY KEY (id)
)
INSERT INTO modulos_alumnos (modulos_id, alumnos_id) VALUES (MOD_002, ALU_001);
INSERT INTO modulos_alumnos (modulos_id, alumnos_id) VALUES (MOD_002, ALU_002);

#
CREATE TABLE curso(
    id INT auto_increment,
    nombre VARCHAR(100) NOT NULL,
    fk_id_delegado INT UNIQUE,
    FOREIGN KEY (fk_id_delegado) REFERENCES alumnos(id),
    PRIMARY KEY (id)
)
INSERT INTO curso VALUES (NULL, 'Primero', 2);
INSERT INTO curso VALUES (NULL, 'Segundo', 1);

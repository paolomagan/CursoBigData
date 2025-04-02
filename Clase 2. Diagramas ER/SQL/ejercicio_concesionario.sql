CREATE DATABASE concesionario;

USE concesionario;

#matrícula, marca y modelo, el color y el precio de venta de cada coche
CREATE TABLE coches(
    id INT auto_increment,
    marca VARCHAR(200) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    color VARCHAR(20),
    matricula CHAR(9) UNIQUE NOT NULL,
    precio INT,
    PRIMARY KEY (id)
)










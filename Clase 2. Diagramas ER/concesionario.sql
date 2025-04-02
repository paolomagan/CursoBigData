#DROP DATABASE concesionario; 
CREATE DATABASE concesionario; 

USE concesionario; 

CREATE TABLE Clientes (
	id INT AUTO_INCREMENT,
    nif CHAR(9) UNIQUE NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    ciudad VARCHAR(200) NOT NULL,
    telefono VARCHAR(15),
	PRIMARY KEY(id)
);


CREATE TABLE coches (
	id INT AUTO_INCREMENT,
    marca VARCHAR(200) NOT NULL,
    modelo VARCHAR(200) NOT NULL,
    color VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    matricula CHAR(9) UNIQUE NOT NULL,
    precio VARCHAR(15),
    fk_id_cliente INT
	PRIMARY KEY(id)
    FOREIGN KEY(fk_id_cliente) REFERENCES Clientes(id),
);

CREATE TABLE revisiones (
	id INT AUTO_INCREMENT,
    aceite BIT NOT NULL,
    filtros BIT NOT NULL,
    frenos BIT NOT NULL,
    otros TEXT,
    fk_id_coche INT
	PRIMARY KEY(id)
    FOREIGN KEY(fk_id_coche) REFERENCES coches(id),
);


-- Insertar clientes
INSERT INTO Clientes (nif, nombre, direccion, ciudad, telefono) VALUES
('12345678A', 'Juan Pérez', 'Calle Mayor 1', 'Madrid', '600123456'),
('87654321B', 'María López', 'Avenida Sol 45', 'Barcelona', '601234567'),
('56781234C', 'Carlos Gómez', 'Calle Luna 12', 'Valencia', '602345678'),
('43218765D', 'Laura Fernández', 'Paseo Marítimo 23', 'Sevilla', '603456789'),
('34567812E', 'David Martínez', 'Plaza Mayor 5', 'Bilbao', '604567890');

-- Insertar coches
INSERT INTO coches (marca, modelo, color, direccion, matricula, precio, fk_id_cliente) VALUES
('Toyota', 'Corolla', 'Rojo', 'Calle Mayor 1', '1234ABC', '15000', 1),
('Ford', 'Focus', 'Azul', 'Avenida Sol 45', '5678DEF', '12000', 2),
('Volkswagen', 'Golf', 'Negro', 'Calle Luna 12', '9101GHI', '18000', 3),
('Renault', 'Clio', 'Blanco', 'Paseo Marítimo 23', '1121JKL', '11000', 4),
('Seat', 'Ibiza', 'Gris', 'Plaza Mayor 5', '3141MNO', '13000', 5);

-- Insertar revisiones
INSERT INTO revisiones (aceite, filtros, frenos, otros, fk_id_coche) VALUES
(1, 1, 0, 'Cambio de bujías', 1),
(1, 0, 1, NULL, 2),
(0, 1, 1, 'Cambio de batería', 3),
(1, 1, 1, NULL, 4),
(0, 0, 1, 'Cambio de neumáticos', 5);
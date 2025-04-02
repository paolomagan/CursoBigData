#DROP DATABASE ejemplo; 
CREATE DATABASE ejemplo; 

USE ejemplo; 

CREATE TABLE Clientes (
	id INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(200) NOT NULL,
    dni CHAR(9) UNIQUE NOT NULL,
    telefono VARCHAR(15),
	PRIMARY KEY(id)
);
INSERT INTO Clientes VALUES(NULL, 'Pedro', 'Pérez', '11111111A', '910000000');
INSERT INTO Clientes VALUES(NULL, 'Ana', 'Ramirez', '11111111B', '910000001');
INSERT INTO Clientes VALUES(NULL, 'Rita', 'Rodriguez', '11111111C', '910000002');
INSERT INTO Clientes VALUES(NULL, 'Roberto', 'Hernández', '11111111D', NULL);
SELECT * FROM Clientes;

CREATE TABLE Productos (
	id INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio FLOAT NOT NULL,
    stock INT NOT NULL,
	PRIMARY KEY(id)
);
INSERT INTO Productos VALUES(NULL, 'Pasta de dientes', 1.65, 3547);
INSERT INTO Productos VALUES(NULL, 'Champú', 4.21, 567);
INSERT INTO Productos VALUES(NULL, 'Pan', 0.67, 125);
INSERT INTO Productos VALUES(NULL, 'Pan integral', 0.78, 79);
SELECT * FROM Productos;

CREATE TABLE Clientes_Productos (
	id INT AUTO_INCREMENT,
	fk_id_cliente INT,
    fk_id_producto INT NOT NULL,
	PRIMARY KEY(id),
    FOREIGN KEY(fk_id_cliente) REFERENCES Clientes(id) ON DELETE SET NULL,
    FOREIGN KEY(fk_id_producto) REFERENCES Productos(id) ON DELETE CASCADE
);
INSERT INTO Clientes_Productos VALUES(NULL, 1, 1);
INSERT INTO Clientes_Productos VALUES(NULL, 1, 2);
INSERT INTO Clientes_Productos VALUES(NULL, 2, 1);
INSERT INTO Clientes_Productos VALUES(NULL, 2, 3);
INSERT INTO Clientes_Productos VALUES(NULL, 3, 2);
INSERT INTO Clientes_Productos VALUES(NULL, 4, 2);
SELECT * FROM Clientes_Productos;


UPDATE Clientes SET apellidos = 'Santana Fernández', 
telefono = NULL  WHERE id = 2;

DELETE FROM Productos WHERE id = 3;
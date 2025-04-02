

CREATE TABLE `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  PRIMARY KEY (`id`)
) 


INSERT INTO `alumnos` (`id`, `Nombre`, `Apellidos`, `FechaNacimiento`) VALUES
(1, 'Laura Gómez', 'Fernández', '2005-04-12'),
(2, 'Javier Ruiz', 'Martínez', '2006-07-23');


CREATE TABLE `modulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `DNI_Profesor` char(9) UNIQUE NOT NULL,
  PRIMARY KEY (`id`),
) 

INSERT INTO `modulos` (`id`, `Nombre`, `DNI_Profesor`) VALUES
(1, 'Matemáticas', '12345678A'),
(2, 'Historia', '87654321B');


CREATE TABLE `matricula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_Alumno` int NOT NULL,
  `id_Modulo` int NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(id_Alumno) REFERENCES alumnos(id)
  FOREIGN KEY(id_Modulo) REFERENCES modulos(id)
) 



INSERT INTO `matricula` (`id_Alumno`, `id_Modulo`) VALUES
(1, 1),
(2, 2);




CREATE TABLE `profesores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DNI` char(9) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
)


INSERT INTO `profesores` (`DNI`, `Nombre`, `Direccion`, `Telefono`) VALUES
('12345678A', 'María López', 'Calle Mayor 10, Madrid', '600123456'),
('87654321B', 'Carlos Pérez', 'Avenida Sol 25, Barcelona', '611987654');
COMMIT;

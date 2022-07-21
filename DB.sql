CREATE DATABASE IF NOT EXISTS hospital;

USE hospital;

CREATE TABLE Pacientes(
id_paciente INT NOT NULL AUTO_INCREMENT,
Nombre VARCHAR (50),
Apellido VARCHAR (50),
Sexo VARCHAR (1),
fechaNacimiento DATE,
Cedula VARCHAR (50),
Telefono VARCHAR(50),
PRIMARY KEY (id_paciente)
);

INSERT INTO Pacientes (Nombre,Apellido,Sexo,fechaNacimiento,Cedula,Telefono)
VALUES('Orlando','Franjul','M','2001-10-10','00100000091','829-999-9999');

INSERT INTO Pacientes (Nombre,Apellido,Sexo,fechaNacimiento,Cedula,Telefono)
VALUES('Maribel','Fernandez','F','1995-10-10','00108055091','829-111-5678');

INSERT INTO Pacientes (Nombre,Apellido,Sexo,fechaNacimiento,Cedula,Telefono)
VALUES('Alberto','Hernandez','M','1996-04-10','00138470091','809-278-1865');

SELECT * FROM Pacientes;

CREATE TABLE Medicos(
codigo_medico INT NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(50),
Apellidos VARCHAR(50),
Cedula VARCHAR(50),
Direccion VARCHAR(50),
Telefono VARCHAR(50),
Especialidad VARCHAR(50),
Departamento VARCHAR(50),
PRIMARY KEY (codigo_medico)
);

INSERT INTO Medicos (Nombre,Apellidos,Cedula,Direccion,Telefono,Especialidad,Departamento)
Values('Aldo','Gonzalez','402-1111111-9','Manoguayabo','809-333-4567','Cirujano','Quirurjico');

INSERT INTO Medicos (Nombre,Apellidos,Cedula,Direccion,Telefono,Especialidad,Departamento)
Values('Francisco','Caamano','402-3456781-9','Los Mina','809-123-4567','Neurocirujano','Quirurjico');

INSERT INTO Medicos (Nombre,Apellidos,Cedula,Direccion,Telefono,Especialidad,Departamento)
Values('Valentina','Melendez','402-6789103-9','Ensanche Naco','849-890-3259','Dermatologo','Quirurjico');


CREATE TABLE Visitas(
numeroVisita INT NOT NULL,
fechaVisita DATE,
motivoVisita VARCHAR(255),
Diagnostico VARCHAR (255),
Tratamiento VARCHAR(255),
id_paciente INT NOT NULL,
codigo_doctor INT NOT NULL,
PRIMARY KEY(numeroVisita)
);

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
flush privileges;

SELECT * FROM Visitas;
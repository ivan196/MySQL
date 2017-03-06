DROP DATABASE IF EXISTS ZOO;

CREATE DATABASE ZOO;

USE ZOO;

CREATE TABLE ZOO ( 
	nombre VARCHAR(20),
	ciudad VARCHAR(20), 
	pais VARCHAR(20),
	tamaño VARCHAR(20),
	presupuesto DECIMAL UNSIGNED,

	PRIMARY KEY (nombre)
);

CREATE TABLE ESPECIE(
	nomcientifico VARCHAR(20),
	nombrevulgar VARCHAR(20) NOT NULL,
	familia VARCHAR(20), 
	peligro VARCHAR(20),

	PRIMARY KEY (nomcientifico)


);

CREATE TABLE ANIMAL (
	ID INT,
	nom_ZOO VARCHAR(20),
	nom_ESPECIE VARCHAR(20), 
	sexo ENUM ('Masculino','Femenino'), 
	añonacim YEAR,
	pais VARCHAR(20),
	continente VARCHAR(20),

	PRIMARY KEY (ID),

	CONSTRAINT KS_ANI_ZOO
	FOREIGN KEY (nom_ZOO) REFERENCES ZOO (nombre),

	CONSTRAINT FK_ANI_ESP
	FOREIGN KEY (nom_ESPECIE) REFERENCES ESPECIE (nomcientifico)
);










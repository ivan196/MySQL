create database if not exists zoo;

drop database if exists zoo;

create database zoo;

use zoo;

-- tablas de zoo --

	create table ZOO (
		nombre varchar(20),
		ciudad varchar(20),
		pais varchar(20),
		tamaño INT,
		presupuesto decimal unsigned),
		primary key (nombre)
	);


	create table ESPECIE (
		nomcientifico varchar(20),
		nomvulgar varchar(20),
		familia varchar(20) not null,
		peligro varchar(20),
		primary key (nomcientifico)
	);

	create table ANIMAL (
		ID INT auto_increment,
		nom_ZOO varchar(20),
		nom_ESPECiE varchar(20),
		sexo enum('masculino','femenino'),
		añonacim year,
		pais varchar(20),
		continente varchar(20),
		primary key (ID),

		foreign key (nom_ZOO) references ZOO (nombre),
		foreign key (nom_ESPECiE) references ESPECIE (nomcientifico)
	);



-- alter table ANIMAL  add fk_nom_ESP --

-- update ZOO set nombre="ZOO VODAFONE" where nombre="Zoo madrid";  --



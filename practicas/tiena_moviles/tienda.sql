create database if not exists tienda;

drop database if exists tienda;

create database tienda;

use tienda;

-- aqui es la zona donde estan creadas las tablas --

	create table clientes (
		DNI char(9) not null,
		nombre varchar(15),
		apellidos varchar(20),
		telefono char(9),
		email varchar(30),
		primary key (DNI)
	);

	create table tiendas (
		nombre varchar(15),
		provincia varchar(15),
		localidad varchar(15),
		direccion varchar(30),
		telefono char(9),
		diaapertira varchar(10),
		diacierre varchar(10),
		horaapertura time,
		horacierre time,
		primary key (nombre)
	);

	create table operadoras (
		nombre varchar(20),
		colorlogo varchar(10),
		porcentajecobertura varchar(5),
		frecuenciaGSM varchar(5),
		paginaweb varchar(50),
		primary key (nombre)
	);

	create table tarifas (
		nombre varchar(20),
		nombre_operadoras varchar(20),
		tamañodatos varchar(20),
		tipodatos varchar(20),
		minutosgratis varchar(15),
		smsgratis varchar(15),
		primary key (nombre),
		foreign key (nombre_operadoras)
		references operadoras (nombre)
	);

	create table moviles (
		marca varchar(20),
		modelo varchar(20),
		descripcion varchar(250),
		SO varchar(15),
		ram varchar(15),
		pulgadaspantalla varchar(20),
		camaraMpx varchar(10),
		primary key (marca, modelo)
	);

	create table movil_libre (
		marca_moviles varchar(20),
		modelo_moviles varchar(20),
		precio varchar(10),
		
		foreign key (marca_moviles,modelo_moviles) 			
		references moviles (marca,modelo)
	);

	create table movil_contrato (
		marca_moviles varchar(20),
		modelo_moviles varchar(20),
		nombre_operadoras varchar(20),
		precio varchar(15),
		primary key (marca_moviles,modelo_moviles,nombre_operadoras),
	
		foreign key (marca_moviles,modelo_moviles)
		references moviles(marca,modelo),
		
		foreign key (nombre_operadoras)
		references operadoras (nombre)
	);

	create table ofertas (
		nombre_operadoras_tarifas varchar(20),
		nombre_tarifas varchar(20),
		marca_movil_contrato varchar(20),
		modelo_movil_contrato varchar(20),
	
		foreign key (nombre_operadoras_tarifas,nombre_tarifas)
		references tarifas (nombre_operadoras,nombre),
	
		foreign key (marca_movil_contrato,modelo_movil_contrato)
		references movil_contrato (marca_moviles,modelo_moviles)
	);

	create table compras (
		DNI_cliente char(9),
		nombre_tienda varchar(20),
		marca_moviles_ofertas varchar(20),
		modelo_moviles_ofertas varchar(20),
		dia enum('lunes','martes','miercoles','jueves','viernes','sabado','domingo'),
	
		foreign key (DNI_cliente)
		references clientes (DNI),
	
		foreign key (nombre_tienda)
		references tiendas (nombre),
	
		foreign key (marca_moviles_ofertas,modelo_moviles_ofertas)
		references ofertas (marca_movil_contrato,modelo_movil_contrato)
	);

	create table contratos (
		DNI_cliente char(9),
		nombre_tienda varchar(20),
		nombre_operadoras_tarifas_ofertas varchar(20),
		nombre_tarifas_ofertas varchar(20),
		marca_moviles_ofertas varchar(20),
		modelo_moviles_ofertas varchar(20),
		dia enum('lunes','martes','miercoles','jueves','viernes','sabado','domingo'),
	
		foreign key (DNI_cliente)
		references clientes (DNI),
	
		foreign key (nombre_tienda)
		references tiendas (nombre),
	
		foreign key (nombre_operadoras_tarifas_ofertas,nombre_tarifas_ofertas)
		references ofertas (nombre_operadoras_tarifas,nombre_tarifas),
	
		foreign key (marca_moviles_ofertas,modelo_moviles_ofertas)
		references ofertas (marca_movil_contrato,modelo_movil_contrato)
);





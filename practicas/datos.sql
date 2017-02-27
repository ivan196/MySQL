-- en este otro archivo sql introduciremos los datos --


-- 1 informacion sobre clientes 04897548A 648457856 -- 

	insert into clientes (DNI,nombre,apellidos,telefono,email)

		values ('72459846X','ivan','tome','692715203','ivantome.ciclos@gmail.com');

	insert into clientes (DNI,nombre,apellidos,telefono,email)
	
		values ('02478542Q','Aqua','Sama','642478517','Konosubarashi@Aqua.com');

	insert into clientes (DNI,nombre,apellidos,telefono,email)
		
		values ('45378458P','Ako','Nee','612487593','kissxsis@ako.com');
	
	insert into clientes (DNI,nombre,apellidos,telefono,email)

		values ('15784589A','Nao','Tomori','642587458','Charlotte@Nao.com');

	insert into clientes (DNI,nombre,apellidos,telefono,email)

		values ('15784894A','Soma','Yukihira','614785478','Shokugeki@Soma.com');

-- 2 informacion sobre tiendas --

	insert into tiendas(nombre,provincia,localidad,direccion,telefono)
	
		    values ('Phone Another','Madrid','Alcobendas','calle Invisible 123','648457458');
	
	insert into tiendas(nombre,provincia,localidad,direccion,telefono)
	
		    values ('Phone Kirito','Madrid','Alcobendas','calle Asuna 466','635214589');
	
	insert into tiendas(nombre,provincia,localidad,direccion,telefono)
	
		    values ('Phone Rias','Barcelona','Mataro','calle demoniaca 69','678542597');
	
	insert into tiendas(nombre,provincia,localidad,direccion,telefono)
	
		    values ('Phone luffy','Barcelona','Badalona','calle one piece 1','635874589');
	
	insert into tiendas(nombre,provincia,localidad,direccion,telefono)
	
		    VALUES ('Phone yunyun','Madrid','Madrid','calle megumin 77','648524758');

-- 3 informacion sobre operadoras --

	insert into operadoras(nombre,colorlogo,porcentajecobertura,frecuenciaGSM,paginaweb)

		    VALUES ('Movistar','Verde','90%','380.2','www.Movistar.es');

	insert into operadoras(nombre,colorlogo,porcentajecobertura,frecuenciaGSM,paginaweb)

		    VALUES ('Vodafone','Rojo','95%','390.2','www.Vodafone.es');

	insert into operadoras(nombre,colorlogo,porcentajecobertura,frecuenciaGSM,paginaweb)

		    VALUES ('Yoigo','Azul','100%','500.2','www.Yoigo.es');
		
	insert into operadoras(nombre,colorlogo,porcentajecobertura,frecuenciaGSM,paginaweb)

		    VALUES ('Ono','Negro','99%','410.2','www.ono.es');

	insert into operadoras(nombre,colorlogo,porcentajecobertura,frecuenciaGSM,paginaweb)

		    VALUES ('Lowi','Negro','50%','480.2','www.Lowi.es');

-- 4 informacion sobre tarifas --

	INSERT INTO tarifas(nombre,nombre_operadoras,tamañodatos,minutosgratis,smsgratis)

		    VALUES ('Deflin','Movistar','2GB','90','60');

	INSERT INTO tarifas(nombre,nombre_operadoras,tamañodatos,minutosgratis,smsgratis)

		    VALUES ('Ballena','Vodafone','1GB','120','60');

	INSERT INTO tarifas(nombre,nombre_operadoras,tamañodatos,minutosgratis,smsgratis)

		    VALUES ('Buitre','Yoigo','500MB','180','60');

	INSERT INTO tarifas(nombre,nombre_operadoras,tamañodatos,minutosgratis,smsgratis)

		    VALUES ('Neko','Ono','1GB','60','60');

	INSERT INTO tarifas(nombre,nombre_operadoras,tamañodatos,minutosgratis,smsgratis)

		    VALUES ('Perro','Lowi','5GB','90','60');

-- 5 informacion sobre moviles --

	INSERT INTO moviles(marca,modelo,descripcion,SO,RAM,pulgadaspantalla,camaraMpx)

		    VALUES ('Huawei','P8 Lite','Modelo de bajo coste recomendado para personas de todas las edades','Android 5.0','4GB','5','13');

	INSERT INTO moviles(marca,modelo,descripcion,SO,RAM,pulgadaspantalla,camaraMpx)

		    VALUES ('Samsung','Galaxy J5','Es el nuevo Samsung Galaxy J5 Negro podras disfrutar de imágenes nitidas','Android 6.0','2GB','6','15');

	INSERT INTO moviles(marca,modelo,descripcion,SO,RAM,pulgadaspantalla,camaraMpx)

		    VALUES ('Acer','Liquid Z220','Para los menos exijentes!','Android 7.0','2GB','5','16');

	INSERT INTO moviles(marca,modelo,descripcion,SO,RAM,pulgadaspantalla,camaraMpx)

		    VALUES ('Airis','TM-500','Yo tampoco sabia que existia esta marca','Android 4.0','6GB','5','10');

	INSERT INTO moviles(marca,modelo,descripcion,SO,RAM,pulgadaspantalla,camaraMpx)

	           VALUES ('Apple','IPhone 7 Plus','Nuevo modelo igual que el anterior pero sin hueco para los cascos! y no explota!!!!!','IOS 10','8GB','8','15');

-- 6 informacion sobre movil_libre --

	INSERT INTO movil_libre(marca_moviles,modelo_moviles,precio)

		    Values ('Huawei','P8 Lite','150');

	INSERT INTO movil_libre(marca_moviles,modelo_moviles,precio)

		    Values ('Samsung','Galaxy J5','500');

	INSERT INTO movil_libre(marca_moviles,modelo_moviles,precio)

		    Values ('Acer','Liquid Z220','450');

	INSERT INTO movil_libre(marca_moviles,modelo_moviles,precio)

		    Values ('Airis','TM-500','350');

	INSERT INTO movil_libre(marca_moviles,modelo_moviles,precio)

		Values ('Apple','IPhone 7 Plus','800');

-- 7 informacion sobre movil_contrato --

	INSERT INTO movil_contrato(marca_moviles,modelo_moviles,nombre_operadoras,precio)

		Values ('Huawei','P8 Lite','Lowi','200');
		
	INSERT INTO movil_contrato(marca_moviles,modelo_moviles,nombre_operadoras,precio)

		Values ('Samsung','Galaxy J5','Movistar','600');

	INSERT INTO movil_contrato(marca_moviles,modelo_moviles,nombre_operadoras,precio)

		Values ('Acer','Liquid Z220','Ono','600');

	INSERT INTO movil_contrato(marca_moviles,modelo_moviles,nombre_operadoras,precio)--

		Values ('Airis','TM-500','Vodafone','400');

	INSERT INTO movil_contrato(marca_moviles,modelo_moviles,nombre_operadoras,precio)

		Values ('Apple','IPhone 7 Plus','Yoigo','1000');

-- 8 informacion sobre ofertas --

	INSERT INTO ofertas(nombre_operadoras_tarifas,nombre_tarifas,marca_movil_contrato,modelo_movil_contrato)

		Values ('Vodafone','Ballena','Airis','TM-500');

	INSERT INTO ofertas(nombre_operadoras_tarifas,nombre_tarifas,marca_movil_contrato,modelo_movil_contrato)

		Values ('Yoigo','Buitre','Apple','IPhone 7 Plus');

	INSERT INTO ofertas(nombre_operadoras_tarifas,nombre_tarifas,marca_movil_contrato,modelo_movil_contrato)

		Values ('Movistar','Deflin','Samsung','Galaxy J5');

	INSERT INTO ofertas(nombre_operadoras_tarifas,nombre_tarifas,marca_movil_contrato,modelo_movil_contrato)

		Values ('Ono','Neko','Acer','Liquid Z220');

	INSERT INTO ofertas(nombre_operadoras_tarifas,nombre_tarifas,marca_movil_contrato,modelo_movil_contrato)

		Values ('Lowi','Perro','Huawei','P8 Lite');

-- 9 informacion sobre compras --

	INSERT INTO compras(DNI_cliente,nombre_tienda,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		Values ('02478542Q','Phone Another','Airis','TM-500','Lunes');

	INSERT INTO compras(DNI_cliente,nombre_tienda,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		Values ('72459846X','Phone Kirito','Apple','IPhone 7 Plus','Miercoles');

	INSERT INTO compras(DNI_cliente,nombre_tienda,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		Values ('15784589A','Phone luffy','Samsung','Galaxy J5','Viernes');

	INSERT INTO compras(DNI_cliente,nombre_tienda,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		Values ('15784894A','Phone Rias','Acer','Liquid Z220','Sabado');

	INSERT INTO compras(DNI_cliente,nombre_tienda,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		Values ('45378458P','Phone yunyun','Huawei','P8 Lite','Martes');

-- 10 informacion sobre contratos --

	 INSERT INTO contratos(DNI_cliente,nombre_tienda,nombre_operadoras_tarifas_ofertas,nombre_tarifas_ofertas,marca_moviles_ofertas,modelo_moviles_ofertas,dia)
	
		VALUES ('02478542Q','Phone yunyun','Lowi','Perro','Huawei','P8 Lite','Lunes');

	 INSERT INTO contratos(DNI_cliente,nombre_tienda,nombre_operadoras_tarifas_ofertas,nombre_tarifas_ofertas,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		VALUES ('72459846X','Phone Kirito','Ono','Neko','Acer','Liquid Z220','Sabado');

	 INSERT INTO contratos(DNI_cliente,nombre_tienda,nombre_operadoras_tarifas_ofertas,nombre_tarifas_ofertas,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		VALUES ('15784589A','Phone Another','Lowi','Perro','Huawei','P8 Lite','Martes');

	 INSERT INTO contratos(DNI_cliente,nombre_tienda,nombre_operadoras_tarifas_ofertas,nombre_tarifas_ofertas,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		VALUES ('15784589A','Phone luffy','Vodafone','Ballena','Huawei','P8 Lite','Lunes');

	 INSERT INTO contratos(DNI_cliente,nombre_tienda,nombre_operadoras_tarifas_ofertas,nombre_tarifas_ofertas,marca_moviles_ofertas,modelo_moviles_ofertas,dia)

		VALUES ('02478542Q','Phone yunyun','Lowi','Perro','Apple','IPhone 7 Plus','Martes');





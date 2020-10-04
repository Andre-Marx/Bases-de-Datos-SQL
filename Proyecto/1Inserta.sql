-- Para recibir fechas en formato dd/mm/aaaa
SET DATESTYLE TO 'European';

--TABLA: CTipoEquipaje
INSERT INTO CTipoEquipaje(IdTipoEquipaje,TipoEquipaje)
VALUES(1,'De mano');
INSERT INTO CTipoEquipaje(IdTipoEquipaje,TipoEQuipaje)
VALUES(2,'De almacén');

--TABLA: CSexo
INSERT INTO CSexo(IdSexo,Sexo)
VALUES(1,'Hombre');
INSERT INTO CSexo(IdSexo,Sexo)
VALUES(2,'Mujer');
INSERT INTO CSexo(IdSexo,Sexo)
VALUES(3,'Otro');

--TABLA: Cavion
INSERT INTO CAvion(IdCAvion, TipoAvion)
VALUES (1,'Tipo 1');
INSERT INTO CAvion(IdCAvion, TipoAvion)
VALUES (2,'Tipo 2');
INSERT INTO CAvion(IdCAvion, TipoAvion)
VALUES (3,'Tipo 3');

--TABLA: CSnack
INSERT INTO CSnack(idSnack,TipoSnack)
VALUES(1,'Sándwich');
INSERT INTO CSnack(idSnack,TipoSnack)
VALUES(2,'Cacahuates');
INSERT INTO CSnack(idSnack,TipoSnack)
VALUES(3,'Paste');

--TABLA: CBebida
INSERT INTO CBebida(idBebida,TipoBebida)
VALUES(1,'Agua Simple');
INSERT INTO CBebida(idBebida,TipoBebida)
VALUES(2,'Refresco');
INSERT INTO CBebida(idBebida,TipoBebida)
VALUES(3,'Jugo de Sabor');


--TABLA:TipoCombo
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(1,1,1);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(2,1,2);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(3,1,3);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(4,2,1);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(5,2,2);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(6,2,3);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(7,3,1);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(8,3,2);
INSERT INTO TipoCombo(IdCombo,IdSnack,IdBebida)
VALUES(9,3,3);

--TABLA:CTipoEmpleado
INSERT INTO CTipoEmpleado(IdCargo,Cargo)
VALUES(1,'Piloto');
INSERT INTO CTipoEmpleado(IdCargo,Cargo)
VALUES(2,'Sobrecargo');
INSERT INTO CTipoEmpleado(IdCargo,Cargo)
VALUES(3,'Taquillero');
INSERT INTO CTipoEmpleado(IdCargo,Cargo)
VALUES(4,'Mantenimiento');
INSERT INTO CTipoEmpleado(IdCargo,Cargo)
VALUES(5,'Señalero');
INSERT INTO CTipoEmpleado(IdCargo,Cargo)
VALUES(6,'Maletero');
INSERT INTO CTipoEmpleado(IdCargo,Cargo)
VALUES(7,'Seguridad');

-- Tabla: cTipoPago
INSERT INTO cTipopago (IdPago, tipopago)
VALUES (1,'Efectivo');
INSERT INTO cTipopago (IdPago, tipopago)
VALUES (2, 'Tarjeta');

-- Tabla: cDescuento
INSERT INTO cDescuento (IdDescuento, tipodescuento)
VALUES (1, 'Ninguno');
INSERT INTO cDescuento (IdDescuento, tipodescuento)
VALUES (2, 'Discapacidad');
INSERT INTO cDescuento (IdDescuento, tipodescuento)
VALUES (3, 'Profesores');
INSERT INTO cDescuento (IdDescuento, tipodescuento)
VALUES (4, 'Tercera edad');

-- Tabla: cTipoVuelo
INSERT INTO cTipovuelo (IdVuelo, tipovuelo)
VALUES (1, 'Ejecutivo');
INSERT INTO cTipovuelo (IdVuelo, tipovuelo)
VALUES (2, 'Turista');

-- Tabla: cLugar
INSERT INTO cLugar (IdLugar, lugar) Values (1, 'Aguascalientes');
INSERT INTO cLugar (IdLugar, lugar) Values (2, 'Baja California');
INSERT INTO cLugar (IdLugar, lugar) Values (3, 'Baja California Sur');
INSERT INTO cLugar (IdLugar, lugar) Values (4, 'Campeche');
INSERT INTO cLugar (IdLugar, lugar) Values (5, 'Chihuahua');
INSERT INTO cLugar (IdLugar, lugar) Values (6, 'Chiapas');
INSERT INTO cLugar (IdLugar, lugar) Values (7, 'Coahuila');
INSERT INTO cLugar (IdLugar, lugar) Values (8, 'Colima');
INSERT INTO cLugar (IdLugar, lugar) Values (9, 'Durango');
INSERT INTO cLugar (IdLugar, lugar) Values (10, 'Guanajuato');
INSERT INTO cLugar (IdLugar, lugar) Values (11, 'Guerrero');
INSERT INTO cLugar (IdLugar, lugar) Values (12, 'Hidalgo');
INSERT INTO cLugar (IdLugar, lugar) Values (13, 'Jalisco');
INSERT INTO cLugar (IdLugar, lugar) Values (14, 'México');
INSERT INTO cLugar (IdLugar, lugar) Values (15, 'Michoacán');
INSERT INTO cLugar (IdLugar, lugar) Values (16, 'Morelos');
INSERT INTO cLugar (IdLugar, lugar) Values (17, 'Nayarit');
INSERT INTO cLugar (IdLugar, lugar) Values (18, 'Nuevo León');
INSERT INTO cLugar (IdLugar, lugar) Values (19, 'Oaxaca');
INSERT INTO cLugar (IdLugar, lugar) Values (20, 'Puebla');
INSERT INTO cLugar (IdLugar, lugar) Values (21, 'Querétaro');
INSERT INTO cLugar (IdLugar, lugar) Values (22, 'Quintana Roo');
INSERT INTO cLugar (IdLugar, lugar) Values (23, 'San Luis Potosí');
INSERT INTO cLugar (IdLugar, lugar) Values (24, 'Sinaloa');
INSERT INTO cLugar (IdLugar, lugar) Values (25, 'Sonora');
INSERT INTO cLugar (IdLugar, lugar) Values (26, 'Tabasco');
INSERT INTO cLugar (IdLugar, lugar) Values (27, 'Tamaulipas');
INSERT INTO cLugar (IdLugar, lugar) Values (28, 'Tlaxcala');
INSERT INTO cLugar (IdLugar, lugar) Values (29, 'Veracruz');
INSERT INTO cLugar (IdLugar, lugar) Values (30, 'Yucatán');
INSERT INTO cLugar (IdLugar, lugar) Values (31, 'Zacatecas');
INSERT INTO cLugar (IdLugar, lugar) Values (32, 'Ciudad de México');

--Tabla: Aeropuerto
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('1','87370',' A. I. de Querétaro ','26.84343','-98.104757');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('2','64742',' A. I. de Ciudad Juárez','24.1443691','-110.300499');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('3','58461',' A. I. de Monterrey','19.4978','-99.1269');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('4','94740','A. I. de San Luis Potosí','19.6097','-99.06');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('5','52733','A. I. de Aguascalientes','20.6736','-103.344');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('6','24694','A. I. de la Ciudad de México','19.0413','-98.2062');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('7','79930','A. I. de Guanajuato','32.6469','-115.446');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('8','49978','A. I. de La Paz','32.533','-117.05');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('9','24410','A. I. de Mexicali','25.6714','-100.309');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('10','10940','A. I. de Guadalajara','24.8042','-107.431');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('11','53318','A. I. de Mazatlán','21.1236','-101.68');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('12','99888','A. I. de Hermosillo','21.0833','-86.85');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('13','42806','A. I. de Tlaxcala	','20.97','-89.62');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('14','82037','  A. I. de Cozumel','16.8638','-99.8816');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('15','32070','A. I. de Villahermosa','29.1026001','-110.9773178');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('16','45952','A. I. de Veracruz','32.15744','-105.58536034');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('17','51460','A. I. de Mérida','23.63475','-100.5834');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('18','84048','A. I. de Toluca','29.25662','168.62772');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('19','20802','A. I. Federal de Culiacán','9.39745','-15.59649');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('20','57140','A. I. de Hermosillo','67.37704','-74.2012');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('21','24951','A. I. de Tuxtla Gutiérrez','-31.3925','-143.07255');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('22','51358','A. I. de Oaxaca','-69.08479','83.23123');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('23','83322','A. I. de Durango','-41.25528','-36.06141');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('24','71481','A. I. de Zacatecas','25.76131','-120.94325');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('25','22744','A. I. de Puebla','-28.85165','-155.28813');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('26','22387','A. I. de Cuernavaca','2.61403','9.64636');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('27','48974','A. N. Lic. Miguel de la Madrid','80.44759','-76.84722');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('28','52512','A. I. de Morelia','23.76118','-160.09196');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('29','69039','A. I. de Tepic','30.74532','76.66541');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('30','35855','A. I. de Acapulco','17.20696','27.49153');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('31','12660','A. I. de Tampico','-67.16694','101.3438');
INSERT INTO Aeropuerto(idaeropuerto, codigo_postal, nombre, altitud, latitud)
VALUES ('32','97914','A. N. Ing. Juan Guillermo Villasana','-81.42441','-135.16699"');

--Tabla:Aerolinea
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (1, 'Aguascalientes', 5);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (2, 'Baja California', 8);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (3, 'Baja California Sur', 9);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (4, 'Campeche', 11);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (5, 'Chiapas', 21);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (6, 'Chihuahua', 20);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (7, 'Ciudad de México', 6);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (8, 'Coahuila de Zaragoza', 19);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (9, 'Colima', 27);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (10, 'Durango', 23);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (11, 'Estado de México', 18);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (12, 'Guanajuato', 7);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (13, 'Guerrero', 30);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (14, 'Hidalgo', 32);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (15, 'Jalisco', 10);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (16, 'Michoacán de Ocampo', 28);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (17, 'Morelos', 26);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (18, 'Nayarit', 29);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (19, 'Nuevo León', 3);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (20, 'Oaxaca', 22);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (21, 'Puebla', 25);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (22, 'Querétaro', 1);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (23, 'Quintana Roo', 14);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (24, 'San Luis Potosí', 4);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (25, 'Sinaloa', 2);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (26, 'Sonora', 12);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (27, 'Tabasco', 15);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (28, 'Tamaulipas', 31);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (29, 'Tlaxcala', 13);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (30, 'Veracruz', 16);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (31, 'Yucatán', 17);
INSERT INTO aerolinea (idsucursal, sucursal, idaeropuerto) VALUES (32, 'Zacatecas', 24);

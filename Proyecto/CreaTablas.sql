--TABLA: CTipoEquipaje
CREATE TABLE CTipoEquipaje
(
    IdTipoEquipaje SERIAL,
    TipoEquipaje   VARCHAR(10)
);

--TABLA: Cavion
CREATE TABLE Cavion
(
    IdCAvion  SERIAL,
    TipoAvion VARCHAR(50)
);

--TABLA: CSexo
CREATE TABLE CSexo
(
    IdSexo SERIAL,
    Sexo   VARCHAR(10)
);

--TABLA: CSnack
CREATE TABLE CSnack
(
    IdSnack   SERIAL,
    TipoSnack VARCHAR(20)
);

--TABLA: CBebida
CREATE TABLE CBebida
(
    IdBebida   SERIAL,
    TipoBebida VARCHAR(20)
);

--TABLA: TipoCombo
CREATE TABLE TipoCombo
(
    IdCombo  SERIAL,
    IdSnack  INTEGER,
    IdBebida INTEGER
);

--TABLA:CTipoEmpleado
CREATE TABLE CTipoEmpleado
(
    IdCargo SERIAL,
    Cargo   VARCHAR(50)
);

-- Tabla: cTipoPago
CREATE TABLE cTipopago
(
    IdPago   SERIAL,
    tipopago VARCHAR(20)
);

-- Tabla: cDescuento
CREATE TABLE cDescuento
(
    IdDescuento   SERIAL,
    tipodescuento VARCHAR(20)
);

-- Tabla: cTipoVuelo
CREATE TABLE cTipovuelo
(
    IdVuelo   SERIAL,
    tipovuelo VARCHAR(20)
);

-- Tabla: cLugar
CREATE TABLE cLugar
(
    IdLugar SERIAL,
    lugar   VARCHAR(50)
);

--Aeropuerto
CREATE TABLE Aeropuerto
(
    IdAeropuerto  SERIAL,
    Codigo_Postal CHAR(5),
    Nombre        VARCHAR(150),
    Altitud       VARCHAR(100),
    Latitud       VARCHAR(100)
);

--TABLA: Persona
CREATE TABLE Persona
(
    IdPersona        SERIAL,
    Nombre           VARCHAR(100),
    Apellido_Paterno VARCHAR(50),
    Apellido_Materno VARCHAR(50),
    Fecha_Nacimiento DATE,
    IdSexo           INTEGER
);


--Tabla:Aerolinea
CREATE TABLE Aerolinea
(
    IdSucursal   SERIAL,
    Sucursal     VARCHAR(150),
    IdAeropuerto INTEGER
);

--Tabla:Avion
CREATE TABLE Avion
(
    IdAvion    SERIAL,
    IdCAvion   INTEGER,
    IdSucursal INTEGER
);

--TABLA: EmpleadoA
CREATE TABLE EmpleadoA
(
    IdEmpleado SERIAL,
    Numero_SS  VARCHAR(20),
    IdCargo    INTEGER,
    IdPersona  INTEGER
);


--TABLA: EmpleadoRFC
CREATE TABLE EmpleadoRFC
(
    IdEmpleadorfc SERIAL,
    RFC           VARCHAR(13),
    idEmpleado    INTEGER
);

--Tabla:Cliente
CREATE TABLE Cliente
(
    IdCliente SERIAL,
    Correo    VARCHAR(100),
    IdPersona INTEGER
);

--TABLA: Boleto
CREATE TABLE Boleto
(
    IdBoleto        SERIAL,
    Fecha_Compra    DATE,
    Hora_Compra     TIME,
    Fecha_Vuelo     DATE,
    Hora_Abordaje   TIME,
    Numero_Asiento  INTEGER,
    IdSalida        INTEGER,
    Hora_Aterrizaje TIME,
    IdDestino       INTEGER,
    IdAvion         INTEGER,
    IdCliente       INTEGER,
    IdDescuento     INTEGER,
    IdVuelo         INTEGER,
    IdPago          INTEGER
);

--TABLA:Pasajero
CREATE TABLE Pasajero
(
    IdPasajero SERIAL,
    IdCombo    INTEGER,
    IdBoleto   INTEGER,
    IdPersona  INTEGER
);

--TABLA:Equipaje
CREATE TABLE Equipaje
(
    IdEquipaje     SERIAL,
    Peso_kg        DOUBLE PRECISION,
    IdPasajero     INTEGER,
    IdTipoEquipaje INTEGER
);
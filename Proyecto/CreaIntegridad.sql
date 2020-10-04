-- Tabla: cTipoEquipaje
ALTER TABLE ctipoequipaje
    ADD CONSTRAINT pk_ctipoequipaje_idtipoequipaje
        PRIMARY KEY (idtipoequipaje);

--CSexo
ALTER TABLE CSexo
    ADD CONSTRAINT pk_csexo_idsexo
        PRIMARY KEY (idsexo);

--CAvion
ALTER TABLE CAvion
    ADD CONSTRAINT pk_cavion_idcavion
        PRIMARY KEY (idcavion);

-- Tabla: cSnack
ALTER TABLE CSnack
    ADD CONSTRAINT pk_CSnack_IdCSnack PRIMARY KEY (IdSnack);

-- Tabla: cBebida
ALTER TABLE CBebida
    ADD CONSTRAINT pk_CBebida_IdCBebida PRIMARY KEY (IdBebida);

--Tabla Combo
ALTER TABLE TipoCombo
    ADD CONSTRAINT pk_Combo_IdCombo
        PRIMARY KEY (IdCombo);
ALTER TABLE TipoCombo
    ADD CONSTRAINT fk_Combo_IdSnack_CSnack
        FOREIGN KEY (IdSnack) REFERENCES CSnack (IdSnack);
ALTER TABLE TipoCombo
    ADD CONSTRAINT fk_Combo_IdBebida_CBebida
        FOREIGN KEY (IdBebida) REFERENCES CBebida (IdBebida);

--Tabla: CTipoEmpleado
ALTER TABLE ctipoempleado
    ADD CONSTRAINT pk_ctipoempleado_idcargo PRIMARY KEY (idcargo);

--Tabla Ctipovuelo
ALTER TABLE Ctipovuelo
    ADD CONSTRAINT pk_Ctipovuelo_idvuelo
        PRIMARY KEY (Idvuelo);
--Tabla Cdescuento
ALTER TABLE Cdescuento
    ADD CONSTRAINT pk_Cdescuento_iddescuento
        PRIMARY KEY (Iddescuento);
--Tabla Ctipopago
ALTER TABLE Ctipopago
    ADD CONSTRAINT pk_Ctipopago_idpago
        PRIMARY KEY (Idpago);

-- Tabla: cLugar
ALTER TABLE clugar
    ADD CONSTRAINT pk_clugar_idlugar PRIMARY KEY (idlugar);

--Aeropuerto
ALTER TABLE aeropuerto
    ADD CONSTRAINT pk_aeropuerto_idaeropuerto
        PRIMARY KEY (idaeropuerto);
ALTER TABLE Aeropuerto
    ALTER COLUMN codigo_postal SET NOT NULL;
ALTER TABLE Aeropuerto
    ALTER COLUMN nombre SET NOT NULL;
ALTER TABLE Aeropuerto
    ALTER COLUMN Altitud SET NOT NULL;
ALTER TABLE Aeropuerto
    ALTER COLUMN Latitud SET NOT NULL;

--Persona
ALTER TABLE Persona
    ALTER COLUMN nombre SET NOT NULL;
ALTER TABLE Persona
    ALTER COLUMN apellido_paterno SET NOT NULL;
ALTER TABLE Persona
    ALTER COLUMN apellido_materno SET NOT NULL;
ALTER TABLE Persona
    ALTER COLUMN fecha_nacimiento SET NOT NULL;
ALTER TABLE Persona
    ALTER COLUMN idsexo SET NOT NULL;
ALTER TABLE Persona
    ADD CONSTRAINT pk_persona_idpersona
        PRIMARY KEY (idpersona);
ALTER TABLE Persona
    ADD CONSTRAINT fk_persona_idsexo_csexo
        FOREIGN KEY (idsexo) REFERENCES CSexo (idsexo);


-- Tabla: Aerolinea
ALTER TABLE aerolinea
    ADD CONSTRAINT pk_aerolinea_idsucursal PRIMARY KEY (idsucursal);
ALTER TABLE aerolinea
    ALTER COLUMN sucursal SET NOT NULL;
ALTER TABLE aerolinea
    ADD CONSTRAINT fk_aerolinea_idaeropuerto_aeropuerto
        FOREIGN KEY (idaeropuerto) REFERENCES aeropuerto (idaeropuerto);

--Tabla: Avion
ALTER TABLE avion
    ADD CONSTRAINT pk_avion_idavion PRIMARY KEY (idavion);
ALTER TABLE avion
    ADD CONSTRAINT fk_avion_idavion_cavion FOREIGN KEY (idcavion) REFERENCES cavion (idcavion);
ALTER TABLE avion
    ADD CONSTRAINT fk_avion_idsucursal_aerolinea FOREIGN KEY (idsucursal) REFERENCES aerolinea (idsucursal);

--EmpleadoA
ALTER TABLE EmpleadoA
    ADD CONSTRAINT pk_empleadoa_idempleado
        PRIMARY KEY (idempleado);
ALTER TABLE EmpleadoA
    ALTER COLUMN numero_ss SET NOT NULL;

--EmpleadoRFC
ALTER TABLE EmpleadoRFC
    ADD CONSTRAINT fk_empleadorfc_idempleadorfc_empleadoa
        FOREIGN KEY (idempleado) REFERENCES EmpleadoA (idempleado);
ALTER TABLE EmpleadoRFC
    ADD CONSTRAINT pk_empleadorfc_idempleadorfc
        PRIMARY KEY (idempleadorfc);
ALTER TABLE EmpleadoRFC
    ALTER COLUMN rfc SET NOT NULL;

-- Tabla: Cliente
ALTER TABLE cliente
    ADD CONSTRAINT pk_cliente_idcliente
        PRIMARY KEY (idcliente);
ALTER TABLE cliente
    ADD CONSTRAINT fk_cliente_idpersona_persona
        FOREIGN KEY (idpersona) REFERENCES persona (idpersona);

--TABLA: Boleto
ALTER TABLE boleto
    ADD CONSTRAINT pk_boleto_Idboleto
        PRIMARY KEY (Idboleto);
ALTER TABLE boleto
    ALTER COLUMN Fecha_Compra SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN Hora_Compra SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN Fecha_Vuelo SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN Hora_Abordaje SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN Numero_Asiento SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN Hora_Aterrizaje SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN IdDestino SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN IdSalida SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN IdAvion SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN IdCliente SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN IdDescuento SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN IdVuelo SET NOT NULL;
ALTER TABLE boleto
    ALTER COLUMN IdPago SET NOT NULL;
ALTER TABLE boleto
    ADD CONSTRAINT fk_boleto_Idsalida_clugar
        FOREIGN KEY (Idsalida) REFERENCES clugar (idlugar);
ALTER TABLE boleto
    ADD CONSTRAINT fk_boleto_Iddestino_clugar
        FOREIGN KEY (Iddestino) REFERENCES clugar (idlugar);
ALTER TABLE boleto
    ADD CONSTRAINT fk_boleto_Idavion_avion
        FOREIGN KEY (Idavion) REFERENCES avion (idavion);
ALTER TABLE boleto
    ADD CONSTRAINT fk_boleto_Idcliente_cliente
        FOREIGN KEY (Idcliente) REFERENCES cliente (idcliente);
ALTER TABLE boleto
    ADD CONSTRAINT fk_boleto_Idvuelo_ctipovuelo
        FOREIGN KEY (Idvuelo) REFERENCES ctipovuelo (idvuelo);
ALTER TABLE boleto
    ADD CONSTRAINT fk_boleto_Idpago_ctipopago
        FOREIGN KEY (Idpago) REFERENCES ctipopago (idpago);
ALTER TABLE boleto
    ADD CONSTRAINT fk_boleto_Iddescuento_cdescuento
        FOREIGN KEY (Iddescuento) REFERENCES cdescuento (iddescuento);

--Tabla:Pasajero
ALTER TABLE pasajero
    ADD CONSTRAINT pk_pasajero_idpasajero PRIMARY KEY (idpasajero);
ALTER TABLE pasajero
    ADD CONSTRAINT fk_pasajero_idcombo_tipocombo FOREIGN KEY (idcombo) REFERENCES tipocombo (idcombo);
ALTER TABLE pasajero
    ADD CONSTRAINT fk_pasajero_idboleto_boleto FOREIGN KEY (idpasajero) REFERENCES boleto (idboleto);


--TABLA:Equipaje
ALTER TABLE equipaje
    ADD CONSTRAINT pk_equipaje_idequipaje
        PRIMARY KEY (idequipaje);
ALTER TABLE equipaje
    ADD CONSTRAINT fk_equipaje_idpasajero_pasajero
        FOREIGN KEY (idpasajero) REFERENCES pasajero (idpasajero);
ALTER TABLE equipaje
    ADD CONSTRAINT fk_equipaje_idtipoequipaje_ctipoquipaje
        FOREIGN KEY (idtipoequipaje) REFERENCES CTipoEquipaje (idtipoequipaje);
ALTER TABLE equipaje
    ALTER COLUMN peso_kg SET NOT NULL;
ALTER TABLE equipaje
    ADD CONSTRAINT chk_equipaje_peso CHECK (peso_kg > 0);
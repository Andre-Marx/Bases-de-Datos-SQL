--Funcion que devuelve una tabla
-- Obtener cuantas maletas de cierto tipo tiene un pasajero, ingresando el id del pasajero y el id del tipo de equipaje
CREATE OR REPLACE FUNCTION fnc_equipaje(pidpasajero INTEGER,
                                        pidtipoequipaje INTEGER)
    RETURNS TABLE
            (
                oid      INTEGER,
                onombre  TEXT,
                otipo    VARCHAR(100),
                omaletas BIGINT
            )
AS
$$
DECLARE
    vidpasajero     INTEGER;
    vidtipoequipaje VARCHAR(100);
BEGIN
    vidtipoequipaje = (SELECT tipoequipaje FROM ctipoequipaje WHERE idtipoequipaje = pidtipoequipaje);
    vidpasajero = pidpasajero;
    IF (vidpasajero IN (SELECT idpasajero FROM equipaje WHERE idtipoequipaje = pidtipoequipaje))
    THEN
        RETURN QUERY SELECT vidpasajero         AS                                         Pasajero,
                            (nombre || ' ' || apellido_paterno || ' ' || apellido_materno) Nombre,
                            vidtipoequipaje,
                            COUNT(e.idpasajero) AS                                         Maletas
                     FROM pasajero
                              JOIN persona on pasajero.idpersona = persona.idpersona
                              JOIN equipaje e on pasajero.idpasajero = e.idpasajero
                     WHERE pasajero.idpasajero = vidpasajero
                     GROUP BY pasajero.idpasajero, persona.idpersona;
    ELSE
        RETURN QUERY SELECT vidpasajero                                           AS       Pasajero,
                            (nombre || ' ' || apellido_paterno || ' ' || apellido_materno) Nombre,
                            CAST('No tiene maletas de este tipo' AS VARCHAR(100)) AS       Mensaje,
                            CAST(0 AS BIGINT)                                     AS       Maletas
                     FROM pasajero
                              JOIN persona on pasajero.idpersona = persona.idpersona
                     WHERE pasajero.idpasajero = vidpasajero;
    END IF;
END;
$$
    LANGUAGE 'plpgsql' VOLATILE;

-- Mandamos llamar la función
SELECT *
FROM fnc_equipaje(1000, 1);


-- Para recibir fechas en formato dd/mm/aaaa
SET DATESTYLE TO 'European';

-- Crearemos una función que nos sirva para realizar las inserciones en la tabla boleto
CREATE OR REPLACE FUNCTION fnc_registraboleto(pfecha_compra DATE,
                                              phora_compra TIME,
                                              pfecha_vuelo DATE,
                                              phora_abordaje TIME,
                                              pnumero_asiento INTEGER,
                                              phora_aterrizaje TIME,
                                              pidavion INTEGER,
                                              pidcliente INTEGER,
                                              pidpago INTEGER,
                                              piddescuento INTEGER,
                                              piddestino INTEGER,
                                              pidsalida INTEGER,
                                              pidvuelo INTEGER)
    RETURNS VARCHAR(20)
AS
$$
DECLARE
    vidboleto       INTEGER;
    DECLARE vmaximo INTEGER;
BEGIN

    IF (pidsalida = piddestino) THEN

        RETURN 'No se puede hacer la inserción';

    ELSE

        -- Obtenemos el máximo de los id
        vmaximo = (SELECT MAX(IdBoleto) FROM Boleto);

        -- Obtenemos el nuevo id
        IF (vmaximo IS NULL) THEN

            vidboleto = 1;

        ELSE

            vidboleto = (vmaximo + 1);
        END IF;

        -- Hacemos la inserción
        INSERT INTO Boleto (IdBoleto, Fecha_Compra, Hora_Compra, fecha_vuelo, Hora_Abordaje, Numero_Asiento,
                            Hora_Aterrizaje, IdAvion, IdCliente, IdPago, IdDescuento, IdDestino, IdSalida, IdVuelo)
        VALUES (vidboleto, pfecha_compra, phora_compra, pfecha_vuelo, phora_abordaje, pnumero_asiento, phora_aterrizaje,
                pidavion, pidcliente, pidpago, piddescuento, piddestino, pidsalida, pidvuelo);

        RETURN 'Inserción Exitosa';

    END IF;

END;
$$
    LANGUAGE 'plpgsql' VOLATILE;

-- Monstramos la tabla 
SELECT *
FROM boleto
ORDER BY idboleto DESC;

-- Mandamos llamar a la función
SELECT *
FROM fnc_registraboleto('18/1/2020', '16:26:54', '28/4/2020', '13:39:19', '146', '14:38:5', '43', 43, 1, 4, 21, 28, 2);

-- Monstramos la tabla 
SELECT *
FROM boleto
ORDER BY idboleto DESC;


-- FUNCIÓN QUE DEVUELVE UN VALOR
-- Función que recibe una edad y cuenta cuantos clientes hay de esa edad
CREATE OR REPLACE FUNCTION fnc_numeroClientesEdad(
    pedad INTEGER
)
    RETURNS BIGINT
AS
$$
DECLARE
    vresultado BIGINT;
BEGIN

    vresultado = (SELECT no_personas
                  FROM (
                           SELECT EXTRACT(YEAR FROM AGE(fecha_nacimiento)) Edad, COUNT(persona.idpersona) no_personas
                           FROM cliente
                                    JOIN persona ON cliente.idpersona = persona.idpersona
                           GROUP BY Edad
                       ) T1
                  WHERE edad = pedad);

    IF (vresultado IS NULL) THEN
        vresultado = 0;

    ELSE

        vresultado = vresultado;

    END IF;

    RETURN vresultado;

END;
$$
    LANGUAGE 'plpgsql' VOLATILE;

-- LLAMAMOS LA FUNCIÓN
SELECT *
FROM fnc_numeroClientesEdad(41);
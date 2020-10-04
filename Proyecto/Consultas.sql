--Traemos la extención
CREATE EXTENSION tablefunc;

-- CROSSTAB
-- Obtener el tipo de bebida que consumen los menores de edad y los mayores de edad
SELECT *
FROM CROSSTAB(
             'SELECT T2.tipobebida, ''Menor de edad'' tipo, COUNT(idbebida) no_bebidas
                 FROM persona JOIN (
                     SELECT idpersona, tipobebida, idbebida
                     FROM pasajero JOIN (
                         SELECT cbebida.idbebida, tipobebida, idcombo
                         FROM cbebida JOIN tipocombo ON cbebida.idbebida = tipocombo.idbebida
                     ) T1 ON pasajero.idcombo = T1.idcombo
                 ) T2 ON persona.idpersona = T2.idpersona
                 WHERE EXTRACT(YEAR FROM AGE(fecha_nacimiento)) <= 18
                 GROUP BY tipo, T2.tipobebida
             UNION
                 SELECT T2.tipobebida, ''Mayor de edad'' tipo, COUNT(idbebida) no_bebidas
                 FROM persona JOIN (
                     SELECT idpersona, tipobebida, idbebida
                     FROM pasajero JOIN (
                         SELECT cbebida.idbebida, tipobebida, idcombo
                         FROM cbebida JOIN tipocombo ON cbebida.idbebida = tipocombo.idbebida
                     ) T1 ON pasajero.idcombo = T1.idcombo
                 ) T2 ON persona.idpersona = T2.idpersona
                 WHERE EXTRACT(YEAR FROM AGE(fecha_nacimiento)) > 18
                 GROUP BY tipo, T2.tipobebida
                 ORDER BY tipobebida, tipo ASC'
         ) AS t_resultado(otipobebida VARCHAR(20), omayoredad BIGINT, omenoredad BIGINT);


-- Subconsultas
-- Obtener el nombre y apellidos paternos de los pasajeros que han salido del aeropuerto de la CdMx

SELECT nombre, apellido_paterno, apellido_materno
FROM (
         SELECT *
         FROM persona
                  JOIN (
             SELECT pasajero.idpersona, T3.nombre Nombre_aeropuerto, T3.idaeropuerto
             FROM pasajero
                      JOIN (
                 SELECT boleto.idboleto, T2.nombre, T2.idavion, T2.idaeropuerto
                 FROM boleto
                          JOIN (
                     SELECT T1.nombre, idavion, T1.idaeropuerto
                     FROM avion
                              JOIN (
                         SELECT aeropuerto.idaeropuerto, nombre, sucursal, idsucursal
                         FROM aeropuerto
                                  JOIN aerolinea ON aeropuerto.idaeropuerto = aerolinea.idaeropuerto) T1
                                   ON avion.idsucursal = T1.idsucursal
                 ) T2 ON boleto.idavion = T2.idavion
             ) T3 ON pasajero.idboleto = T3.idboleto
         ) T4 ON persona.idpersona = T4.idpersona
     ) T5
WHERE idaeropuerto = 2
ORDER BY apellido_paterno, nombre;


-- JOIN
-- Obtener cuantos hombres y mujeres hay para cada cargo
SELECT cargo, csexo.sexo, CAST(COUNT(T2.idsexo) AS INTEGER)
FROM (SELECT cargo, idsexo
      FROM persona
               JOIN (
          SELECT idempleado, cargo, idpersona, empleadoa.idcargo
          FROM empleadoa
                   JOIN ctipoempleado ON empleadoa.idcargo = ctipoempleado.idcargo
      ) T1 ON persona.idpersona = T1.idpersona) T2
         JOIN csexo ON T2.idsexo = csexo.idsexo
GROUP BY cargo, sexo
ORDER BY cargo, sexo DESC;


--TABLA simple
SELECT IdCavion
FROM CAvion
WHERE TipoAvion = 'Tipo 3';

--Paginación en la tabla persona
SELECT idpersona, nombre, idsexo, fecha_nacimiento
FROM persona
WHERE idsexo != 3
ORDER BY idpersona DESC
    OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;


-- Funcion de agregación para obtener el total de personas que son clientes de la Aerolinea
SELECT SUM(P.contar) Total
FROM (SELECT COUNT(persona.idpersona) Contar
      FROM persona
               JOIN cliente c on persona.idpersona = c.idpersona
      GROUP BY persona.idpersona) P;

-- Función de ventana para obtener el total de personas que son clientes de la Aerolinea
SELECT SUM(P.contar) Total
FROM (SELECT COUNT(persona.idpersona) OVER (PARTITION BY persona.idpersona) Contar, nombre
      FROM persona
               JOIN cliente c on persona.idpersona = c.idpersona) P;


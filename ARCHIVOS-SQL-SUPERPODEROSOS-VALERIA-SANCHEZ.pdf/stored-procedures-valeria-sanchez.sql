use proyecto;

-- --------------------- STORED PROCEDURES ----------------------

-- Creo un stored procedure sin parametros simil a una vista que te devuelva toda una tabla con la cantidad de veces que ganaron los superpoderosos
DELIMITER //
CREATE PROCEDURE Cantidad_victorias_por_superpoderoso()
BEGIN
    SELECT
		id_ganador,
        count(1) AS total_victorias
    FROM enfrentamientos
    GROUP BY id_ganador
    ORDER BY total_victorias DESC;
END //
DELIMITER ;

-- Llamo al stored procedure con la funcion reservada call sin parametros
CALL Cantidad_victorias_por_superpoderoso()


-- Genero una stored procedure para poder insertar valores en una tabla (por ejemplo en la tabla tipo que te dice si son villanos a heroes)
DELIMITER //
CREATE PROCEDURE Insertar_datos_tabla_tipo (IN id_tipo INT, IN descripcion VARCHAR(30))
BEGIN
    INSERT INTO tipo  VALUES (id_tipo, descripcion);
END //
DELIMITER ;

-- Llamo al procedure y pruebo insertandole el valor 4 y como descripcion un ultravillano
CALL Insertar_datos_tabla_tipo (4, 'UltraVillano');

-- Hago una query basica para revisar si efectivamente se insertaron los valores
SELECT * FROM tipo;


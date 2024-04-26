use proyecto;

-- -- ------------ FUCNIONES ---------------------

-- Creo una funcion que recibe un valor numerico referenciado al id del superpoderoso y me devuelve si es heroe o villano (un varchar)
DELIMITER //

CREATE FUNCTION obtenerheroeVillano(Parametro INT) RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
  DECLARE heroeOvillano VARCHAR(30);
  SET heroeOvillano = (SELECT descripcion FROM tipo WHERE id_tipo = (SELECT id_tipo FROM superpoderosos WHERE id_superpoderosos = Parametro));
  RETURN heroeOvillano;
END //

DELIMITER ;


-- Prueba de función para saber si es heroe o villano el id_superpoderoso 2
SELECT obtenerheroeVillano(2);

-- Funcion en la cual se le pasa como parametro el id_superpoderoso y devuelve el nombre de la persona
DELIMITER //

CREATE FUNCTION obtenernombresuperpoderoso(Parametro INT) RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
  DECLARE nombre_superpoderoso VARCHAR(30);
  SET nombre_superpoderoso = (SELECT nombre from superpoderosos where id_superpoderosos = Parametro);
  RETURN nombre_superpoderoso;
END //

DELIMITER ;

-- Pruebo la funcion con el id 3 de superpodersoso para obtener el nombre
SELECT obtenernombresuperpoderoso(3);

-- Creo una funcion para saber la cantidad de victorias del superpoderosos que se use como parametro
DELIMITER //

CREATE FUNCTION cantidad_victorias_superpoderoso(Parametro INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE cantidad_victorias INT;
  SET cantidad_victorias = (SELECT COUNT(1) FROM enfrentamientos where id_ganador = Parametro);
  RETURN cantidad_victorias;
END //

DELIMITER ;

-- Pruebo la funcion con el 10 id para saber cuantas victorias tuvo
SELECT cantidad_victorias_superpoderoso(10)
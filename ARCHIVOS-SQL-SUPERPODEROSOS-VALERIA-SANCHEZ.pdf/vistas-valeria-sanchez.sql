use proyecto;

-- ------------ CREACION DE VISTAS ----------------

-- Creo una vista para que me diga todos los superpoderosos y la descripcion de su superpoder de la otra tabla
CREATE OR REPLACE VIEW descripcion_superpoderes AS
SELECT
	a.id_superpoderosos,
    a.nombre,
    b.descripcion
FROM superpoderosos a
INNER JOIN superpoder b
ON a.id_superpoder = b.id_superpoder;

-- Creo una vista con todo el listado del nombre de los heroes (tengo que hacer un join a la tabla tipo para saber si es heroe o villano)
CREATE OR REPLACE VIEW listado_superheroes AS
SELECT
	s.id_superpoderosos,
    s.nombre
FROM superpoderosos s
INNER JOIN tipo t
ON s.id_tipo = t.id_tipo
WHERE t.descripcion = 'heroe';

-- Creo una vista similar a la anterior pero que me diga el listado del nombre de villanos o indefinidos
CREATE OR REPLACE VIEW listado_villanos_y_indefinidos AS
SELECT
	s.id_superpoderosos,
    s.nombre,
    t.descripcion
FROM superpoderosos s
INNER JOIN tipo t
ON s.id_tipo = t.id_tipo
WHERE t.descripcion != 'heroe';

-- Creo una vista para los top 3 de superheroes mas ricos usando un SUM y un limit 3 para sacar solo los 3 primeros habiendolos ordenado de mayor a menor primero
CREATE OR REPLACE VIEW top_3_superherores_mas_ricos AS
SELECT
	s.id_superpoderosos,
    s.nombre,
    SUM(p.monto) as riqueza
FROM superpoderosos s
INNER JOIN patrocinio p
ON s.id_superpoderosos = p.id_superpoderosos
GROUP BY s.id_superpoderosos, s.nombre
ORDER BY riqueza DESC
LIMIT 3
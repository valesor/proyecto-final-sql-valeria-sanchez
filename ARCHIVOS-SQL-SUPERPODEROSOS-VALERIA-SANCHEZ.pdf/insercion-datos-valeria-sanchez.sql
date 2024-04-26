use proyecto;

-- ----------------------- INSERCION DE DATOS ---------------------

-- Inserto primero los valores en las tablas que no tienen FK 
 
-- Inserto los valores de nivel_poder que van de 1 a 5, siendo 5 el mas poderoso
INSERT INTO nivel_poder VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

-- Inserto los valores de superpoder ya teniendo el nivel_poder anteriormente creado y le agrego descripcion de poder
INSERT INTO superpoder VALUES
(1,'superfuerza',5),
(2,'invisibilidad',3),
(3,'teletrasportacion',3),
(4,'telepatia',4),
(5,'superoido',3),
(6,'disparafuego',2),
(7,'frizar',1),
(8,'encogerse',2),
(9,'inmortalidad',3),
(10,'sinsuperpoder',1);

-- Inserto los valores de tipo para saber si es heroe o villano
INSERT INTO tipo VALUES 
(1, 'heroe'),
(2, 'villano'),
(3, 'indefinido');


-- Inserto los valores de superpoderosos le asigno un nombre y si es heroe, villano o indefinido y el superpoder que tiene (siendo anteriormente creados los FK de esta tabla id_tipo y id_superpoder)
INSERT INTO superpoderosos VALUES
(1, 'Sergio-masus', 3, 4), -- telepatia
(2, 'Ricardo-fortus', 1, 1), -- fuerza
(3, 'Albertus', 2, 2), -- invisibilidad
(4, 'O-tamendi', 1, 3), -- teletransportacion
(5, 'charlisaurius', 1, 5), -- superoido
(6, 'Moria-casanus', 1, 6),   -- disparafuego
(7, 'Luciana-salazarus', 2, 7),  -- frizar
(8, 'Mileius', 2, 8), -- encogerse
(9, 'Mirtasaurius', 1, 9),-- inmortalidad
(10, 'Santiago-delmorbus', 3, 10);-- sinsuperpoder


-- Inserto los valores de actividad_delictiva le asigno el tipo de activdad delictiva el monto recaudado y quien lo hizo
INSERT INTO actividad_delictiva VALUES
(1, 'robo', 1000000.00, 8),
(2, 'asalto', 5000000.00, 3),
(3, 'congelamiento', 0.00, 7),
(4, 'secuestro', 2000000.00, 8),
(5, 'robo', 1000000.00, 3);


-- Inserto los valores de patrocinio pongo el nombre del patrocinador el monto, fecha de inicio, fecha de fin y el id del superpoderoso
INSERT INTO patrocinio VALUES
(1, 'cotus', 3000000.00,'2022-01-10' ,'2025-01-10', 1),
(2, 'marolius', 8000000.00,'2023-03-20' ,'2026-03-20', 2),
(3, 'amazonus', 6000000.00,'2020-01-15' ,'2025-01-15', 5),
(4, 'potus', 7000000.00,'2021-06-08' ,'2026-06-08', 6),
(5, 'raxitus', 2000000.00,'2022-09-18' ,'2027-09-18',9);


-- Inserto los valores de misiones le asigno el nombre de la mision, descripción, estado de la misión y id d esuperpoderoso.
INSERT INTO misiones VALUES
(1, 'rescutas', 'rescatar a una victima que esta sufriendo un robo', 'En curso', 1),
(2, 'secuestrol', 'Rescatar a un funcionario secuestrado', 'Completado', 2),
(3, 'anticongelatus', 'Descongelar a una mujer frizada', 'Incompleto', 6),
(4, 'sinfonicos', 'Cantarle a una victima para que recupere el oido', 'En curso', 5),
(5, 'fenix', 'Darle la posima de la vida eterna', 'completado', 9),
(6, 'bloqueulus', 'Derribar una pared para rescatar victimas de un incendio', 'Incompleto', 1);


-- Inserto los valores de enfrentamientos, fecha, quien se enfrenta a quien y quien es el ganador
INSERT INTO enfrentamientos VALUES
(1, '2023-11-19', 1, 8, 1),
(2, '2023-01-22', 6, 7, 7),
(3, '2022-03-14', 9, 10, 10),
(4, '2021-06-03', 2, 3, 3),
(5, '2023-12-30', 4, 5, 4),
(6, '2022-10-12', 1, 9, 9),
(7, '2021-01-01', 6, 3, 3),
(8, '2023-09-09', 4, 9, 9),
(9, '2021-07-16', 6, 9, 6),
(10, '2023-08-19', 10, 7, 10);







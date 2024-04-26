use proyecto;

-- ---------- TRIGGERS --------------------------

-- 1) Creo primero la tabla donde voy a guardar la facha que se realizo la insercion
CREATE TABLE IF NOT EXISTS tabla_auditoria_fecha (
    id_accion_nueva INT PRIMARY KEY AUTO_INCREMENT, -- Este defino como el PK
    accion VARCHAR(30) not null,
    fecha datetime default now()
);

-- Genero el trigger que cuando se inserte una fila en el superpoder me genere una fila en la tabla creada anteriormente con la fecha y hora de la insercion
DELIMITER //

CREATE TRIGGER audit_trigger_insert_fecha
AFTER INSERT ON superpoder
FOR EACH ROW
BEGIN
    -- Insertar datos de auditoría en la tabla de auditoría
    INSERT INTO tabla_auditoria_fecha (accion) VALUES ('Inserción de fila');
END //

DELIMITER ;

-- Realizo la insercion de los datos en la tabla superpoder
INSERT INTO superpoder VALUES (11, 'Rayolaser', 4);

-- reviso si funciono el trigger y me genero el registro en la tabla de auditoria
select * from tabla_auditoria_fecha;




--  2) Creo primero la tabla donde voy a guardar la fecha que se realizo la insercion
CREATE TABLE IF NOT EXISTS tabla_auditoria_registros (
    id_accion_nueva INT PRIMARY KEY AUTO_INCREMENT, -- Este defino como el PK
    id_superpoder_new INT,
    superpoder_new VARCHAR(30),
    id_nivel_poder_new INT
);

-- Genero el trigger que cuando se inserte una fila en el superpoder me genere una fila en la tabla creada anteriormente con los registros insertados

DELIMITER //

CREATE TRIGGER audit_trigger_insert_registros
AFTER INSERT ON superpoder
FOR EACH ROW
BEGIN
    -- Insertar datos de auditoría en la tabla de auditoría
    INSERT INTO tabla_auditoria_registros (id_superpoder_new, superpoder_new, id_nivel_poder_new )
    VALUES (NEW.id_superpoder, NEW.descripcion, NEW.id_nivel_poder);
END //

DELIMITER ;

-- Realizo la insercion de los datos en la tabla superpoder
INSERT INTO superpoder VALUES (12, 'Supermocos', 3);

-- reviso si funciono el trigger y me genero el registro en la tabla de auditoria
select * from tabla_auditoria_fecha;

-- reviso si funciono el trigger y me genero el registro en la tabla de registros
select * from tabla_auditoria_registros;


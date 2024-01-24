-- Creando base de datos
CREATE DATABASE their_favorite_food;

USE their_favorite_food;

-- Creando tablas (basadas en la imagen)
CREATE TABLE person (
    person_id SMALLINT UNSIGNED NOT NULL,
    fname VARCHAR(25),
    lname VARCHAR(30),
    eye_color ENUM('BR', 'BL', 'GR'),
    birthday DATE,
    street VARCHAR(30),
    city VARCHAR(25),
    state VARCHAR(35),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

CREATE TABLE favorite_food(
    person_id SMALLINT UNSIGNED NOT NULL,
    favorite_food VARCHAR(35) NOT NULL,
    CONSTRAINT pk_favorite_food PRIMARY KEY (favorite_food),
    CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id) REFERENCES person (person_id)
);

-- Verificar tablas creadas
SHOW tables;

-- Verificar tablas internamente
DESC person;
DESC favorite_food;

-- Deshabilitar momentáneamente opciones de FOREIGN KEY del SCHEMA actual (esto permite modificar columnas de PK)
SET FOREIGN_KEY_CHEKS=0;


-- Agregando propiedad AUTO_INCREMENT a PRIMARY KEY
ALTER TABLE person
    MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;

-- Revisar modificaciones
DESC person;

-- Habilitar característica de FK del SCHEMA
SET FOREIGN_KEY_CHEKS=1;

-- Poblando tabla person
INSERT INTO person (person_id, fname, lname, eye_color, birthday)
VALUES (NULL, 'William', 'Turner', 'BR', '1927-05-27');

INSERT INTO person 
    (fname, lname, eye_color, birthday, street, city, state, country, postal_code)
VALUES 
    ('Susan', 'Smith', 'BL', '1975-11-02', '23 Maple St.', 'Alington', 'VA', 'USA', '20220');

-- Verificando la nueva inserción
SELECT *
FROM person
WHERE person_id = 2;

-- Verificando inserción de datos
SELECT *
FROM person;

-- Agregando multiples datos a la tabla favorite_food
INSERT INTO favorite_food
VALUES 
    (1, 'Pizza'),
    (1, 'Cookies'),
    (1, 'Nachos');

-- Actualizando datos de un registro
UPDATE person
    SET 
        street = '1225 Tremont St.',
        city = 'Boston',
        state = 'MA',
        country = 'USA',
        postal_code = '02138'
    WHERE person_id = 1;

-- Verificando datos del usuario con id igual a '1'
SELECT * FROM person    
WHERE person_id = 1;
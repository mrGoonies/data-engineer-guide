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

-- Deshaiblitar momentaneamente opciones de FOREIGN KEY del SCHEMA actual (esto permite modificar columnas de PK)
SET FOREIGN_KEY_CHEKS=0;


-- Agregando propiedad AUTO_INCREMENT a PRIMARY KEY
ALTER TABLE person
    MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;

-- Revisar modificaciones
DESC person;

-- Habilitar caracteristica de FK del SCHEMA
SET FOREIGN_KEY_CHEKS=0;
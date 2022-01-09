-- Cree una tabla llamada CURSO con los atributos: 
CREATE TABLE curso (
 codigo INT NOT NULL,
 PRIMARY KEY(codigo),
 nombre VARCHAR(45) NOT NULL,
 descripcion VARCHAR(45),
 turno VARCHAR(45) NOT NULL
);

-- Agregue un campo “cupo” de tipo numérico
ALTER TABLE curso ADD cupo INT NOT NULL DEFAULT 20;

-- Inserte datos en la tabla:
INSERT INTO curso VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);
INSERT INTO curso VALUES (102, "Matemática Discreta","","Tarde",30);

-- Cree un registro con el nombre nulo y verifique que no funciona.
INSERT INTO curso VALUES (103, NULL,"","Noche",30);

-- Cree un registro con la clave primaria repetida y verifique que no funciona.
INSERT INTO curso VALUES (101, "pk repetida","","Noche",30);

-- Actualice, para todos los cursos, el cupo en 25.
UPDATE curso SET cupo = 25;

-- Elimine el curso Algoritmos.
DELETE FROM curso WHERE nombre = "Algoritmos"
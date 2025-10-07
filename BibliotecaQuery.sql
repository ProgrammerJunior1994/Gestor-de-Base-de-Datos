--Update - Usuarios
UPDATE usuarios SET correo_usuario = 'vacalola@lola.net' WHERE id_usuario = 1; --Cambiar dato de correo
UPDATE usuarios SET nombre_usuario = 'La Vaca Lola' WHERE id_usuario = 1; --Cambiar nombre de nombre_usuario
UPDATE usuarios SET lugar_proveniencia = 'Miami' WHERE id_usuario = 1; --Cambiar lugar de lugar_proveniencia
UPDATE usuarios SET edad = 18 WHERE id_usuario = 1; --Cambiar edad de edad

-- value BETWEEN - Usuarios
SELECT nombre_usuario, edad FROM usuarios WHERE edad BETWEEN 20 AND 30; --Seleccionar usuarios con la edad del intervalo de 20 a 30 con BETWEEN

-- COUNT - Usuarios
SELECT COUNT(nombre_usuario) FROM usuarios WHERE edad BETWEEN 20 AND 30; --Contar los usuarios con el intervalo de edad de 20 a 30 años

-- Max - Usuarios
SELECT MAX(nombre_usuario) FROM usuarios WHERE edad BETWEEN 20 AND 30; --Ver el usuario con el valor más alto de la tabla (en este caso cual es el que tiene edad mas grande con intevralo de 20 a 30 años)

-- Min - Usuarios
SELECT MIN(nombre_usuario) FROM usuarios WHERE edad BETWEEN 20 AND 30; --Ver el usuario con el valor más alto de la tabla (en este caso cual es el que tiene edad mas grande con intevralo de 20 a 30 años)

-- AVG - Usuarios
SELECT AVG(edad) FROM usuarios WHERE edad BETWEEN 20 AND 30; --Ver el promedio de una tabla (de edad)

-- GROUP BY - Editorial
SELECT nombre_editorial FROM usuarios GROUP BY usuarios; --Agrupar dos atributos de una tabla (nombre_usuario y edad)

-- DISTINCT con COUNT - Editorial
SELECT COUNT(DISTINCT pais_editorial) FROM editorial; --Contar todos los paises distintos de pais_editorial

-- DISTINCT con COUNT
SELECT COUNT(DISTINCT pais_categoria) FROM categoria; --Contar todos los paises distintos de pais_categoria

-- LIKE - Usuario
SELECT * FROM usuarios WHERE nombre_usuario LIKE 'A%'; --Ver usuarios que empiecen con 'A'
SELECT * FROM usuarios WHERE nombre_usuario LIKE '%in'; -- Ver usuarios que terminen en 'in'


-- Delete - Categoria
DELETE FROM usuarios WHERE lugar_proveniencia = 'China'; --Borrar usuarios con lugar de proveniencia china
DELETE FROM categoria WHERE id_categoria >= 50; --Borrar categorias que su id sea mayor o igual a 50

-- IN - Editorial
SELECT * FROM editorial WHERE pais_editorial in ('Mexico', 'Indonesia'); --Mostrar datos de varios valores como Mexico e Indonesia
SELECT * FROM editorial WHERE pais_editorial = 'Mexico' OR pais_editorial = 'Indonesia'; --Mostrar datos de varios valores con WHERE y OR


--ALTER TABLE - Libros
ALTER TABLE libros ADD COLUMN precio INT; --Agregar una columna nueva (precio)

UPDATE libros
SET precio = 200; --Agregar el mismo valor a una tabla (Los precios son el mismo)


SELECT * FROM usuarios;
SELECT * FROM usuarios WHERE id_usuario = 1;
SELECT * FROM categoria;
SELECT * FROM copia_fisica;
SELECT * FROM editorial;
SELECT * FROM libros;
SELECT * FROM prestamo;
SELECT * FROM reserva;
SELECT * FROM version_digital;
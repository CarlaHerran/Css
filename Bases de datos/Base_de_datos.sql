sqlite> CREATE TABLE usuarios (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   nombre VARCHAR(64) NOT NULL,
   ...>   apellido  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   fecha_nacimiento DATETIME NOT NULL,
   ...>   genero VARCHAR(10) NOT NULL
   ...> );
-- Creación de la Tabla Usuarios. Con sus respectivas columnas.

sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
-- Inserta los valores a la tabla.

sqlite> ALTER TABLE usuarios add Apodo VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
sqlite> .schema
-- No se le puede agregar una columna para valores not null cuando no hay ningún valor en ella.

sqlite> ALTER TABLE usuarios add Apodo VARCHAR(64) NULL;
sqlite> .schema
--Se pudo agregar únicamente especificando que pudiera recibir un valor NULL. Revisamos con .schema

CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
, Apodo VARCHAR(64) NULL);
-- Aquí ya viene incluída nuestra nueva columna en la tabla.

sqlite> UPDATE usuarios SET Apodo="Charlie" WHERE id=1;
sqlite> .schema
-- Agregamos el apodo de Carlos por "Charlie". Revisamos con .chema

CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
, Apodo VARCHAR(64) NULL);
-- .schema nos muestra esto.

sqlite> SELECT * FROM usuarios
   ...> ;
id          nombre      apellido    email             fecha_nacimiento  genero      Apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   Charlie   
sqlite> UPDATE usuarios SET Apellido="Rivero", fecha_nacimiento="1980-11-03" WHERE id=1;
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      Apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Rivero      carlos@yahoo.com  1980-11-03        masculino   Charlie   
sqlite> 
-- Buscamos que nos muestr los valores de la tabla completa con la sentencia SELECT * FROM users (nombre de la tabla).
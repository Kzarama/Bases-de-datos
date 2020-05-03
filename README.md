# Bases de datos

![img/ico.ico](img/ico.ico)

Notas tomadas del curso de fundamentos de bases de datos .

## Entidades y atributos

- Entidad fuerte: (encerrado en rectángulo) objeto que representa algo en el mundo real, se representan en plural.
- Entidades débiles: (encerrada en doble rectángulo) no pueden existir sin una entidad fuerte, son débiles por entidad (solo se diferencian por la clave de la entidad fuerte) y débiles por existencia (se les asigna una clave propia).
- Atributo: (encerrado en ovalo) las cosas que componen a la entidad.
- Atributos multivaluados: (encerrado en doble ovalo) la entidad tiene mas de uno de estos atributos.
- Atributos compuestos: (encerrado en ovalo) están compuestos de otros atributos.
- Atributos especial: (encerrado en ovalo punteado) puede ser inferida a partir de otros atributos.
- Atributo llave: (encerrado en ovalo y subrayado) identificador, identifica a la entidad de manera única.

## Relaciones

Permiten ligar diferentes entidades, se definen a través de verbos y se representan con un rombo

Poseen una cardinalidad para determinar el numero de entidades o atributos, pueden ser:

- Cardinalidad 1 a 1 (linea recta a linea recta)
- Cardinalidad 0 a 1 (linea punteada a linea recta)
- Cardinalidad 1 a N (linea recta a linea separada en 3)
- Cardinalidad 0 a N (linea punteada a linea separada en 3)
- Cardinalidad N a N (linea separada en 3 a linea separada en 3)

## Tipos de datos

- **Texto:** CHAR(n), VARCHAR(n), TEXT
- **Números:** INTEGER, BIGINT, SMALLINT, DECIMAL(n,s), NUMERIC(n,s)
- **Fecha/hora:** DATE, TIME, DATETIME, TIMESTAMP
- **Lógicos:** BOOLEAN

## Constrains (Restricciones)

- **NOT NULL:** Se asegura que la columna no tenga valores nulos
- **UNIQUE:** Se asegura que cada valor en la columna no se repita
- **PRIMARY KEY:** Es una combinación de NOT NULL y UNIQUE
- **FOREIGN KEY:** Identifica de manera única una tupla en otra tabla
- **CHECK:** Se asegura que el valor en la columna cumpla una condición dada
- **DEFAULT:** Coloca un valor por defecto cuando no hay un valor especificado
- **INDEX:** Se crea por columna para permitir búsquedas más rápidas

## Normalizacion

Nos permite dejar todo en una forma normal, siguiendo las 12 reglas de Codd

- **Primera forma normal (1FN):** Atributos atómicos (Sin campos repetidos)
- **Segunda forma normal (2FN):** Cumple 1FN y cada campo de la tabla debe depender de una clave única.
- **Tercera forma normal (3FN):** Cumple 1FN y 2FN y los campos que NO son clave, NO deben tener dependencias.
- **Cuarta forma normal (4FN):** Cumple 1FN, 2FN, 3FN y los campos multivaluados se identifican por una clave única.

## RDBMS (Relational Database Management System)

## SQL

- Database = base de datos, repositorio de datos
- Table = entidades
- View = proyeccion de la db de forma entendible

### DDL (Data Definition Lenguage) para formar la estructura de la db

- CREATE = crear tabla
- ALTER = alterar tabla
- DROP = borrar tabla, columna, fila, ....

### DML (Data Manipulatioin Lenguage) modifica el contenido de los datos

- INSERT = inserta un nuevo registro a la db
- UPDATE = actualiza los datos de la db
- DELETE = borrar datos de la db
- SELECT = retorna datos

## Crear db

```sql
CREATE DATABASE nombre_db;
USE DATABASE nombe_db;
```

## Borrar db

```sql
DROP DATABASE nombre_db;
```

## Crear table

```sql
CREATE TABLE nombre_tabla ( 
	--atributos_entidad tipo_variable ,
	atributo1 int,
	atributo2 varchar(255)
);
```

## Borrar table

```sql
DROP TABLE nombre_tabla;
```

## Añadir columna

```sql
ALTER TABLE `nombre_db`.`nombre_tabla` 
ADD COLUMN `atributo3` DATETIME NULL AFTER `atributo2`;
```

## Eliminar columna

```sql
ALTER TABLE `nombre_db`.`nombre_tabla` 
DROP COLUMN `atributo3`;
```

## Crear view

```sql
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `view_atributos` AS
    SELECT 
        `nombre_tabla`.`atributo1` AS `atributo1`,
        `nombre_tabla`.`atributo2` AS `atributo2`,
    FROM
        `nombre_tabla`
```

## Insertar datos

```sql
INSERT INTO nombre_tabla (atributo1, atributo2)
VALUES (1, 'atributo2');
```

## Actualizar datos

```sql
UPDATE nombre_tabla
SET atributo2 = 'atributo'
WHERE atributo1 = 1;
```

## Borrar datos

```sql
DELETE FROM nombre_tabla
WHERE atributo1 = 1;
```

## Seleccionar datos

```sql
SELECT atributo1, atributo2
FROM nombre_tabla
```

## Pasos para realizar un proyecto:

1. Identificar las entidades
2. Pensar en los atributos

## Diagrama físico del proyecto

Relacion entre post y etiquetas

![img/1.png](img/1.png)
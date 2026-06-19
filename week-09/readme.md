# 🚕 Semana 09 - JOINs: INNER JOIN y LEFT JOIN en SQLite

Este proyecto corresponde a la Semana 09, donde se trabajó la combinación de datos entre múltiples tablas utilizando JOINs en SQLite para generar reportes relacionales dentro del dominio de una cooperativa de taxis.

---

## 📌 Descripción

En esta semana se aprendió a:

* 🔗 Combinar datos de dos tablas usando `INNER JOIN`
* 📋 Relacionar múltiples tablas mediante JOINs encadenados
* 🏷️ Utilizar aliases de tabla para mejorar la legibilidad de las consultas
* 📊 Generar reportes enriquecidos combinando información de diferentes tablas
* 👥 Mostrar todos los registros de una tabla utilizando `LEFT JOIN`
* 🔍 Detectar registros huérfanos mediante valores `NULL`
* 📈 Crear reportes agregados usando `COUNT()` junto con JOINs
* 🗂️ Aplicar relaciones entre conductores, vehículos y viajes

El objetivo es comprender cómo funcionan las relaciones entre tablas y cómo utilizarlas para obtener información más completa y útil a partir de los datos almacenados.

---

## 🛠️ Tecnologías Utilizadas

* SQLite3
* SQL (Structured Query Language)
* PowerShell / Terminal
* Visual Studio Code
* Windows

---

## 📂 Archivos del Proyecto

* `proyecto-09.sql` → Script SQL con ejercicios de JOINs
* `cooperativa_taxis.db` → Base de datos SQLite utilizada
* `README.md` → Documentación del proyecto

---

## ⚙️ Ejecución del Proyecto

Para ejecutar el archivo `.sql` y cargar las consultas en la base de datos:

```bash
Get-Content proyecto-09.sql | sqlite3 cooperativa_taxis.db
```

---

## 🔍 Verificación de la Base de Datos

### Abrir SQLite

```bash
sqlite3 cooperativa_taxis.db
```

---

### Ver tablas creadas

```sql
.tables
```

---

### Consultar datos principales

```sql
SELECT * FROM drivers;
SELECT * FROM vehicles;
SELECT * FROM trips;
SELECT * FROM earnings;
```

---

### Probar INNER JOIN entre viajes y vehículos

```sql
SELECT
    t.id_trip,
    t.origin_trip,
    t.destination_trip,
    v.plate_vehicle
FROM trips t
INNER JOIN vehicles v
    ON t.vehicle_id = v.id_vehicle;
```

---

### Probar JOIN entre viajes, vehículos y conductores

```sql
SELECT
    t.id_trip,
    d.name_driver,
    v.plate_vehicle
FROM trips t
INNER JOIN vehicles v
    ON t.vehicle_id = v.id_vehicle
INNER JOIN drivers d
    ON v.driver_id = d.id_driver;
```

---

### Probar LEFT JOIN

```sql
SELECT
    d.id_driver,
    d.name_driver,
    v.plate_vehicle
FROM drivers d
LEFT JOIN vehicles v
    ON d.id_driver = v.driver_id;
```

---

### Detectar conductores sin vehículo asignado

```sql
SELECT
    d.id_driver,
    d.name_driver
FROM drivers d
LEFT JOIN vehicles v
    ON d.id_driver = v.driver_id
WHERE v.id_vehicle IS NULL;
```

---

### Reporte agregado de viajes por conductor

```sql
SELECT
    d.name_driver,
    COUNT(t.id_trip) AS total_trips
FROM drivers d
LEFT JOIN vehicles v
    ON d.id_driver = v.driver_id
LEFT JOIN trips t
    ON v.id_vehicle = t.vehicle_id
GROUP BY d.name_driver;
```

---

## ❗ Problemas Comunes

* Errores al utilizar nombres de columnas incorrectos
* Relaciones inexistentes entre claves foráneas y claves primarias
* INNER JOIN sin resultados por falta de coincidencias
* Uso incorrecto de aliases de tabla
* LEFT JOIN mostrando valores NULL inesperados
* Errores al agrupar resultados sin utilizar GROUP BY correctamente

---

## 🧠 Buenas Prácticas Aplicadas

* Uso de aliases para mejorar la legibilidad
* Selección explícita de columnas evitando `SELECT *`
* Aplicación correcta de `INNER JOIN` y `LEFT JOIN`
* Identificación de registros huérfanos mediante `IS NULL`
* Uso de `COUNT()` para generar reportes agregados
* Organización y documentación adecuada de consultas SQL
* Respeto de las relaciones entre tablas mediante claves foráneas

---

## 📊 Resultado Esperado

* Base de datos `.db` correctamente utilizada
* Relaciones entre tablas funcionando adecuadamente
* Consultas JOIN ejecutadas sin errores
* Detección correcta de registros huérfanos
* Reportes agregados generados exitosamente
* Información enriquecida mediante la combinación de múltiples tablas

---

## 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA
3407182

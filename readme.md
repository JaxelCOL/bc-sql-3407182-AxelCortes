````markdown
# 🚕 Sistema de Gestión de una Cooperativa de Taxis

## 📌 Descripción

Este proyecto consiste en la creación y manipulación de una base de datos relacional utilizando SQLite para gestionar la información de una cooperativa de taxis.

La base de datos permite almacenar información relacionada con:

- Conductores
- Vehículos
- Viajes
- Ganancias

El objetivo principal es comprender el funcionamiento básico de las bases de datos relacionales mediante el uso de tablas, inserción de datos y consultas SQL básicas.

---

# 🛠️ Tecnologías Utilizadas

- SQLite3
- SQL (Structured Query Language)
- Visual Studio Code
- PowerShell / Terminal

---

# 📁 Estructura del Proyecto

```text
bc-sql
├── proyecto.sql
├── cooperativa_taxis.db
└── README.md
````

---

# 🧱 Estructura de la Base de Datos

## Tabla: drivers

Contiene la información de los conductores de la cooperativa.

| Campo          | Tipo    | Descripción          |
| -------------- | ------- | -------------------- |
| id_driver      | INTEGER | Identificador único  |
| name_driver    | TEXT    | Nombre del conductor |
| phone_driver   | TEXT    | Número telefónico    |
| license_driver | TEXT    | Número de licencia   |

---

## Tabla: vehicles

Contiene la información de los vehículos.

| Campo         | Tipo    | Descripción         |
| ------------- | ------- | ------------------- |
| id_vehicle    | INTEGER | Identificador único |
| plate_vehicle | TEXT    | Placa del vehículo  |
| model_vehicle | TEXT    | Modelo del vehículo |
| color_vehicle | TEXT    | Color del vehículo  |

---

## Tabla: trips

Contiene la información de los viajes realizados.

| Campo            | Tipo    | Descripción         |
| ---------------- | ------- | ------------------- |
| id_trip          | INTEGER | Identificador único |
| origin_trip      | TEXT    | Lugar de origen     |
| destination_trip | TEXT    | Destino del viaje   |
| price_trip       | REAL    | Precio del viaje    |
| date_trip        | DATE    | Fecha del viaje     |

---

## Tabla: earnings

Contiene el registro de ganancias.

| Campo         | Tipo    | Descripción          |
| ------------- | ------- | -------------------- |
| id_earning    | INTEGER | Identificador único  |
| total_earning | REAL    | Ganancia registrada  |
| date_earning  | DATE    | Fecha de la ganancia |

---

# 📥 Inserción de Datos

El archivo `proyecto.sql` incluye registros de ejemplo para todas las tablas mediante sentencias `INSERT INTO`.

---

# 🔍 Consultas Implementadas

## Mostrar todos los conductores

```sql
SELECT * FROM drivers;
```

---

## Mostrar todos los vehículos

```sql
SELECT * FROM vehicles;
```

---

## Mostrar todos los viajes

```sql
SELECT * FROM trips;
```

---

## Mostrar todas las ganancias

```sql
SELECT * FROM earnings;
```

---

## Ordenar conductores alfabéticamente

```sql
SELECT name_driver
FROM drivers
ORDER BY name_driver ASC;
```

---

## Contar cantidad total de conductores

```sql
SELECT COUNT(*) AS total_drivers
FROM drivers;
```

---

## Contar cantidad total de viajes

```sql
SELECT COUNT(*) AS total_trips
FROM trips;
```

---

# ▶️ Cómo Ejecutar el Proyecto

## 1. Abrir la terminal en Visual Studio Code

Abrir la carpeta del proyecto y luego abrir una terminal integrada.

---

## 2. Ejecutar el archivo SQL

En PowerShell ejecutar:

```powershell
Get-Content proyecto.sql | sqlite3 cooperativa_taxis.db
```

---

## 3. Abrir la base de datos

```powershell
sqlite3 cooperativa_taxis.db
```

---

## 4. Ver las tablas

```sql
.tables
```

---

## 5. Ejecutar consultas

Ejemplo:

```sql
SELECT * FROM drivers;
```

---

# 🎯 Objetivos Cumplidos

* Comprender qué es una base de datos relacional
* Crear tablas en SQLite
* Insertar datos mediante SQL
* Realizar consultas básicas con SELECT
* Contar registros utilizando COUNT
* Organizar información en entidades relacionadas

---

# 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA
3407182
bc-sql

```
```

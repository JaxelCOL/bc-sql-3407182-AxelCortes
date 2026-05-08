# 🚕 Sistema de Gestión - Cooperativa de Taxis

Este proyecto consiste en el diseño e implementación de una base de datos en SQLite para la gestión de una cooperativa de taxis.

## 📌 Descripción

El sistema permite administrar información clave sobre:

- 🚖 Conductores
- 🚗 Vehículos
- 🛣️ Viajes
- 💰 Ganancias

El objetivo es centralizar y organizar la información de la cooperativa para facilitar el control de conductores, viajes realizados y registro de ganancias.

---

## 🛠️ Tecnologías Utilizadas

- SQLite3
- SQL (Structured Query Language)
- Terminal / Bash
- Visual Studio Code

---

## 🗂️ Estructura de la Base de Datos

### 🚖 Tabla: drivers

Almacena la información de los conductores.

```sql
CREATE TABLE IF NOT EXISTS drivers (
    id_driver      INTEGER PRIMARY KEY,
    name_driver    TEXT    NOT NULL,
    phone_number   TEXT    NOT NULL UNIQUE,
    license_driver TEXT    NOT NULL UNIQUE,
    email_driver   TEXT,
    is_active      INTEGER NOT NULL DEFAULT 1
);
```

---

### 🚗 Tabla: vehicles

Información de los vehículos registrados en la cooperativa.

```sql
CREATE TABLE IF NOT EXISTS vehicles (
    id_vehicle      INTEGER PRIMARY KEY,
    plate_vehicle   TEXT    NOT NULL UNIQUE,
    model_vehicle   TEXT    NOT NULL,
    color_vehicle   TEXT    NOT NULL,
    driver_id       INTEGER,

    FOREIGN KEY (driver_id)
    REFERENCES drivers(id_driver)
);
```

---

### 🛣️ Tabla: trips

Registro de los viajes realizados.

```sql
CREATE TABLE IF NOT EXISTS trips (
    id_trip           INTEGER PRIMARY KEY,
    origin_trip       TEXT    NOT NULL,
    destination_trip  TEXT    NOT NULL,
    price_trip        REAL    NOT NULL,
    status_trip       TEXT    NOT NULL,
    vehicle_id        INTEGER,

    FOREIGN KEY (vehicle_id)
    REFERENCES vehicles(id_vehicle)
);
```

---

### 💰 Tabla: earnings

Registro de las ganancias de los conductores.

```sql
CREATE TABLE IF NOT EXISTS earnings (
    id_earning      INTEGER PRIMARY KEY,
    total_earning   REAL    NOT NULL,
    earning_date    DATE    NOT NULL,
    driver_id       INTEGER,

    FOREIGN KEY (driver_id)
    REFERENCES drivers(id_driver)
);
```

---

## 📥 Inserción de Datos

El archivo `proyecto-03.sql` incluye múltiples registros mediante sentencias `INSERT INTO`.

### INSERT tabla drivers

```sql
INSERT INTO drivers (
    id_driver,
    name_driver,
    phone_number,
    license_driver,
    email_driver
)
VALUES
(1, 'Carlos Gomez', '3001111111', 'LIC1001', 'carlos@gmail.com'),
(2, 'Andres Ruiz', '3002222222', 'LIC1002', 'andres@gmail.com'),
(3, 'Luis Martinez', '3003333333', 'LIC1003', 'luis@gmail.com');
```

---

### INSERT tabla vehicles

```sql
INSERT INTO vehicles (
    id_vehicle,
    plate_vehicle,
    model_vehicle,
    color_vehicle,
    driver_id
)
VALUES
(1, 'ABC123', 'Kia Picanto', 'Blanco', 1),
(2, 'DEF456', 'Chevrolet Spark', 'Rojo', 2),
(3, 'GHI789', 'Hyundai i10', 'Negro', 3);
```

---

## 🔄 Actualización de Datos

### UPDATE seguro por clave primaria

```sql
UPDATE drivers
SET email_driver = 'nuevo_correo@gmail.com'
WHERE id_driver = 1;
```

### UPDATE condicional

```sql
UPDATE drivers
SET is_active = 0
WHERE id_driver >= 13;
```

---

## ❌ Eliminación Segura de Datos

### Verificación previa con SELECT

```sql
SELECT
    id_trip,
    origin_trip,
    destination_trip,
    status_trip
FROM trips
WHERE id_trip = 5;
```

### DELETE seguro

```sql
DELETE FROM trips
WHERE id_trip = 5;
```

---

## 🔍 Consultas Implementadas

### Mostrar conductores activos

```sql
SELECT
    id_driver,
    name_driver,
    phone_number,
    email_driver
FROM drivers
WHERE is_active = 1;
```

### Mostrar vehículos rojos

```sql
SELECT
    id_vehicle,
    plate_vehicle,
    model_vehicle
FROM vehicles
WHERE color_vehicle = 'Rojo';
```

### Mostrar viajes completados

```sql
SELECT
    id_trip,
    origin_trip,
    destination_trip,
    status_trip
FROM trips
WHERE status_trip = 'completed';
```

### Mostrar ganancias mayores a 100000

```sql
SELECT
    id_earning,
    total_earning,
    earning_date
FROM earnings
WHERE total_earning > 100000;
```

---

## ⚙️ Cómo ejecutar el proyecto

Verificar instalación de SQLite:

```bash
sqlite3 --version
```

Ejecutar el archivo SQL:

```bash
sqlite3 cooperativa_taxis.db < proyecto-03.sql
```

Abrir la base de datos:

```bash
sqlite3 cooperativa_taxis.db
```

Ver tablas:

```sql
.tables
```

Ver estructura de una tabla:

```sql
PRAGMA table_info(drivers);
```

---

## 🧠 Buenas prácticas aplicadas

- Uso de PRIMARY KEY para identificación única
- Uso de FOREIGN KEY para relaciones entre tablas
- Restricciones UNIQUE para evitar duplicados
- Uso de WHERE en UPDATE y DELETE
- Inserción masiva de datos con INSERT INTO
- Consultas sin uso de SELECT *
- Organización del código SQL mediante comentarios

---

## 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA  
3407182
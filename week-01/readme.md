# 🚕 Sistema de Gestión de una Cooperativa de Taxis

Este proyecto consiste en la creación y manipulación de una base de datos relacional utilizando SQLite para gestionar información de conductores, vehículos, viajes y ganancias dentro de una cooperativa de taxis.

---

## 🛠️ Tecnologías Utilizadas

- SQLite3
- SQL (Structured Query Language)
- Terminal / Bash
- Visual Studio Code

---

## 🧱 Estructura de la Base de Datos

### Tabla: drivers

Contiene la información de los conductores.

| Campo | Tipo | Descripción |
|---|---|---|
| id_driver | INTEGER | Identificador único |
| name_driver | TEXT | Nombre del conductor |
| phone_driver | TEXT | Número telefónico |
| license_driver | TEXT | Número de licencia |

---

### Tabla: vehicles

Contiene la información de los vehículos.

| Campo | Tipo | Descripción |
|---|---|---|
| id_vehicle | INTEGER | Identificador único |
| plate_vehicle | TEXT | Placa del vehículo |
| model_vehicle | TEXT | Modelo del vehículo |
| color_vehicle | TEXT | Color del vehículo |

---

### Tabla: trips

Contiene la información de los viajes realizados.

| Campo | Tipo | Descripción |
|---|---|---|
| id_trip | INTEGER | Identificador único |
| origin_trip | TEXT | Lugar de origen |
| destination_trip | TEXT | Lugar de destino |
| price_trip | REAL | Precio del viaje |
| date_trip | DATE | Fecha del viaje |

---

### Tabla: earnings

Contiene la información de las ganancias.

| Campo | Tipo | Descripción |
|---|---|---|
| id_earning | INTEGER | Identificador único |
| total_earning | REAL | Ganancia total |
| date_earning | DATE | Fecha del registro |

---

## 📥 Inserción de Datos

El archivo `proyecto.sql` incluye datos de ejemplo para todas las tablas mediante sentencias `INSERT`.

### INSERT tabla drivers

```sql
INSERT INTO drivers (name_driver, phone_driver, license_driver) VALUES
('Carlos Gomez', '3001234567', 'LIC12345'),
('Andres Ruiz', '3019876543', 'LIC54321'),
('Luis Martinez', '3024567890', 'LIC67890');
```

### INSERT tabla vehicles

```sql
INSERT INTO vehicles (plate_vehicle, model_vehicle, color_vehicle) VALUES
('ABC123', 'Kia Picanto', 'Blanco'),
('DEF456', 'Chevrolet Spark', 'Rojo'),
('GHI789', 'Hyundai i10', 'Negro');
```

### INSERT tabla trips

```sql
INSERT INTO trips (origin_trip, destination_trip, price_trip, date_trip) VALUES
('Centro', 'Aeropuerto', 35000, '2026-05-01'),
('Suba', 'Chapinero', 18000, '2026-05-02'),
('Soacha', 'Centro', 25000, '2026-05-03');
```

### INSERT tabla earnings

```sql
INSERT INTO earnings (total_earning, date_earning) VALUES
(120000, '2026-05-01'),
(98000, '2026-05-02'),
(150000, '2026-05-03');
```

---

## 🔍 Consultas Implementadas

### Mostrar todos los conductores

```sql
SELECT * FROM drivers;
```

### Mostrar conductores ordenados alfabéticamente

```sql
SELECT name_driver, phone_driver
FROM drivers
ORDER BY name_driver ASC;
```

### Contar cuántos conductores hay en total

```sql
SELECT COUNT(*) AS total_drivers
FROM drivers;
```
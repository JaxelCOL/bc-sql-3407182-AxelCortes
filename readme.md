````markdown id="2v1pwx"
🚕 Sistema de Gestión de una Cooperativa de Taxis

Este proyecto consiste en la creación y manipulación de una base de datos relacional utilizando SQLite para gestionar información de conductores, vehículos, viajes y ganancias dentro de una cooperativa de taxis.

🛠️ Tecnologías Utilizadas

SQLite3  
SQL (Structured Query Language)  
Terminal / Bash  
Visual Studio Code  

🧱 Estructura de la Base de Datos

Tabla: drivers

Contiene la información de los conductores.

| Campo | Tipo | Descripción |
|---|---|---|
| id_driver | INTEGER | Identificador único |
| name_driver | TEXT | Nombre del conductor |
| phone_driver | TEXT | Número telefónico |
| license_driver | TEXT | Número de licencia |

Tabla: vehicles

Contiene la información de los vehículos.

| Campo | Tipo | Descripción |
|---|---|---|
| id_vehicle | INTEGER | Identificador único |
| plate_vehicle | TEXT | Placa del vehículo |
| model_vehicle | TEXT | Modelo del vehículo |
| color_vehicle | TEXT | Color del vehículo |

Tabla: trips

Contiene la información de los viajes realizados.

| Campo | Tipo | Descripción |
|---|---|---|
| id_trip | INTEGER | Identificador único |
| origin_trip | TEXT | Lugar de origen |
| destination_trip | TEXT | Lugar de destino |
| price_trip | REAL | Precio del viaje |
| date_trip | DATE | Fecha del viaje |

Tabla: earnings

Contiene la información de las ganancias.

| Campo | Tipo | Descripción |
|---|---|---|
| id_earning | INTEGER | Identificador único |
| total_earning | REAL | Ganancia total |
| date_earning | DATE | Fecha del registro |

📥 Inserción de Datos

El archivo proyecto.sql incluye datos de ejemplo para todas las tablas mediante sentencias INSERT.

1. INSERT tabla drivers

```sql id="7wbqj4"
INSERT INTO drivers (name_driver, phone_driver, license_driver) VALUES
('Carlos Gomez', '3001234567', 'LIC12345'),
('Andres Ruiz', '3019876543', 'LIC54321'),
('Luis Martinez', '3024567890', 'LIC67890'),
('Jorge Torres', '3036549871', 'LIC11223'),
('Miguel Castro', '3043217896', 'LIC44556');
````

2. INSERT tabla vehicles

```sql id="wh59yx"
INSERT INTO vehicles (plate_vehicle, model_vehicle, color_vehicle) VALUES
('ABC123', 'Kia Picanto', 'Blanco'),
('DEF456', 'Chevrolet Spark', 'Rojo'),
('GHI789', 'Hyundai i10', 'Negro'),
('JKL321', 'Renault Logan', 'Gris'),
('MNO654', 'Mazda 2', 'Azul');
```

3. INSERT tabla trips

```sql id="h0lszt"
INSERT INTO trips (origin_trip, destination_trip, price_trip, date_trip) VALUES
('Centro', 'Aeropuerto', 35000, '2026-05-01'),
('Suba', 'Chapinero', 18000, '2026-05-02'),
('Soacha', 'Centro', 25000, '2026-05-03'),
('Usme', 'Terminal', 30000, '2026-05-04'),
('Engativa', 'Zona Rosa', 22000, '2026-05-05');
```

4. INSERT tabla earnings

```sql id="ux07wb"
INSERT INTO earnings (total_earning, date_earning) VALUES
(120000, '2026-05-01'),
(98000, '2026-05-02'),
(150000, '2026-05-03'),
(110000, '2026-05-04'),
(135000, '2026-05-05');
```

🔍 Consultas Implementadas

1. Mostrar todos los conductores

```sql id="jlwm8v"
SELECT * FROM drivers;
```

2. Mostrar solo el nombre de los conductores ordenados alfabéticamente

```sql id="bgxjbf"
SELECT name_driver, phone_driver
FROM drivers
ORDER BY name_driver ASC;
```

3. Contar cuántos conductores hay en total

```sql id="pup93j"
SELECT COUNT(*) AS total_drivers
FROM drivers;
```

```
```


-- PROYECTO SEMANAS 01 - 05
-- COOPERATIVA DE TAXIS - SQLITE
-- AXEL JULIAN CORTES ZAMORA

PRAGMA foreign_keys = ON;

-- ELIMINAR TABLAS SI EXISTEN

DROP TABLE IF EXISTS earnings;
DROP TABLE IF EXISTS trips;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS drivers;

-- CREACIÓN DE TABLAS

-- TABLA DRIVERS
CREATE TABLE drivers (
    id_driver      INTEGER PRIMARY KEY,
    name_driver    TEXT NOT NULL,
    phone_number   TEXT NOT NULL UNIQUE,
    license_driver TEXT NOT NULL UNIQUE,
    email_driver   TEXT,
    is_active      INTEGER NOT NULL DEFAULT 1
);

-- TABLA VEHICLES
CREATE TABLE vehicles (
    id_vehicle      INTEGER PRIMARY KEY,
    plate_vehicle   TEXT NOT NULL UNIQUE,
    model_vehicle   TEXT NOT NULL,
    color_vehicle   TEXT NOT NULL,
    driver_id       INTEGER,
    FOREIGN KEY (driver_id) REFERENCES drivers(id_driver)
);

-- TABLA TRIPS
CREATE TABLE trips (
    id_trip           INTEGER PRIMARY KEY,
    origin_trip       TEXT NOT NULL,
    destination_trip  TEXT NOT NULL,
    price_trip        REAL NOT NULL,
    status_trip       TEXT NOT NULL,
    vehicle_id        INTEGER,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id_vehicle)
);

-- TABLA EARNINGS
CREATE TABLE earnings (
    id_earning      INTEGER PRIMARY KEY,
    total_earning   REAL NOT NULL,
    earning_date    DATE NOT NULL,
    driver_id       INTEGER,
    FOREIGN KEY (driver_id) REFERENCES drivers(id_driver)
);

-- INSERTS DRIVERS (15)

INSERT INTO drivers (id_driver, name_driver, phone_number, license_driver, email_driver, is_active) VALUES
(1, 'Carlos Gomez', '3001111111', 'LIC1001', 'carlos@gmail.com', 1),
(2, 'Andres Ruiz', '3002222222', 'LIC1002', 'andres@gmail.com', 1),
(3, 'Luis Martinez', '3003333333', 'LIC1003', 'luis@gmail.com', 1),
(4, 'Jorge Torres', '3004444444', 'LIC1004', 'jorge@gmail.com', 1),
(5, 'Miguel Castro', '3005555555', 'LIC1005', 'miguel@gmail.com', 1),
(6, 'Daniel Rojas', '3006666666', 'LIC1006', 'daniel@gmail.com', 1),
(7, 'Sebastian Diaz', '3007777777', 'LIC1007', 'sebastian@gmail.com', 1),
(8, 'Felipe Herrera', '3008888888', 'LIC1008', 'felipe@gmail.com', 1),
(9, 'Oscar Vargas', '3009999999', 'LIC1009', 'oscar@gmail.com', 1),
(10, 'Ivan Morales', '3010000000', 'LIC1010', 'ivan@gmail.com', 1),
(11, 'Camilo Suarez', '3011111111', 'LIC1011', 'camilo@gmail.com', 1),
(12, 'David Lopez', '3012222222', 'LIC1012', 'david@gmail.com', 1),
(13, 'Mateo Silva', '3013333333', 'LIC1013', 'mateo@gmail.com', 1),
(14, 'Cristian Vega', '3014444444', 'LIC1014', 'cristian@gmail.com', 1),
(15, 'Santiago Perez', '3015555555', 'LIC1015', 'santiago@gmail.com', 1);

-- INSERTS VEHICLES (10)

INSERT INTO vehicles (id_vehicle, plate_vehicle, model_vehicle, color_vehicle, driver_id) VALUES
(1, 'ABC123', 'Kia Picanto', 'Blanco', 1),
(2, 'DEF456', 'Chevrolet Spark', 'Rojo', 2),
(3, 'GHI789', 'Hyundai i10', 'Negro', 3),
(4, 'JKL321', 'Mazda 2', 'Azul', 4),
(5, 'MNO654', 'Renault Logan', 'Gris', 5),
(6, 'PQR987', 'Toyota Yaris', 'Blanco', 6),
(7, 'STU111', 'Nissan March', 'Rojo', 7),
(8, 'VWX222', 'Chevrolet Sail', 'Negro', 8),
(9, 'YZA333', 'Ford Fiesta', 'Azul', 9),
(10, 'BCD444', 'Suzuki Swift', 'Gris', 10);

-- INSERTS TRIPS (30)

INSERT INTO trips (id_trip, origin_trip, destination_trip, price_trip, status_trip, vehicle_id) VALUES
(1,'Centro','Aeropuerto',35000,'completed',1),
(2,'Suba','Chapinero',18000,'completed',2),
(3,'Soacha','Centro',25000,'pending',3),
(4,'Usme','Terminal',30000,'completed',4),
(5,'Engativa','Zona Rosa',22000,'cancelled',5),
(6,'Kennedy','Usaquén',28000,'completed',6),
(7,'Bosa','Centro',26000,'completed',7),
(8,'Chapinero','Suba',19000,'completed',8),
(9,'Fontibon','Aeropuerto',32000,'completed',9),
(10,'Teusaquillo','Centro',15000,'completed',10),
(11,'Centro','Bosa',24000,'completed',1),
(12,'Suba','Engativa',20000,'completed',2),
(13,'Soacha','Chapinero',27000,'completed',3),
(14,'Usme','Suba',31000,'completed',4),
(15,'Kennedy','Centro',23000,'completed',5),
(16,'Bosa','Aeropuerto',36000,'completed',6),
(17,'Chapinero','Usaquén',21000,'completed',7),
(18,'Fontibon','Centro',25000,'completed',8),
(19,'Teusaquillo','Suba',18000,'completed',9),
(20,'Centro','Soacha',29000,'completed',10),
(21,'Suba','Kennedy',22000,'completed',1),
(22,'Engativa','Centro',20000,'completed',2),
(23,'Bosa','Usme',33000,'completed',3),
(24,'Chapinero','Fontibon',26000,'completed',4),
(25,'Centro','Teusaquillo',17000,'completed',5),
(26,'Suba','Aeropuerto',34000,'completed',6),
(27,'Kennedy','Bosa',24000,'completed',7),
(28,'Usme','Centro',30000,'completed',8),
(29,'Fontibon','Suba',21000,'completed',9),
(30,'Chapinero','Soacha',28000,'completed',10);

-- INSERTS EARNINGS (10)

INSERT INTO earnings (id_earning, total_earning, earning_date, driver_id) VALUES
(1,120000,'2026-05-01',1),
(2,98000,'2026-05-02',2),
(3,150000,'2026-05-03',3),
(4,110000,'2026-05-04',4),
(5,135000,'2026-05-05',5),
(6,140000,'2026-05-06',6),
(7,125000,'2026-05-07',7),
(8,160000,'2026-05-08',8),
(9,100000,'2026-05-09',9),
(10,145000,'2026-05-10',10);

-- SEMANA 03 - UPDATE

-- Actualizar email de un conductor
UPDATE drivers
SET email_driver = 'carlosgomez@gmail.com'
WHERE id_driver = 1;

-- Actualizar color de vehículo
UPDATE vehicles
SET color_vehicle = 'Plateado'
WHERE id_vehicle = 5;

-- UPDATE CONDICIONAL
UPDATE trips
SET status_trip = 'completed'
WHERE status_trip = 'pending';

-- SEMANA 03 - DELETE

-- Verificar antes de eliminar
SELECT *
FROM trips
WHERE status_trip = 'cancelled';

-- Eliminar viaje cancelado
DELETE FROM trips
WHERE id_trip = 5;

-- SEMANA 04 - CONSULTAS SELECT

-- SELECT EXPLÍCITO
SELECT name_driver, email_driver
FROM drivers;

-- ALIAS
SELECT name_driver AS nombre_conductor,
       license_driver AS licencia
FROM drivers;

-- OPERACIÓN MATEMÁTICA
SELECT origin_trip AS origen,
       destination_trip AS destino,
       price_trip * 2 AS precio_doble
FROM trips;

-- WHERE
SELECT id_trip, origin_trip, price_trip
FROM trips
WHERE price_trip > 25000;

SELECT id_trip, status_trip
FROM trips
WHERE status_trip = 'completed';

-- ORDER BY
SELECT id_trip, price_trip
FROM trips
ORDER BY price_trip DESC;

SELECT name_driver
FROM drivers
ORDER BY name_driver ASC;

-- LIMIT
SELECT id_trip, origin_trip, destination_trip
FROM trips
ORDER BY price_trip DESC
LIMIT 3;

-- LIMIT Y OFFSET
SELECT name_driver
FROM drivers
ORDER BY name_driver ASC
LIMIT 5 OFFSET 0;

SELECT name_driver
FROM drivers
ORDER BY name_driver ASC
LIMIT 5 OFFSET 5;

-- SEMANA 05 - BETWEEN

SELECT id_trip,
       origin_trip,
       destination_trip,
       price_trip
FROM trips
WHERE price_trip BETWEEN 20000 AND 30000;

-- NOT BETWEEN
SELECT id_earning,
       total_earning
FROM earnings
WHERE total_earning NOT BETWEEN 100000 AND 140000;

-- SEMANA 05 - IN

SELECT id_vehicle,
       model_vehicle,
       color_vehicle
FROM vehicles
WHERE color_vehicle IN ('Blanco', 'Negro');

-- NOT IN
SELECT id_trip,
       status_trip
FROM trips
WHERE status_trip NOT IN ('cancelled');

-- SEMANA 05 - LIKE

-- Empieza por C
SELECT name_driver
FROM drivers
WHERE name_driver LIKE 'C%';

-- Contiene o
SELECT name_driver
FROM drivers
WHERE name_driver LIKE '%o%';

-- Segunda letra a
SELECT name_driver
FROM drivers
WHERE name_driver LIKE '_a%';

-- FILTROS COMBINADOS

SELECT id_trip,
       origin_trip,
       destination_trip,
       price_trip,
       status_trip
FROM trips
WHERE status_trip IN ('completed')
  AND price_trip BETWEEN 20000 AND 35000
  AND origin_trip LIKE '%o%';

SELECT id_vehicle,
       model_vehicle,
       color_vehicle
FROM vehicles
WHERE color_vehicle IN ('Blanco', 'Rojo')
  AND model_vehicle LIKE '%Chevrolet%';

SELECT id_driver,
       name_driver
FROM drivers
WHERE is_active = 1
  AND name_driver LIKE 'D%'
  AND id_driver BETWEEN 1 AND 15;

-- VERIFICACIÓN FINAL

SELECT COUNT(*) AS total_drivers
FROM drivers;

SELECT COUNT(*) AS total_vehicles
FROM vehicles;

SELECT COUNT(*) AS total_trips
FROM trips;

SELECT COUNT(*) AS total_earnings
FROM earnings;


-- SEMANA 06 - FUNCIONES DE AGREGACIÓN


PRAGMA foreign_keys = ON;

-- 1. COUNT - Total de registros

SELECT COUNT(*) AS total_drivers
FROM drivers;

SELECT COUNT(*) AS total_vehicles
FROM vehicles;

SELECT COUNT(*) AS total_trips
FROM trips;

SELECT COUNT(*) AS total_earnings
FROM earnings;

-- 2. SUM + AVG (ingresos de conductores)

SELECT 
    SUM(total_earning) AS ingresos_totales,
    AVG(total_earning) AS promedio_ingresos
FROM earnings;

-- 3. SUM + AVG (precio de viajes)

SELECT 
    SUM(price_trip) AS ingresos_viajes,
    AVG(price_trip) AS promedio_viaje
FROM trips;

-- 4. GROUP BY - viajes por estado

SELECT 
    status_trip,
    COUNT(*) AS cantidad_viajes,
    AVG(price_trip) AS promedio_precio
FROM trips
GROUP BY status_trip;

-- 5. GROUP BY - ganancias por conductor

SELECT 
    driver_id,
    SUM(total_earning) AS total_ganado,
    AVG(total_earning) AS promedio_ganado
FROM earnings
GROUP BY driver_id;

-- 6. GROUP BY + HAVING (conductores con buen rendimiento)

SELECT 
    driver_id,
    SUM(total_earning) AS total_ganado
FROM earnings
GROUP BY driver_id
HAVING SUM(total_earning) > 120000;

-- 7. GROUP BY + HAVING (vehículos con más viajes)

SELECT 
    vehicle_id,
    COUNT(*) AS total_viajes
FROM trips
GROUP BY vehicle_id
HAVING COUNT(*) >= 3;

-- 8. REPORT FINAL (resumen general)

SELECT 
    COUNT(*) AS total_viajes,
    SUM(price_trip) AS ingresos_totales_viajes,
    AVG(price_trip) AS promedio_viaje,
    MAX(price_trip) AS viaje_mas_costoso,
    MIN(price_trip) AS viaje_mas_barato
FROM trips;
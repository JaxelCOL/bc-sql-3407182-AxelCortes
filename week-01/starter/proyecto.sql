
-- CREAR TABLA DRIVERS

CREATE TABLE drivers (
    id_driver INTEGER PRIMARY KEY,
    name_driver TEXT,
    phone_driver TEXT,
    license_driver TEXT
);

-- CREAR TABLA VEHICLES

CREATE TABLE vehicles (
    id_vehicle INTEGER PRIMARY KEY,
    plate_vehicle TEXT,
    model_vehicle TEXT,
    color_vehicle TEXT
);

-- CREAR TABLA TRIPS

CREATE TABLE trips (
    id_trip INTEGER PRIMARY KEY,
    origin_trip TEXT,
    destination_trip TEXT,
    price_trip REAL,
    date_trip DATE
);

-- CREAR TABLA EARNINGS

CREATE TABLE earnings (
    id_earning INTEGER PRIMARY KEY,
    total_earning REAL,
    date_earning DATE
);

-- INSERTAR DATOS EN DRIVERS

INSERT INTO drivers (name_driver, phone_driver, license_driver) VALUES
('Carlos Gomez', '3001234567', 'LIC12345'),
('Andres Ruiz', '3019876543', 'LIC54321'),
('Luis Martinez', '3024567890', 'LIC67890'),
('Jorge Torres', '3036549871', 'LIC11223'),
('Miguel Castro', '3043217896', 'LIC44556');

-- INSERTAR DATOS EN VEHICLES

INSERT INTO vehicles (plate_vehicle, model_vehicle, color_vehicle) VALUES
('ABC123', 'Kia Picanto', 'Blanco'),
('DEF456', 'Chevrolet Spark', 'Rojo'),
('GHI789', 'Hyundai i10', 'Negro'),
('JKL321', 'Renault Logan', 'Gris'),
('MNO654', 'Mazda 2', 'Azul');

-- INSERTAR DATOS EN TRIPS

INSERT INTO trips (origin_trip, destination_trip, price_trip, date_trip) VALUES
('Centro', 'Aeropuerto', 35000, '2026-05-01'),
('Suba', 'Chapinero', 18000, '2026-05-02'),
('Soacha', 'Centro', 25000, '2026-05-03'),
('Usme', 'Terminal', 30000, '2026-05-04'),
('Engativa', 'Zona Rosa', 22000, '2026-05-05');

ALTER TABLE trips ADD COLUMN status_trip TEXT;
ALTER TABLE trips ADD COLUMN vehicle_id INTEGER;
-- INSERTAR DATOS EN EARNINGS

INSERT INTO earnings (total_earning, date_earning) VALUES
(120000, '2026-05-01'),
(98000, '2026-05-02'),
(150000, '2026-05-03'),
(110000, '2026-05-04'),
(135000, '2026-05-05');

-- CONSULTAS SELECT --

-- Mostrar todos los conductores
SELECT * FROM drivers;

-- Mostrar todos los vehiculos
SELECT * FROM vehicles;

-- Mostrar todos los viajes
SELECT * FROM trips;

-- Mostrar todas las ganancias
SELECT * FROM earnings;

-- Mostrar nombres de conductores ordenados alfabeticamente
SELECT name_driver
FROM drivers
ORDER BY name_driver ASC;

-- Contar cantidad total de conductores
SELECT COUNT(*) AS total_drivers
FROM drivers;

-- Contar cantidad total de viajes
SELECT COUNT(*) AS total_trips
FROM trips;

-- Contar cantidad total de vehiculos
SELECT COUNT(*) AS total_vehicles
FROM vehicles;

-- Contar cantidad total de ganancias registradas
SELECT COUNT(*) AS total_earnings
FROM earnings;
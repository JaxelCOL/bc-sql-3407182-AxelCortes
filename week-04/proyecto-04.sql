
-- SEMANA 04
-- CONSULTAS BÁSICAS CON SELECT
-- Cooperativa de Taxis

-- TABLA DRIVERS

CREATE TABLE IF NOT EXISTS drivers (
    id_driver      INTEGER PRIMARY KEY,
    name_driver    TEXT    NOT NULL,
    phone_number   TEXT    NOT NULL UNIQUE,
    license_driver TEXT    NOT NULL UNIQUE,
    email_driver   TEXT,
    is_active      INTEGER NOT NULL DEFAULT 1
);

-- TABLA VEHICLES

CREATE TABLE IF NOT EXISTS vehicles (
    id_vehicle      INTEGER PRIMARY KEY,
    plate_vehicle   TEXT    NOT NULL UNIQUE,
    model_vehicle   TEXT    NOT NULL,
    color_vehicle   TEXT    NOT NULL,
    driver_id       INTEGER,

    FOREIGN KEY (driver_id)
    REFERENCES drivers(id_driver)
);

-- TABLA TRIPS

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

-- INSERTS DRIVERS

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
(3, 'Luis Martinez', '3003333333', 'LIC1003', 'luis@gmail.com'),
(4, 'Jorge Torres', '3004444444', 'LIC1004', 'jorge@gmail.com'),
(5, 'Miguel Castro', '3005555555', 'LIC1005', 'miguel@gmail.com');

-- INSERTS VEHICLES

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
(3, 'GHI789', 'Hyundai i10', 'Negro', 3),
(4, 'JKL321', 'Mazda 2', 'Azul', 4),
(5, 'MNO654', 'Renault Logan', 'Gris', 5);

-- INSERTS TRIPS

INSERT INTO trips (
    id_trip,
    origin_trip,
    destination_trip,
    price_trip,
    status_trip,
    vehicle_id
)
VALUES
(1, 'Centro', 'Aeropuerto', 35000, 'completed', 1),
(2, 'Suba', 'Chapinero', 18000, 'completed', 2),
(3, 'Soacha', 'Centro', 25000, 'pending', 3),
(4, 'Usme', 'Terminal', 30000, 'completed', 4),
(5, 'Engativa', 'Zona Rosa', 22000, 'cancelled', 5);

-- SELECT BÁSICO

SELECT
    name_driver,
    email_driver
FROM drivers;

-- ALIAS CON AS

SELECT
    name_driver                  AS nombre_conductor,
    license_driver               AS licencia,
    is_active                    AS conductor_activo
FROM drivers;

-- COLUMNAS CALCULADAS

SELECT
    origin_trip                  AS origen,
    destination_trip             AS destino,
    price_trip * 2               AS precio_doble
FROM trips;

-- WHERE

SELECT
    name_driver,
    phone_number
FROM drivers
WHERE id_driver = 1;

-- WHERE CON DIFERENTE OPERADOR

SELECT
    origin_trip,
    destination_trip,
    price_trip
FROM trips
WHERE price_trip > 20000;

-- ORDER BY DESC

SELECT
    origin_trip,
    destination_trip,
    price_trip
FROM trips
ORDER BY price_trip DESC;

-- ORDER BY ASC

SELECT
    name_driver,
    email_driver
FROM drivers
ORDER BY name_driver ASC;

-- TOP 3 VIAJES MÁS COSTOSOS

SELECT
    origin_trip,
    destination_trip,
    price_trip
FROM trips
ORDER BY price_trip DESC
LIMIT 3;

-- PAGINACIÓN

-- Página 1

SELECT
    name_driver,
    email_driver
FROM drivers
ORDER BY name_driver ASC
LIMIT 2 OFFSET 0;

-- Página 2

SELECT
    name_driver,
    email_driver
FROM drivers
ORDER BY name_driver ASC
LIMIT 2 OFFSET 2;
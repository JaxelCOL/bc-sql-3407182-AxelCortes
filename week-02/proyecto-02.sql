-- =====================================================
-- SEMANA 02
-- Cooperativa de Taxis
-- =====================================================

-- TABLA DRIVERS

CREATE TABLE IF NOT EXISTS drivers (
    id_driver      INTEGER PRIMARY KEY,
    name_driver    TEXT    NOT NULL,
    phone_driver   TEXT    NOT NULL UNIQUE,
    license_driver TEXT    NOT NULL UNIQUE
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
    price_trip        REAL    NOT NULL
                               CHECK(price_trip >= 0),
    status_trip       TEXT    NOT NULL DEFAULT 'completed'
                               CHECK(status_trip IN ('completed', 'pending', 'cancelled')),
    vehicle_id        INTEGER,

    FOREIGN KEY (vehicle_id)
    REFERENCES vehicles(id_vehicle)
);

-- TABLA EARNINGS

CREATE TABLE IF NOT EXISTS earnings (
    id_earning      INTEGER PRIMARY KEY,
    total_earning   REAL    NOT NULL DEFAULT 0
                              CHECK(total_earning >= 0),
    earning_date    DATE    NOT NULL,
    driver_id       INTEGER,

    FOREIGN KEY (driver_id)
    REFERENCES drivers(id_driver)
);

-- INSERTS DRIVERS

INSERT INTO drivers (
    name_driver,
    phone_driver,
    license_driver
)
VALUES
('Carlos Gomez', '3001234567', 'LIC12345'),
('Andres Ruiz', '3019876543', 'LIC54321'),
('Luis Martinez', '3024567890', 'LIC67890');

-- INSERTS VEHICLES

INSERT INTO vehicles (
    plate_vehicle,
    model_vehicle,
    color_vehicle,
    driver_id
)
VALUES
('ABC123', 'Kia Picanto', 'Blanco', 1),
('DEF456', 'Chevrolet Spark', 'Rojo', 2),
('GHI789', 'Hyundai i10', 'Negro', 3);

-- INSERTS TRIPS

INSERT INTO trips (
    origin_trip,
    destination_trip,
    price_trip,
    status_trip,
    vehicle_id
)
VALUES
('Centro', 'Aeropuerto', 35000, 'completed', 1),
('Suba', 'Chapinero', 18000, 'pending', 2),
('Soacha', 'Centro', 25000, 'cancelled', 3);

-- INSERTS EARNINGS

INSERT INTO earnings (
    total_earning,
    earning_date,
    driver_id
)
VALUES
(120000, '2026-05-01', 1),
(98000, '2026-05-02', 2),
(150000, '2026-05-03', 3);

-- ALTER TABLE

ALTER TABLE drivers
ADD COLUMN email_driver TEXT;

ALTER TABLE drivers
ADD COLUMN is_active INTEGER NOT NULL DEFAULT 1;

ALTER TABLE drivers
RENAME COLUMN phone_driver TO phone_number;

-- CONSULTAS

SELECT
    id_driver,
    name_driver,
    phone_number,
    license_driver,
    email_driver,
    is_active
FROM drivers;

SELECT
    id_vehicle,
    plate_vehicle,
    model_vehicle,
    color_vehicle,
    driver_id
FROM vehicles;

SELECT
    id_trip,
    origin_trip,
    destination_trip,
    price_trip,
    status_trip
FROM trips;

SELECT
    id_earning,
    total_earning,
    earning_date
FROM earnings;

-- PRAGMA

PRAGMA table_info(drivers);
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

-- TABLA EARNINGS

CREATE TABLE IF NOT EXISTS earnings (
    id_earning      INTEGER PRIMARY KEY,
    total_earning   REAL    NOT NULL,
    earning_date    DATE    NOT NULL,
    driver_id       INTEGER,

    FOREIGN KEY (driver_id)
    REFERENCES drivers(id_driver)
);

-- INSERT DRIVERS (15 FILAS)

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
(5, 'Miguel Castro', '3005555555', 'LIC1005', 'miguel@gmail.com'),
(6, 'Daniel Rojas', '3006666666', 'LIC1006', 'daniel@gmail.com'),
(7, 'Felipe Mora', '3007777777', 'LIC1007', 'felipe@gmail.com'),
(8, 'Juan Perez', '3008888888', 'LIC1008', 'juan@gmail.com'),
(9, 'Santiago Diaz', '3009999999', 'LIC1009', 'santiago@gmail.com'),
(10, 'Kevin Ramirez', '3011111111', 'LIC1010', 'kevin@gmail.com'),
(11, 'Camilo Suarez', '3012222222', 'LIC1011', 'camilo@gmail.com'),
(12, 'David Lopez', '3013333333', 'LIC1012', 'david@gmail.com'),
(13, 'Oscar Medina', '3014444444', 'LIC1013', 'oscar@gmail.com'),
(14, 'Mateo Silva', '3015555555', 'LIC1014', 'mateo@gmail.com'),
(15, 'Cristian Vega', '3016666666', 'LIC1015', 'cristian@gmail.com');

-- INSERT VEHICLES

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

-- INSERT TRIPS

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


INSERT INTO trips (id_trip, origin_trip, destination_trip, price_trip, status_trip, vehicle_id) VALUES
(6, 'Kennedy', 'Usaquén', 28000, 'completed', 1),
(7, 'Bosa', 'Centro', 26000, 'completed', 2),
(8, 'Chapinero', 'Suba', 19000, 'completed', 3),
(9, 'Fontibon', 'Aeropuerto', 32000, 'completed', 4),
(10, 'Teusaquillo', 'Centro', 15000, 'completed', 5),
(11, 'Centro', 'Bosa', 24000, 'completed', 1),
(12, 'Suba', 'Engativa', 20000, 'completed', 2),
(13, 'Soacha', 'Chapinero', 27000, 'completed', 3),
(14, 'Usme', 'Suba', 31000, 'completed', 4),
(15, 'Kennedy', 'Centro', 23000, 'completed', 5);

-- INSERT EARNINGS

INSERT INTO earnings (
    id_earning,
    total_earning,
    earning_date,
    driver_id
)
VALUES
(1, 120000, '2026-05-01', 1),
(2, 98000, '2026-05-02', 2),
(3, 150000, '2026-05-03', 3),
(4, 110000, '2026-05-04', 4),
(5, 135000, '2026-05-05', 5);

-- UPDATE SEGURO

UPDATE drivers
SET email_driver = 'nuevo_correo@gmail.com'
WHERE id_driver = 1;

UPDATE trips
SET status_trip = 'completed'
WHERE id_trip = 3;

-- UPDATE CONDICIONAL

UPDATE drivers
SET is_active = 0
WHERE id_driver >= 13;

-- DELETE SEGURO

SELECT
    id_trip,
    origin_trip,
    destination_trip,
    status_trip
FROM trips
WHERE id_trip = 5;

DELETE FROM trips
WHERE id_trip = 5;

-- CONSULTAS

SELECT
    id_driver,
    name_driver,
    phone_number,
    email_driver
FROM drivers
WHERE is_active = 1;

SELECT
    id_vehicle,
    plate_vehicle,
    model_vehicle
FROM vehicles
WHERE color_vehicle = 'Rojo';

SELECT
    id_trip,
    origin_trip,
    destination_trip,
    status_trip
FROM trips
WHERE status_trip = 'completed';

SELECT
    id_earning,
    total_earning,
    earning_date
FROM earnings
WHERE total_earning > 100000;

-- CONSULTA 1 - INNER JOIN PRINCIPAL
-- Viajes con información del vehículo

SELECT
    t.id_trip,
    t.origin_trip,
    t.destination_trip,
    t.date_trip,
    t.price_trip,
    v.id_vehicle,
    v.plate_vehicle,
    v.model_vehicle
FROM trips t
INNER JOIN vehicles v
    ON t.vehicle_id = v.id_vehicle;


-- CONSULTA 2 - JOIN CON TRES TABLAS
-- Viaje, vehículo y conductor

SELECT
    t.id_trip,
    t.origin_trip,
    t.destination_trip,
    t.date_trip,
    t.price_trip,
    v.id_vehicle,
    v.plate_vehicle,
    v.model_vehicle,
    d.id_driver,
    d.name_driver,
    d.phone_driver
FROM trips t
INNER JOIN vehicles v
    ON t.vehicle_id = v.id_vehicle
INNER JOIN drivers d
    ON v.driver_id = d.id_driver;


-- CONSULTA 3 - LEFT JOIN
-- Todos los conductores y sus vehículos

SELECT
    d.id_driver,
    d.name_driver,
    d.phone_driver,
    d.license_driver,
    v.id_vehicle,
    v.plate_vehicle,
    v.model_vehicle
FROM drivers d
LEFT JOIN vehicles v
    ON d.id_driver = v.driver_id;


-- CONSULTA 4 - DETECTAR HUÉRFANOS
-- Conductores sin vehículo asignado

SELECT
    d.id_driver,
    d.name_driver,
    d.phone_number,
    d.license_driver
FROM drivers d
LEFT JOIN vehicles v
    ON d.id_driver = v.driver_id
WHERE v.id_vehicle IS NULL;


-- Para hacerla se crea un conductor sin vehiculo
INSERT INTO drivers (
    name_driver,
    phone_number,
    license_driver,
    email_driver
)
VALUES (
    'Axel Cortes',
    '3001234567',
    'LIC999',
    'axel@email.com'
);

-- CONSULTA 5 - REPORTE AGREGADO
-- Cantidad de viajes por conductor

SELECT
    d.id_driver,
    d.name_driver,
    COUNT(t.id_trip) AS total_trips
FROM drivers d
LEFT JOIN vehicles v
    ON d.id_driver = v.driver_id
LEFT JOIN trips t
    ON v.id_vehicle = t.vehicle_id
GROUP BY
    d.id_driver,
    d.name_driver
ORDER BY total_trips DESC;
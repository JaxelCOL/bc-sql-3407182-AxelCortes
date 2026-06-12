-- ==================================================
-- SEMANA 07 - MANEJO DE NULL Y CONSTRAINTS
-- ==================================================

PRAGMA foreign_keys = ON;

-- PASO 1 - IS NULL
-- Conductores sin correo electrónico

UPDATE drivers
SET email_driver = NULL
WHERE id_driver IN (11,12);

SELECT
    id_driver,
    name_driver,
    email_driver
FROM drivers
WHERE email_driver IS NULL;


-- PASO 2 - IS NOT NULL
-- Conductores que sí tienen correo

SELECT
    id_driver,
    name_driver,
    email_driver
FROM drivers
WHERE email_driver IS NOT NULL;


-- PASO 3 - COALESCE
-- Reemplazar correos NULL

SELECT
    name_driver,
    email_driver,
    COALESCE(email_driver, 'Sin correo registrado') AS correo_mostrado
FROM drivers;


-- PASO 4 - COUNT(*) VS COUNT(COLUMNA)

SELECT
    COUNT(*) AS total_conductores,
    COUNT(email_driver) AS conductores_con_email,
    COUNT(phone_number) AS conductores_con_telefono
FROM drivers;


-- ==================================================
-- EJERCICIO 02 - CONSTRAINTS Y PRAGMA
-- ==================================================

-- PASO 1 - VERIFICAR ESTRUCTURA

PRAGMA table_info(drivers);


-- PASO 2 - INSERTAR DATOS VÁLIDOS

INSERT INTO drivers
(
    id_driver,
    name_driver,
    phone_number,
    license_driver,
    email_driver,
    is_active
)
VALUES
(
    16,
    'Hugo Reyes',
    '3026666666',
    'LIC1016',
    'hugo@gmail.com',
    1
);


-- PASO 3 - NULLIF
-- Evitar divisiones por cero

SELECT
    id_earning,
    total_earning,
    total_earning / NULLIF(driver_id,0) AS promedio_seguro
FROM earnings;


-- PASO 4 - VERIFICAR INTEGRIDAD REFERENCIAL

SELECT DISTINCT driver_id
FROM vehicles
WHERE driver_id NOT IN
(
    SELECT id_driver
    FROM drivers
);

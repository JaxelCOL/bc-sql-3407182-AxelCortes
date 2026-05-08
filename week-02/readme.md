# 🚕 Sistema de Gestión - Cooperativa de Taxis

Este proyecto consiste en el diseño e implementación de una base de datos en SQLite para la gestión de una cooperativa de taxis.

## 📌 Descripción

El sistema permite administrar información clave sobre:

- 🚖 Conductores
- 🚗 Vehículos
- 🛣️ Viajes
- 💰 Ganancias

El objetivo es centralizar y organizar la información de la cooperativa para facilitar el control de viajes, la asignación de vehículos y el registro de ganancias.

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
    phone_driver   TEXT    NOT NULL UNIQUE,
    license_driver TEXT    NOT NULL UNIQUE
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
    price_trip        REAL    NOT NULL
                               CHECK(price_trip >= 0),
    status_trip       TEXT    NOT NULL DEFAULT 'completed'
                               CHECK(status_trip IN ('completed', 'pending', 'cancelled')),
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
    total_earning   REAL    NOT NULL DEFAULT 0
                              CHECK(total_earning >= 0),
    earning_date    DATE    NOT NULL,
    driver_id       INTEGER,

    FOREIGN KEY (driver_id)
    REFERENCES drivers(id_driver)
);
```

---

## ⚙️ Cómo ejecutar el proyecto

Asegúrate de tener instalado SQLite:

```bash
sqlite3 --version
```

Ejecuta el script SQL:

```bash
Get-Content proyecto-02.sql | sqlite3 cooperativa_taxis.db
```

Abrir la base de datos:

```bash
sqlite3 cooperativa_taxis.db
```

Ver tablas:

```sql
.tables
```

Mostrar estructura de tablas:

```sql
PRAGMA table_info(drivers);
```

---

## 🧠 Buenas prácticas aplicadas

- Uso de PRIMARY KEY para identificación única
- Restricciones UNIQUE para evitar duplicados
- Validaciones con CHECK
- Valores por defecto con DEFAULT
- Uso de FOREIGN KEY para relaciones entre tablas
- Uso de NOT NULL para campos obligatorios

---

## 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA  
3407182

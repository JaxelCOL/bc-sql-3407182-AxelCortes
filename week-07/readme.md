# 🚕 Semana 07 - Manejo de NULL y Constraints en SQLite

Este proyecto corresponde a la Semana 07, donde se trabajó el manejo de valores NULL, restricciones (Constraints) y herramientas de validación de estructura en SQLite.

---

## 📌 Descripción

En esta semana se aprendió a:

* ❓ Identificar valores nulos usando `IS NULL`
* ✅ Filtrar registros con datos usando `IS NOT NULL`
* 🔄 Reemplazar valores nulos mediante `COALESCE`
* 🔢 Comparar `COUNT(*)` y `COUNT(columna)`
* 🛡️ Comprender y aplicar restricciones (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `FOREIGN KEY`)
* 🔍 Inspeccionar tablas utilizando `PRAGMA table_info()`
* ⚠️ Evitar divisiones por cero mediante `NULLIF()`
* 🔗 Verificar la integridad referencial de la base de datos

El objetivo es mejorar la calidad de los datos y comprender cómo SQLite maneja la ausencia de información y las restricciones de integridad.

---

## 🛠️ Tecnologías Utilizadas

* SQLite3
* SQL (Structured Query Language)
* PowerShell / Terminal
* Visual Studio Code
* Windows

---

## 📂 Archivos del Proyecto

* `proyecto-07.sql` → Script SQL con ejercicios de NULL y Constraints
* `cooperativa_taxis.db` → Base de datos SQLite utilizada
* `README.md` → Documentación del proyecto

---

## ⚙️ Ejecución del Proyecto

Para ejecutar el archivo `.sql` y cargar la base de datos, se utilizó el siguiente comando:

```bash
Get-Content proyecto-07.sql | sqlite3 cooperativa_taxis.db
```

---

## 🔍 Verificación de la Base de Datos

### Abrir SQLite

```bash
sqlite3 cooperativa_taxis.db
```

---

### Ver tablas creadas

```sql
.tables
```

---

### Consultar datos principales

```sql
SELECT * FROM drivers;
SELECT * FROM vehicles;
SELECT * FROM trips;
SELECT * FROM earnings;
```

---

### Verificar valores NULL

```sql
SELECT *
FROM drivers
WHERE email_driver IS NULL;
```

---

### Verificar valores NO NULL

```sql
SELECT *
FROM drivers
WHERE email_driver IS NOT NULL;
```

---

### Probar COALESCE

```sql
SELECT
    name_driver,
    COALESCE(email_driver, 'Sin correo registrado')
FROM drivers;
```

---

### Comparar COUNT(*) y COUNT(columna)

```sql
SELECT
    COUNT(*) AS total_conductores,
    COUNT(email_driver) AS conductores_con_email
FROM drivers;
```

---

### Verificar estructura de la tabla

```sql
PRAGMA table_info(drivers);
```

---

### Verificar integridad referencial

```sql
SELECT DISTINCT driver_id
FROM vehicles
WHERE driver_id NOT IN (
    SELECT id_driver
    FROM drivers
);
```

---

## ❗ Problemas Comunes

* Valores NULL no detectados por usar `= NULL` en lugar de `IS NULL`
* Errores al insertar datos que incumplen restricciones
* Duplicados en columnas con `UNIQUE`
* Fallos por claves foráneas inexistentes
* Divisiones por cero al realizar cálculos sin `NULLIF()`
* Restricciones no aplicadas si `PRAGMA foreign_keys = ON` no está habilitado

---

## 🧠 Buenas Prácticas Aplicadas

* Uso correcto de `IS NULL` e `IS NOT NULL`
* Aplicación de `COALESCE` para mostrar información más clara
* Comparación entre `COUNT(*)` y `COUNT(columna)`
* Uso de `NULLIF()` para operaciones seguras
* Validación de la estructura mediante `PRAGMA table_info()`
* Respeto de restricciones de integridad y unicidad
* Organización y documentación adecuada de consultas SQL

---

## 📊 Resultado Esperado

* Base de datos `.db` correctamente utilizada
* Valores NULL identificados y gestionados correctamente
* Restricciones funcionando sin errores
* Integridad referencial garantizada
* Consultas ejecutadas correctamente utilizando `COALESCE`, `COUNT`, `PRAGMA` y `NULLIF`

---

## 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA
3407182

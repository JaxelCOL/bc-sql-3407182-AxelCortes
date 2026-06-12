# 🚕 Semana 06 - Funciones de Agregación en SQLite

Este proyecto corresponde a la Semana 06, donde se trabajaron funciones de agregación en SQL para generar reportes de resumen sobre los datos de una base de datos en SQLite.

---

## 📌 Descripción

En esta semana se aprendió a:

* 📊 Usar `COUNT` para contar registros
* ➕ Aplicar `SUM` para obtener totales
* 📈 Usar `AVG` para calcular promedios
* 🔽 Obtener valores mínimos con `MIN`
* 🔼 Obtener valores máximos con `MAX`
* 🧩 Agrupar datos usando `GROUP BY`
* 🚦 Filtrar grupos con `HAVING`

El objetivo es analizar datos reales mediante consultas de agregación para generar reportes útiles en bases de datos.

---

## 🛠️ Tecnologías Utilizadas

* SQLite3
* SQL (Structured Query Language)
* PowerShell / Terminal
* Visual Studio Code
* Windows

---

## 📂 Archivos del Proyecto

* `proyecto-06.sql` → Script SQL con consultas de agregación
* `cooperativa_taxis.db` → Base de datos SQLite utilizada
* `README.md` → Documentación del proyecto

---

## ⚙️ Ejecución del Proyecto

Para ejecutar el archivo `.sql` y cargar la base de datos, se utilizó el siguiente comando:

```bash
Get-Content proyecto-06.sql | sqlite3 cooperativa_taxis.db
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

### Verificación de agregaciones

```sql
SELECT COUNT(*) FROM trips;
SELECT SUM(price_trip) FROM trips;
SELECT AVG(price_trip) FROM trips;
SELECT MIN(price_trip) FROM trips;
SELECT MAX(price_trip) FROM trips;
```

---

## ❗ Problemas Comunes

* El archivo `.sql` no se encuentra en la ruta correcta
* Error al ejecutar comandos en PowerShell
* Base de datos no se genera por errores en el script SQL
* Datos insuficientes para que `GROUP BY` funcione correctamente
* `HAVING` no filtra resultados si los grupos no están bien distribuidos

---

## 🧠 Buenas Prácticas Aplicadas

* Uso correcto de funciones de agregación (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
* Aplicación de `GROUP BY` para agrupar datos lógicos
* Uso de `HAVING` para filtrar resultados de agregados
* Verificación de datos antes de ejecutar reportes
* Consultas organizadas y legibles

---

## 📊 Resultado Esperado

* Base de datos `.db` correctamente utilizada
* Consultas de agregación ejecutadas sin errores
* Reportes claros basados en datos reales
* Uso correcto de `GROUP BY` y `HAVING`

---

## 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA
3407182

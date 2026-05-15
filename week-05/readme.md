# 🚕 Semana 05 - Operadores y Filtros en SQLite

Este proyecto corresponde a la Semana 05, donde se trabajaron operadores de filtrado avanzados en SQL como BETWEEN, IN, NOT IN y LIKE, aplicados a una base de datos en SQLite.

---

## 📌 Descripción

En esta semana se aprendió a:

- 🔍 Filtrar datos usando `BETWEEN` para rangos numéricos
- 📋 Usar `IN` y `NOT IN` para listas de valores
- 🔎 Realizar búsquedas de texto con `LIKE`, `%` y `_`
- 🧠 Combinar múltiples operadores en consultas complejas
- ⚙️ Construir filtros más eficientes y legibles

El objetivo es mejorar la capacidad de consulta en bases de datos reales utilizando condiciones avanzadas de filtrado.

---

## 🛠️ Tecnologías Utilizadas

- SQLite3  
- SQL (Structured Query Language)  
- PowerShell / Terminal  
- Visual Studio Code  
- Windows  

---

## 📂 Archivos del Proyecto

- `proyecto-05.sql` → Script SQL con la estructura, datos y consultas filtradas  
- `cooperativa_taxis.db` → Base de datos generada en SQLite  
- `README.md` → Documentación del proyecto  

---

## ⚙️ Ejecución del Proyecto

Para ejecutar el archivo `.sql` y cargar la base de datos, se utilizó el siguiente comando:

Get-Content proyecto-05.sql | sqlite3 cooperativa_taxis.db

---

## 🔍 Verificación de la Base de Datos

### Abrir SQLite

sqlite3 cooperativa_taxis.db

---

### Ver tablas creadas

.tables

---

### Consultar datos

SELECT * FROM drivers;
SELECT * FROM vehicles;
SELECT * FROM trips;
SELECT * FROM earnings;

---

### Verificar cantidad de registros

SELECT COUNT(*) FROM drivers;
SELECT COUNT(*) FROM vehicles;
SELECT COUNT(*) FROM trips;
SELECT COUNT(*) FROM earnings;

---

## ❗ Problemas Comunes

- El archivo `.sql` no se encuentra en la ruta correcta  
- Error al ejecutar comandos en PowerShell (usar `Get-Content` correctamente)  
- Base de datos no se genera por errores en el script SQL  
- Datos incompletos por ejecución parcial del archivo  
- Consultas con filtros que no retornan resultados esperados  

---

## 🧠 Buenas Prácticas Aplicadas

- Uso correcto de `BETWEEN`, `IN`, `NOT IN` y `LIKE`  
- Aplicación de filtros combinados con múltiples condiciones  
- Verificación de datos antes de consultar  
- Escritura de consultas claras y legibles  
- Organización del archivo SQL por secciones  

---

## ✅ Resultado Esperado

- Base de datos `.db` creada correctamente  
- Consultas de filtrado ejecutadas sin errores  
- Resultados correctos con operadores avanzados  
- Manejo funcional de filtros en SQL  

---

## 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA  
3407182
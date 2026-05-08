# 🚕 Semana 04 - Importación y Gestión de Base de Datos SQLite

Este proyecto corresponde a la Semana 04, donde se trabajó la importación de un archivo SQL y la verificación de una base de datos en SQLite.

---

## 📌 Descripción

En esta semana se aprendió a:

- 📥 Importar archivos `.sql` en SQLite
- 🗄️ Crear y generar bases de datos `.db`
- 🔍 Verificar tablas y datos cargados
- ⚙️ Ejecutar comandos en terminal para administración de bases de datos

El objetivo es asegurar que un script SQL pueda ejecutarse correctamente y que la base de datos funcione sin errores.

---

## 🛠️ Tecnologías Utilizadas

- SQLite3  
- SQL (Structured Query Language)  
- PowerShell / Terminal  
- Visual Studio Code  
- Windows  

---

## 📂 Archivos del Proyecto

- `proyecto-04.sql` → Script SQL con la estructura de la base de datos  
- `cooperativa_taxis.db` → Base de datos generada en SQLite  
- `README.md` → Documentación del proyecto  

---

## ⚙️ Importación de la Base de Datos

Para importar el archivo `.sql` y crear la base de datos `.db`, se utilizó el siguiente comando:

Get-Content proyecto-04.sql | sqlite3 cooperativa_taxis.db

---

## 🔍 Verificación de la Base de Datos

### Abrir SQLite

sqlite3 cooperativa_taxis.db

---

### Ver tablas creadas

.tables

---

### Ver estructura de una tabla

PRAGMA table_info(drivers);

---

### Consultar datos de una tabla

SELECT * FROM drivers;

---

## ❗ Problemas Comunes

- El archivo `.sql` no se encuentra en la ruta correcta  
- SQLite no está instalado o no está en el PATH  
- Errores de sintaxis dentro del archivo SQL  
- La base de datos no se genera correctamente  

---

## 🧠 Buenas Prácticas Aplicadas

- Uso correcto de comandos de importación  
- Verificación de tablas con `.tables`  
- Revisión de estructura con `PRAGMA table_info`  
- Uso de consultas SQL para validar datos  
- Organización del proyecto en archivos separados  

---

## ✅ Resultado Esperado

- Base de datos `.db` creada correctamente  
- Tablas importadas sin errores  
- Datos visibles mediante consultas SQL  
- Estructura funcional y validada  

---

## 👨‍💻 Autor

AXEL JULIAN CORTES ZAMORA  
3407182
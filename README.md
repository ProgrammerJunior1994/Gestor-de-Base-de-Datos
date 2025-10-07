# 📚 Sistema de Gestión de Biblioteca

Este proyecto representa la base de datos de un **Sistema de Gestión de Biblioteca** que administra libros, usuarios, préstamos, reservas y versiones digitales o físicas de los materiales.  
El diseño fue realizado en **PostgreSQL** y estructurado siguiendo buenas prácticas de normalización y relaciones entre entidades.

---

## 🗂️ Estructura general

La base de datos está compuesta por las siguientes tablas principales:

1. **libros**
2. **categoria**
3. **editorial**
4. **usuarios**
5. **prestamo**
6. **reserva**
7. **copia_fisica**
8. **version_digital**

Cada tabla cumple una función específica dentro del sistema, y están relacionadas mediante claves foráneas para mantener la integridad referencial.

---

## 📋 Descripción de tablas

### 🧾 Tabla: `libros`
Contiene la información principal de cada libro registrado.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_libro | integer | Identificador único del libro |
| titulo_libro | varchar(100) | Título del libro |
| autor_libro | varchar(100) | Autor o autores del libro |
| anio_publicacion_libro | integer | Año de publicación |
| isbn_libro | varchar(25) | Código ISBN del libro |
| id_editorial | bigint (FK) | Relación con la tabla `editorial` |
| id_categoria | bigint (FK) | Relación con la tabla `categoria` |
| precio | integer | Precio de venta o referencia |

---

### 🏷️ Tabla: `categoria`
Define las categorías o géneros a los que pertenecen los libros.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_categoria | serial | Identificador único de categoría |
| nombre_categoria | varchar(50) | Nombre de la categoría |
| pais_categoria | varchar(50) | País o región relacionada (opcional) |

---

### 🏢 Tabla: `editorial`
Almacena la información de las editoriales que publican los libros.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_editorial | serial | Identificador único de editorial |
| nombre_editorial | varchar(50) | Nombre de la editorial |
| pais_editorial | varchar(50) | País de origen de la editorial |

---

### 👤 Tabla: `usuarios`
Contiene los datos de los usuarios del sistema (lectores, administradores, etc.).

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_usuario | integer | Identificador único del usuario |
| nombre_usuario | varchar(50) | Nombre del usuario |
| tipo_usuario | tipo_usuario | Tipo o rol del usuario (por ejemplo: lector, admin) |
| correo_usuario | varchar(50) | Correo electrónico |
| lugar_proveniencia | varchar(50) | Lugar o ciudad de origen |
| edad | integer | Edad del usuario |

---

### 📦 Tabla: `copia_fisica`
Representa las copias físicas disponibles de un libro.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_copia_fisica | serial | Identificador único de la copia |
| estado_copia_fisica | varchar(55) | Estado actual (disponible, prestado, dañado, etc.) |
| ubicacion_copia_fisica | varchar(70) | Ubicación física dentro de la biblioteca |
| id_libro | bigint (FK) | Relación con el libro correspondiente |

---

### 💾 Tabla: `version_digital`
Contiene los datos de las versiones digitales de los libros.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_digital | serial | Identificador único de la versión digital |
| url_digital | varchar(150) | Enlace de descarga o visualización |
| formato_digital | varchar(10) | Formato del archivo (PDF, EPUB, MOBI, etc.) |
| tamaño_digital_bytes | bigint | Tamaño del archivo en bytes |
| id_libro | bigint (FK) | Relación con la tabla `libros` |

---

### 📅 Tabla: `prestamo`
Registra los préstamos de libros físicos a los usuarios.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_prestamo | serial | Identificador del préstamo |
| fecha_inicio_prestamo | date | Fecha en que inicia el préstamo |
| fecha_devolucion_prestamo | date | Fecha programada de devolución |
| estado_prestamo | varchar(20) | Estado actual del préstamo (activo, devuelto, retrasado, etc.) |
| id_usuario | bigint (FK) | Usuario que realiza el préstamo |
| id_libro | bigint (FK) | Libro asociado |
| id_copia_fisica | bigint (FK) | Copia física prestada |

---

### 📖 Tabla: `reserva`
Registra las reservas de libros (digitales o físicos) realizadas por los usuarios.

| Campo | Tipo | Descripción |
|--------|------|-------------|
| id_reserva | serial | Identificador único de la reserva |
| fecha_reserva | date | Fecha en que se realizó la reserva |
| estado_reserva | varchar(60) | Estado actual de la reserva (pendiente, confirmada, cancelada, etc.) |
| id_usuario | bigint (FK) | Usuario que reserva |
| id_libro | bigint (FK) | Libro reservado |

---

## 🔗 Relaciones entre tablas

- Un **libro** pertenece a una **categoría** y una **editorial**.  
- Un **libro** puede tener **una o varias copias físicas** y **una versión digital**.  
- Un **usuario** puede realizar múltiples **préstamos** y **reservas**.  
- Una **copia física** puede estar asociada a **un solo préstamo activo** a la vez.  

---

## 🧱 Diagrama ER

El siguiente diagrama muestra las relaciones entre las tablas de la base de datos:

📷 *(Ver imagen del archivo adjunto con el modelo entidad-relación.)*

---

## 🧩 Tecnologías utilizadas

- **PostgreSQL** – Sistema de gestión de base de datos.  
- **pgAdmin 4** – Herramienta para la creación del modelo ER.  
- **Modelo relacional normalizado** (3FN).  

---

## 🧠 Autor

**Desarrollado por:**  
Brandon & Jaime  
*5to semestre – Ingeniería en Sistemas Computacionales*  
*Taller de Base de Datos, 2025*

---

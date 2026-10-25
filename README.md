# Práctica de bases de datos Big Data: NoSQL y NewSQL

## 1. Descripción del proyecto

Este repositorio contiene los archivos, scripts y evidencias correspondientes a una práctica académica sobre el manejo de bases de datos NoSQL y NewSQL en entornos Big Data. El trabajo incluye la recolección de datos abiertos de contratación pública de Colombia, su importación a MongoDB y la ejecución de operaciones de consulta y manipulación de documentos.

## 2. Objetivos

- Comprender las características de las bases de datos NoSQL y relacionales.
- Obtener datos mediante una API pública.
- Crear una base de datos y una colección en MongoDB.
- Ejecutar consultas, proyecciones, inserciones, actualizaciones y eliminaciones.
- Documentar los procedimientos mediante scripts y capturas de pantalla.

## 3. Fuente de datos

Se utilizó el conjunto de datos de contratación pública de Colombia disponible mediante la API de datos abiertos, identificado como `jbjy-vk9h`.

API: https://www.datos.gov.co/resource/jbjy-vk9h.json

Para la práctica se consultó una muestra de 100 registros con 91 columnas, almacenada en formatos CSV y JSON.

## 4. Herramientas utilizadas

- Python y Jupyter Notebook.
- Pandas y Requests.
- MongoDB Compass.
- MongoDB Shell.
- GitHub.

## 5. Desarrollo de la práctica NoSQL

Se creó la base de datos `Practica_BigData` y la colección `Contratos_SECOP`. Se importaron los 100 documentos obtenidos de la API y se realizaron los siguientes ejercicios:

1. Consulta de contratos por departamento.
2. Consulta de contratos según su estado.
3. Proyección de campos seleccionados.
4. Actualización de un documento mediante `updateOne()`.
5. Inserción y eliminación de un documento ficticio para practicar operaciones CRUD.

## 6. Estructura del repositorio

- `Datos/`: archivos CSV y JSON obtenidos de la API.
- `Scripts/`: consultas y operaciones realizadas en MongoDB.
- `Evidencias/`: capturas de pantalla de la práctica.
- `Informe/`: informe técnico final, pendiente de elaboración.

## 7. Resultados

Se verificó la importación de los 100 documentos y se ejecutaron consultas que permitieron filtrar contratos por departamento y estado. También se practicaron la proyección de campos y las operaciones de actualización, inserción y eliminación sobre documentos de la colección.

## 8. Referencias

Agencia Nacional de Contratación Pública – Colombia Compra Eficiente. (s. f.). *Datos abiertos de contratación pública*. Datos.gov.co. https://www.datos.gov.co/resource/jbjy-vk9h.json

MongoDB. (s. f.). *MongoDB Manual*. https://www.mongodb.com/docs/manual/

GitHub. (s. f.). *GitHub Docs*. https://docs.github.com/

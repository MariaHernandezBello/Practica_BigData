
-- =========================================================
-- PRACTICA BIG DATA: CONSULTAS SQL EN ORACLE FREESQL
-- Fuente: muestra de contratos SECOP
-- Total de registros originales: 19
-- =========================================================

-- 1. Crear tabla para la muestra SECOP
-- Nota: la tabla CONTRATOS_SECOP ya existia en el esquema.
-- Por eso se utiliza CONTRATOS_SECOP_MUESTRA.

CREATE TABLE CONTRATOS_SECOP_MUESTRA (
    NOMBRE_ENTIDAD VARCHAR2(200),
    DEPARTAMENTO VARCHAR2(100),
    ID_CONTRATO VARCHAR2(50),
    ESTADO_CONTRATO VARCHAR2(100)
);

-- 2. nombre_entidad	departamento	id_contrato	estado_contrato
ICBF REGIONAL META	Meta	CO1.PCCNTR.10000999	En ejecución
SENA REGIONAL SANTANDER Grupo Administrativo CA	Santander	CO1.PCCNTR.10002215	En ejecución
ALCALDIA DE EL PEÑOL	Antioquia	CO1.PCCNTR.10002246	En ejecución
CAMARA DE REPRESENTANTES	Distrito Capital de Bogotá	CO1.PCCNTR.10002258	En ejecución
DAPRE	Distrito Capital de Bogotá	CO1.PCCNTR.10002268	En ejecución
CONCEJO MUNICIPAL DE BUCARAMANGA	Santander	CO1.PCCNTR.10002626	En ejecución
MUNICIPIO DE DAGUA	Valle del Cauca	CO1.PCCNTR.10003138	En ejecución
INSTITUTO DE DEPORTES Y RECREACION DE MEDELLIN	Antioquia	CO1.PCCNTR.10003141	En ejecución
INSTITUTO DE DEPORTES Y RECREACION DE MEDELLIN	Antioquia	CO1.PCCNTR.10003142	En ejecución
INSTITUTO DE DEPORTES Y RECREACION DE MEDELLIN	Antioquia	CO1.PCCNTR.10003147	En ejecución
MUNICIPIO DE ARMENIA QUINDIO	Quindío	CO1.PCCNTR.10007116	Aprobado
EMPRESA DISTRIBUIDORA DEL PACIFICO S.A. E.S.P	Chocó	CO1.PCCNTR.10007558	enviado Proveedor
ICBF REGIONAL CUNDINAMARCA	Distrito Capital de Bogotá	CO1.PCCNTR.10012436	En ejecución
ESE HOSPITAL DEPARTAMENTAL UNIVERSITARIO DEL QUINDÍO SAN JUAN DE DIOS	Quindío	CO1.PCCNTR.10012462	En ejecución
IDACO	Distrito Capital de Bogotá	CO1.PCCNTR.10042905	Aprobado
ALCALDIA MUNICIPAL DE VALLEDUPAR	Cesar	CO1.PCCNTR.10042911	Aprobado
UNIDAD ADMINISTRATIVA ESPECIAL DE SERVICIOS PÚBLICOS.	Distrito Capital de Bogotá	CO1.PCCNTR.10042912	Aprobado
IDACO	Distrito Capital de Bogotá	CO1.PCCNTR.10042915	Aprobado
DEPARTAMENTO DEL ATLANTICO**	Atlántico	CO1.PCCNTR.10051358	Aprobado

-- En FreeSQL se utilizo INSERT ALL con los 19 registros.
-- Los INSERT deben corresponder a los datos originales
-- cargados durante la practica.

-- 3. Confirmar la carga de datos
COMMIT;

SELECT COUNT(*) AS TOTAL_REGISTROS
FROM CONTRATOS_SECOP_MUESTRA;

-- 4. Consulta de contratos del departamento de Antioquia
SELECT
    NOMBRE_ENTIDAD,
    DEPARTAMENTO,
    ID_CONTRATO,
    ESTADO_CONTRATO
FROM CONTRATOS_SECOP_MUESTRA
WHERE DEPARTAMENTO = 'Antioquia';

-- 5. Consulta de contratos en ejecucion
SELECT
    NOMBRE_ENTIDAD,
    DEPARTAMENTO,
    ID_CONTRATO,
    ESTADO_CONTRATO
FROM CONTRATOS_SECOP_MUESTRA
WHERE ESTADO_CONTRATO = 'En ejecución';

-- 6. Proyeccion de campos
SELECT
    NOMBRE_ENTIDAD,
    DEPARTAMENTO,
    ESTADO_CONTRATO
FROM CONTRATOS_SECOP_MUESTRA;

-- 7. Ordenar contratos por departamento
SELECT
    NOMBRE_ENTIDAD,
    DEPARTAMENTO,
    ID_CONTRATO,
    ESTADO_CONTRATO
FROM CONTRATOS_SECOP_MUESTRA
ORDER BY DEPARTAMENTO ASC;

-- 8. Contar contratos por estado
SELECT
    ESTADO_CONTRATO,
    COUNT(*) AS TOTAL_CONTRATOS
FROM CONTRATOS_SECOP_MUESTRA
GROUP BY ESTADO_CONTRATO
ORDER BY TOTAL_CONTRATOS DESC;

-- 9. Agregar columna de observacion
ALTER TABLE CONTRATOS_SECOP_MUESTRA
ADD OBSERVACION_PRACTICA VARCHAR2(200);

-- 10. Actualizar un contrato de la muestra
UPDATE CONTRATOS_SECOP_MUESTRA
SET OBSERVACION_PRACTICA =
    'Registro utilizado para ejercicio academico NoSQL'
WHERE ID_CONTRATO = 'CO1.PCCNTR.10000999';

-- 11. Verificar la actualizacion
SELECT
    ID_CONTRATO,
    NOMBRE_ENTIDAD,
    OBSERVACION_PRACTICA
FROM CONTRATOS_SECOP_MUESTRA
WHERE ID_CONTRATO = 'CO1.PCCNTR.10000999';

-- 12. Insertar un registro ficticio para practicar
INSERT INTO CONTRATOS_SECOP_MUESTRA (
    ID_CONTRATO,
    NOMBRE_ENTIDAD,
    DEPARTAMENTO,
    ESTADO_CONTRATO,
    OBSERVACION_PRACTICA
)
VALUES (
    'PRUEBA_ACADEMICA_001',
    'ENTIDAD FICTICIA DE PRUEBA',
    'Prueba',
    'Prueba',
    'Registro temporal para practicar eliminacion'
);

-- 13. Verificar el registro ficticio
SELECT *
FROM CONTRATOS_SECOP_MUESTRA
WHERE ID_CONTRATO = 'PRUEBA_ACADEMICA_001';

-- 14. Eliminar solo el registro ficticio
DELETE FROM CONTRATOS_SECOP_MUESTRA
WHERE ID_CONTRATO = 'PRUEBA_ACADEMICA_001';

-- 15. Verificar que ya no existe
SELECT *
FROM CONTRATOS_SECOP_MUESTRA
WHERE ID_CONTRATO = 'PRUEBA_ACADEMICA_001';

-- 16. Consultar el total final de registros originales
SELECT COUNT(*) AS TOTAL_REGISTROS
FROM CONTRATOS_SECOP_MUESTRA;

-- Fin de la practica

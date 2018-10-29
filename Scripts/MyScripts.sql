/* =========================================================================================================== */
/* CONSULTAR LAS FORANEAS/DEPENDENCIAS DE UNA TABLA */

DECLARE @table VARCHAR(50) = '';

SELECT	OBJECT_NAME(fkc.constraint_object_id) AS FORANEA,
		OBJECT_NAME(fkc.parent_object_id) TABLA_ORIGEN, 
		COL_NAME(fkc.parent_object_id, fkc.parent_column_id) AS COLUMNA_ORIGEN, 
		OBJECT_NAME(fkc.referenced_object_id) TABLA_REFERENCIA, 
		COL_NAME(fkc.referenced_object_id, fkc.referenced_column_id) AS COLUMNA_REFERENCIA
FROM	Singes.SYS.FOREIGN_KEY_COLUMNS fkc
INNER JOIN Singes.SYS.OBJECTS obj ON obj.object_id IN (fkc.parent_object_id, fkc.referenced_object_id)
WHERE obj.name = @table
ORDER BY TABLA_ORIGEN, TABLA_REFERENCIA;

/* =========================================================================================================== */
DECLARE	@descripcion    VARCHAR(100) = 'Consulta de activación por número de serie';
DECLARE	@ruta			VARCHAR(100) = 'portalSinges/puntoDeVenta/consulta/movimientoSerial';
DECLARE	@codigo			VARCHAR(25)  = 'pdv-consultActXSerialNum';

IF (((SELECT TOP(1) codPermiso FROM Singes..portal_menuAplicacion WHERE ruta = @ruta) IS NOT NULL) OR ((SELECT TOP(1) codigo FROM Singes..portal_aplicacionCodigos WHERE codigo = @codigo) IS NOT NULL)) 
BEGIN
	SELECT 'YA EXISTE UN CÓDIGO ASIGNADO O EL CÓDIGO ESPECIFICADO YA SE ENCUENTRA REGISTRADO';
	SELECT * FROM Singes..portal_menuAplicacion WHERE ruta = @ruta;
	SELECT * FROM Singes..portal_aplicacionCodigos WHERE codigo = @codigo;
END
ELSE BEGIN
	INSERT INTO Singes..portal_aplicacionCodigos VALUES (@codigo, @descripcion);
	IF (SELECT COUNT(*) FROM Singes..portal_menuAplicacion WHERE ruta = @ruta AND eliminado = 1) = 1
	BEGIN
		DECLARE @id VARCHAR(10)	 = (SELECT id FROM Singes..portal_menuAplicacion WHERE ruta = @ruta AND codPermiso IS NULL AND eliminado = 1);
		UPDATE Singes..portal_menuAplicacion SET codPermiso = @codigo WHERE id = @id;

		SELECT id, ruta, eliminado, codPermiso FROM Singes..portal_menuAplicacion WHERE ruta = @ruta;
		SELECT 'INSERT INTO portal_aplicacionCodigos VALUES (' + char(39) + @codigo + char(39) + ', ' + char(39) + @descripcion + char(39) +');' AS scriptInsert,
		'UPDATE portal_menuAplicacion SET codPermiso = ' + char(39) + @codigo + char(39) + ' WHERE ruta = ' + char(39) + @ruta + char(39) + ';' AS scriptUpdate;
	END
	ELSE
	BEGIN
		UPDATE Singes..portal_menuAplicacion SET codPermiso = @codigo WHERE ruta = @ruta;
		SELECT 'SE MÓDIFICARON MÁS DE UN REGISTRO' AS mensaje;
		SELECT 'INSERT INTO portal_aplicacionCodigos VALUES (' + char(39) + @codigo + char(39) + ', ' + char(39) + @descripcion + char(39) +');' AS scriptInsert,
		'UPDATE portal_menuAplicacion SET codPermiso = ' + char(39) + @codigo + char(39) + ' WHERE ruta = ' + char(39) + @ruta + char(39) + ';' AS scriptUpdate;
		SELECT * FROM Singes..portal_menuAplicacion WHERE ruta = @ruta AND eliminado = 1;
	END
END
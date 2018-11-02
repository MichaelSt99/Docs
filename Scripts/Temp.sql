DECLARE @codigo VARCHAR(20) = '1007719431';
SELECT * FROM Singes..portal_sisUsuario WHERE cedula = @codigo;
SELECT * FROM Singes..com_nodo WHERE codigo = @codigo;
SELECT * FROM Singes..com_nodoInfoPersonal WHERE codigoNodo = @codigo;	

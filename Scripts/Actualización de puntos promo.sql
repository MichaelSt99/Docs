DECLARE @pts VARCHAR(50) , @numDoc VARCHAR(50), @idCab VARCHAR(50)
SELECT @idCab  = '13298099'
SELECT @numDoc = 'FUCC84383'
SELECT @pts    = '1.34'
UPDATE Singes..inv_CuerpoDocumento set puntosItemPromo = @pts where id = @idCab
DELETE Singes..com_maestroPuntos where tipDoc = '010' and numDoc = @numDoc

-- Buscar el idCab segun numero de documento/factura
SELECT * FROM Singes..inv_cabezaDocumento WHERE numDoc = 'FUCC84383';
-- Optener el id del cuerpo segun idCab de documento - para borrar de maestro puntos
SELECT * FROM Singes..inv_cuerpoDocumento WHERE idCabeza = '3131608';
--SELECT * FROM Singes..inv_item;
-- 010 - venta
-- 302 - devolución
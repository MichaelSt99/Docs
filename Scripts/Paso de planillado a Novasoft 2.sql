DECLARE @numDoc VARCHAR(14);
DECLARE @fecha DATE;
DECLARE @usuario VARCHAR(14);
DECLARE @perDoc VARCHAR(2) = '11';
DECLARE @anoDoc VARCHAR(4) = '2018';
DECLARE @aplica VARCHAR(4) = 'CNT';
DECLARE @tipDoc VARCHAR(3) = '252';
DECLARE @codSuc VARCHAR(3);
DECLARE @tipPla VARCHAR(3);
DECLARE @mensaje VARCHAR(100);
DECLARE @error INT;

-- ="SET @numDoc = '"&A1&"' SET @fecha = '"&TEXTO(B1,"dd/mm/yyyy")&"' SET @usuario = '"&C1&"' SELECT @codSuc = cod_suc, @tipPla = tipo_planilla FROM Singes..web_tmp_planilla WHERE planilla = @numDoc"&" UPDATE Singes..web_tmp_planilla SET estado = '1' WHERE planilla = @numDoc"&" DELETE NOVASOFT_509..cnt_cuedoc WHERE num_doc = @numDoc AND tip_doc = @tipDoc"&" DELETE NOVASOFT_509..cnt_cabdoc WHERE num_doc = @numDoc AND tip_doc = @tipDoc"&" EXEC Singes..sp_web_cierra_planilla1_tmp @numDoc, @tipPla, @codSuc, @usuario , @error"&" PRINT @error PRINT @mensaje"&" EXEC Singes..sp_cel_gen_afecon @aplica, @anoDoc, @perDoc, @tipDoc, @numDoc, @fecha, @error OUTPUT"&" PRINT @error"

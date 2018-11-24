/* ----------------------------------------------------------------------
*      Paso de planillado a NOVASOFT
*      @author Jaime Molina
*      @update 09/08/2018 David Vargas
*            Documentación
*      @params : 
*            -      @numDoc  = Número de documento (Antes de 2018-08-01 número de planilla)
*            -      @fecha   = Fecha en la cual se va a registrar los documentos asociados a la planilla
*            -      @usuario = Usuario que realizo la planilla
*            -      @perDoc  = Periodo de la activación (El día que fue planillada)
*            -      @anoDoc  = Año de la activación    (El año en que fue planillada)
*            -      @aplica  = CNT nunca debe cambiar *Constante
*            -      @tipDoc  = 252 nunca debe cambiar *Constante
*            -      @codSuc  = Sucursal extraida de la planilla *No parametrizable
*            -      @tipPla  = Tipo de planilla *No parametrizable
*            -      @mensaje = Mensaje retorno del SP *No parametrizable
*            -      @error   = Error generado por el SP *No parametrizable
*/

DECLARE             @numDoc    VARCHAR(14)     = 'C17600704'
DECLARE             @fecha     DATE            = '22/09/2018'
DECLARE             @usuario   VARCHAR(14)     = 'zplopez2'
DECLARE             @perDoc    VARCHAR(2)      = '11'
DECLARE             @anoDoc    VARCHAR(4)      = '2018'
DECLARE             @aplica    VARCHAR(4)      = 'CNT'
DECLARE             @tipDoc    VARCHAR(3)      = '252'
DECLARE             @codSuc    VARCHAR(3)
DECLARE             @tipPla    VARCHAR(3)
DECLARE             @mensaje   VARCHAR(100)
DECLARE             @error     INT
SELECT  @codSuc =cod_suc, @tipPla=tipo_planilla  FROM  singes..web_tmp_planilla WHERE  planilla= @numDoc
/* Ajuste de información para permitir la correcta ejecucuión de los procesos */
update    singes..web_tmp_planilla set estado='1' WHERE  planilla=@numDoc
DELETE NOVASOFT_509..cnt_cuedoc WHERE  num_doc=@numDoc AND  tip_doc = @tipDoc
DELETE NOVASOFT_509..cnt_cabdoc WHERE  num_doc=@numDoc AND  tip_doc = @tipDoc
/* Procedimiento para cerrar planilla (Proceso antiguo) */
EXEC Singes..sp_web_cierra_planilla1_tmp @numDoc, @tipPla, @codSuc, @usuario , @error
PRINT @error
PRINT @mensaje
/* Procedimineto de paso de planilla a contabilidad */
EXEC Singes..sp_cel_gen_afecon @aplica, @anoDoc, @perDoc,@tipDoc,@numDoc, @fecha, @error OUTPUT 
PRINT @error
/* Consulta de confirmación */
select * from NOVASOFT_509..cnt_cuedoc where tip_doc = '252' and num_doc = @numDoc
select * from NOVASOFT_509..cnt_cabdoc where tip_doc = '252' and num_doc = @numDoc
/* ---------------------------------------------------------------------- */
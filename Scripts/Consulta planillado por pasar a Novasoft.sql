SELECT DISTINCT RTRIM(planilla) AS planilla, cabD.fecha, cabD.usuario FROM Singes..web_tmp_planilla pla
INNER JOIN Singes..inv_CabezaDocumento cabD ON cabD.numDoc = pla.num_doc
LEFT JOIN NOVASOFT_509..cnt_cabdoc cab ON pla.num_planilla = cab.num_doc
WHERE pla.fec_planilla >= '03/03/2018' AND pla.fec_planilla < '02/11/2018' AND cab.num_doc IS NULL
ORDER BY cabD.usuario, cabD.fecha, planilla;
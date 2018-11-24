SELECT * FROM Singes..portal_sisUsuarios;
SELECT * FROM Singes..com_nodoComisiones;
SELECT * FROM Singes..com_grupoComision;

/* CARGOS Y CARACTERÍSTICAS */
/* ======================================================================================================= */
SELECT * FROM Singes..com_nodoCargo;
SELECT * FROM Singes..com_nodoCaracteristicasTipo;
SELECT * FROM Singes..com_nodoCaracteristicas;
SELECT * FROM Singes..com_nodoCargoCaracteristicas;

ALTER TABLE Singes..com_nodoComisiones ADD idCargo BIGINT NULL;
ALTER TABLE Singes..com_nodoComisiones ADD FOREIGN KEY (idCargo) REFERENCES Singes..com_nodoCargo(id);


/* ======================================================================================================= */

/* FAMILIARES */
/* ======================================================================================================= */
SELECT * FROM Singes..com_nodoFamiliares;
SELECT * FROM Singes..com_nodoFamiliaresTipo;
/* ======================================================================================================= */

/* INFORMACIÓN PERSONAL */
/* ======================================================================================================= */
SELECT * FROM Singes..com_nodoInfoPersonal;
SELECT * FROM Singes..com_nodoEps;
SELECT * FROM Singes..com_nodoEstadosCiviles;

INSERT INTO com_nodoInfoPersonal(codigoNodo)
SELECT codigo FROM com_nodoComisiones nc
INNER JOIN portal_sisUsuarios su ON su.cedula = nc.codigo;

UPDATE ni SET ni.sexo = su.sexo, ni.correo = su.email
FROM Singes..com_nodoInfoPersonal ni INNER JOIN Singes..portal_sisUsuarios su ON su.cedula = ni.codigoNodo;
/* ======================================================================================================= */

/* CONSULTA PARA VISTA DE DETALLES DEL NODO */
SELECT	nodo.id, nodo.usuario, nodo.descripcion, nodo.codigo, nodo.codigoAlt, nodo.corpCorreo, nodo.corpCelular, nodo.corpExtension, usuario.ima_perfil, nodo.fecCreacion, nodo.usuarioCrea,
		info.correo, info.telefono, info.celular, info.direccion, info.estrato, info.sexo, info.fechaNacimiento, eps.descripcion AS eps, estCiv.descripcion AS estadoCivil, info.grupoSanguineo,
		info.factorRH, info.ciudad, info.pais, info.pesoKg, info.estaturaCm, info.tallaCamisa, info.tallaPantalon, info.tallaZapatos, grupo.id AS idGrupo, grupo.descGrupo AS grupo, grupo.codSuc AS codigoGrupo,
		grupoTp.descripcion AS tipoGrupo, grupo.direccion AS direccionGrupo, rol.id AS idRol, rol.descripcion AS rol, cargo.id AS idCargo, cargo.descripcion AS cargo, tipCont.descripcion AS tipoContrato, estLab.descripcion AS estLab, usuario.bodega1 AS bodega,
		nodo.fechaInicioContrato, nodo.fechaFinContrato, nodo.indPago
FROM com_nodoComisiones nodo
LEFT JOIN portal_sisUsuarios usuario ON usuario.cedula = nodo.codigo
LEFT JOIN com_nodoCargo cargo ON cargo.id = nodo.idCargo
LEFT JOIN com_grupoComision grupo ON grupo.id = nodo.ubicaAct
LEFT JOIN com_grupoComisionTipo grupoTp on grupoTp.id = grupo.tipo
LEFT JOIN com_rolNodo rol ON rol.id = nodo.rol
LEFT JOIN com_nodoComisionesEstadoLab estLab ON estLab.id = nodo.estLab
LEFT JOIN com_nodoInfoPersonal info ON info.codigoNodo = nodo.codigo
LEFT JOIN com_nodoEps eps ON eps.id = info.idEps
LEFT JOIN com_nodoEstadosCiviles estCiv ON estCiv.id = info.idEstadoCivil
LEFT JOIN com_nodoTipoContrato tipCont ON tipCont.id = nodo.tipoContrato
WHERE nodo.id = 3150;
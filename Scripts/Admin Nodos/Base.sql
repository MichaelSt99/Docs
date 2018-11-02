/* AGREGAR CAMPOS A LA TABLA COMNODO */
ALTER TABLE Singes..com_nodo
	ADD contrasena VARCHAR(100)  NULL,
		codCos VARCHAR(6)  NULL,
		ima_perfil VARCHAR(100)  NULL,
		bodega VARCHAR(3) NULL,
		idCargo BIGINT NULL,
		fechaInicioContrato DATE NULL,
		fechaFinContrato DATE NULL,
		fechaFinContrato DATE NULL,
		fechaContrasenaExpira DATE NULL,
		bloqueado BIT NOT NULL DEFAULT(0);

/* REFERENCIAR CAMPOS AGREGADOS CON LAS TABLAS CORRESPONDIENTES */
ALTER TABLE Singes..com_nodo ADD FOREIGN KEY (bodega) REFERENCES Singes..inv_Bodegas(bodega);
ALTER TABLE Singes..com_nodo ADD FOREIGN KEY (idCargo) REFERENCES Singes..com_nodoCargo(id);

/* PASO DE DATOS SISUSUARIOS => COMNODO */
UPDATE nc SET nc.contrasena = su.password, nc.codCos = su.codCos, nc.ima_perfil = su.ima_perfil, nc.bodega = su.bodega1 
FROM Singes..com_nodo nc INNER JOIN Singes..portal_sisUsuarios su ON su.cedula = nc.codigo;

/* INSERTAR CODIGOS EN INFORMACIÓN PERSONAL */
INSERT INTO com_nodoInfoPersonal(codigoNodo)
SELECT codigo FROM com_nodo nc
WHERE nc.contrasena IS NOT NULL;

/* PASO DE DATOS SISUSUARIOS => INFOPERSONAL */
UPDATE ni SET ni.sexo = su.sexo, ni.correo = su.email
FROM Singes..com_nodoInfoPersonal ni INNER JOIN Singes..portal_sisUsuarios su ON su.cedula = ni.codigoNodo;
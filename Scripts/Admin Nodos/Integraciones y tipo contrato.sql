/* INTEGRACIONES DE LOS NODOS Y GRUPOS */
CREATE TABLE com_integraciones(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(50) NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

/* RELACIÓN ENTRE NODOS/GRUPOS Y LAS INTEGRACIONES */
CREATE TABLE com_integracionesRel(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idNodo BIGINT NULL,
	idGrupo BIGINT NULL,
	idIntegracion INT NOT NULL,
	codigo VARCHAR(50) NULL,
	contrasena VARCHAR(100) NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_integracionesRel ADD FOREIGN KEY (idNodo) REFERENCES com_nodo(id);
ALTER TABLE com_integracionesRel ADD FOREIGN KEY (idIntegracion) REFERENCES com_integraciones(id);

/* TIPO DE CONTRATOS PARA LOS NODOS */
CREATE TABLE com_nodoTipoContrato(
	id SMALLINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(30) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);
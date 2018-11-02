/* CARGO DE LOS NODOS */
CREATE TABLE com_nodoCargo(
	id BIGINT PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	descripcion VARCHAR(50) NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

/* TIPOS DE CARACTERISTICAS PARA LOS CARGOS */
CREATE TABLE com_nodoCaracteristicasTipo(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

/* CARACTERISTICAS PARA LOS CARGOS */
CREATE TABLE com_nodoCaracteristicas(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion TEXT NOT NULL,
	idTipoCaracteristica BIGINT NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_nodoCaracteristicas ADD FOREIGN KEY (idTipoCaracteristica) REFERENCES com_nodoCaracteristicasTipo(id);

/* RELACIÓN N-N ENTRE CARGOS Y CARACTERISTICAS */
CREATE TABLE com_nodoCargoCaracteristicas(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idCargo BIGINT NOT NULL,
	idCaracteristica BIGINT NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_nodoCargoCaracteristicas ADD FOREIGN KEY (idCargo) REFERENCES com_nodoCargo(id);
ALTER TABLE com_nodoCargoCaracteristicas ADD FOREIGN KEY (idCaracteristica) REFERENCES com_nodoCaracteristicas(id);
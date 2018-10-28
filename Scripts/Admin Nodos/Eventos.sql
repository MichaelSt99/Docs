/* AREAS DE EVENTOS */
CREATE TABLE com_eventosTipoArea(
	id SMALLINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(20) NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

/* A QUIENES LES APLICA LOS EVENTOS */
CREATE TABLE com_eventosTipoAplica(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(20) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

/* TIPOS DE EVENTOS */
CREATE TABLE com_eventosTipo(
	ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(40) NOT NULL,
	idArea SMALLINT NOT NULL,
	idPadre INT NULL,
	idAplica BIGINT NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_eventosTipo ADD FOREIGN KEY (idArea) REFERENCES com_eventosTipoArea(id);
ALTER TABLE com_eventosTipo ADD FOREIGN KEY (idPadre) REFERENCES com_eventosTipo(id);
ALTER TABLE com_eventosTipo ADD FOREIGN KEY (idAplica) REFERENCES com_eventosTipoAplica(id);

/* EVENTOS DE LOS NODOS Y GRUPOS */
CREATE TABLE com_eventos(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	idEventoTipo INT NOT NULL,
	fechaInicio DATETIME NOT NULL,
	fechaFin DATETIME NULL,
	valor INT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_eventos ADD FOREIGN KEY (idEventoTipo) REFERENCES com_eventosTipo(id);

/* ADJUNTOS DE LOS EVENTOS */
CREATE TABLE com_eventosAdjuntos(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idEvento BIGINT NOT NULL,
	nombre VARCHAR(40) NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_eventosAdjuntos ADD FOREIGN KEY (idEvento) REFERENCES com_eventos(id);

/* RELACIÓN ENTRE NODOS/GRUPOS Y LOS EVENTOS */
CREATE TABLE com_eventosRel(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idNodo BIGINT NULL,
	idGrupo BIGINT NULL,
	idEvento BIGINT NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_eventosRel ADD FOREIGN KEY (idNodo) REFERENCES com_nodo(id);
--ALTER TABLE com_eventosRel ADD FOREIGN KEY (idGrupo) REFERENCES com_grupo(id);
ALTER TABLE com_eventosRel ADD FOREIGN KEY (idEvento) REFERENCES com_eventos(id);
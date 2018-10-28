/* TIPOS DE FAMILIARES DE UN NODO */
CREATE TABLE com_nodoFamiliaresTipo(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(20) NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

/* FAMILIARES DE LOS NODOS */
CREATE TABLE com_nodoFamiliares(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	codigoNodo VARCHAR(12) NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	fechaNacimiento DATE NOT NULL,
	sexo CHAR(1) NOT NULL,
	relacion INT NOT NULL,
	usuarioCreacion VARCHAR(15) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	ipCreacion VARCHAR(20) NOT NULL,
	usuarioModificacion VARCHAR(15) NULL,
	fechaModificacion DATETIME NULL,
	ipModificacion VARCHAR(20) NULL,
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_nodoFamiliares ADD FOREIGN KEY (codigoNodo) REFERENCES com_nodo(codigo);
ALTER TABLE com_nodoFamiliares ADD FOREIGN KEY (relacion) REFERENCES com_nodoFamiliaresTipo(id);
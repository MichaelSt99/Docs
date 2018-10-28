/* EPS PARA NODOS */
CREATE TABLE com_nodoEps(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(30) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

/* ESTADOS CIVILES PARA NODOS */
CREATE TABLE com_nodoEstadosCiviles(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(30) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

/* INFORMACIÓN PERSONAL DEL NODO */
CREATE TABLE com_nodoInfoPersonal(
	codigoNodo VARCHAR(12) PRIMARY KEY NOT NULL,
	correo VARCHAR(100) NOT NULL,
	telefono VARCHAR(7) NULL,
	celular VARCHAR(10) NULL,
	direccion VARCHAR(100) NOT NULL,
	estrato INT NOT NULL,
	sexo CHAR(1) NOT NULL,
	fechaNacimiento DATE NOT NULL,
	idEps INT NOT NULL,
	idEstadoCivil INT NOT NULL,
	grupoSanguineo VARCHAR(2) NOT NULL,
	factorRH VARCHAR(15) NOT NULL,
	ciudad VARCHAR(20) NOT NULL,
	pais VARCHAR(20) NOT NULL,
	pesoKg SMALLINT NULL,
	estaturaCm SMALLINT NULL,
	tallaCamisa VARCHAR(5) NULL,
	tallaPantalon VARCHAR(5) NULL,
	tallaZapatos VARCHAR(5) NULL
);

ALTER TABLE com_nodoInfoPersonal ADD FOREIGN KEY (codigoNodo) REFERENCES com_nodo(codigo);
ALTER TABLE com_nodoInfoPersonal ADD FOREIGN KEY (idEps) REFERENCES com_nodoEps(id);
ALTER TABLE com_nodoInfoPersonal ADD FOREIGN KEY (idEstadoCivil) REFERENCES com_nodoEstadosCiviles(id);
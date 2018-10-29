/* AGREGAR CAMPOS A LA TABLA */
ALTER TABLE Singes..com_nodoComisiones 
	ADD contrasena VARCHAR(100)  NULL,
		codCos VARCHAR(6)  NULL,
		ima_perfil VARCHAR(100)  NULL,
		bodega VARCHAR(3) NULL;

/* PASO DE DATOS SISUSUARIOS => NODOCOMISIONES */
UPDATE nc SET nc.contrasena = su.password, nc.codCos = su.codCos, nc.ima_perfil = su.ima_perfil, nc.bodega = su.bodega1 
FROM Singes..com_nodoComisiones nc INNER JOIN Singes..portal_sisUsuario su ON su.cedula = nc.codigo;

/* CREAR NUEVA TABLA PARA INFORMACIÓN PERSONAL */
CREATE TABLE com_nodoInfoPersonal(
	codigoNodo VARCHAR(12) PRIMARY KEY,
	correo VARCHAR(100) NULL,
	telefono VARCHAR(7) NULL,
	celular VARCHAR(10) NULL,
	direccion VARCHAR(100) NULL,
	estrato INT NULL,
	sexo CHAR(1) NULL,
	fechaNacimiento DATE NULL,
	idEps INT NULL,
	idEstadoCivil INT NULL,
	grupoSanguineo VARCHAR(2) NULL,
	factorRH VARCHAR(15) NULL,
	ciudad VARCHAR(20) NULL,
	pais VARCHAR(20) NULL,
	pesoKg SMALLINT NULL,
	estaturaCm SMALLINT NULL,
	tallaCamisa VARCHAR(5) NULL,
	tallaPantalon VARCHAR(5) NULL,
	tallaZapatos VARCHAR(5) NULL
);
ALTER TABLE com_nodoInfoPersonal ADD FOREIGN KEY (codigoNodo) REFERENCES com_nodoComisiones(codigo);

/* INSERTAR CODIGOS EN INFORMACIÓN PERSONAL */
INSERT INTO com_nodoInfoPersonal( codigoNodo )
SELECT codigo FROM com_nodoComisiones nc
WHERE nc.contrasena IS NOT NULL;

/* PASO DE DATOS SISUSUARIOS => INFOPERSONAL */
UPDATE ni SET ni.sexo = su.sexo, ni.correo = su.email
FROM Singes..com_nodoInfoPersonal ni INNER JOIN Singes..portal_sisUsuario su ON su.cedula = ni.codigoNodo;

/* CREAR TABLAS PARA EPS Y ESTADOS CIVILES */
CREATE TABLE com_nodoEps(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(30) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

CREATE TABLE com_nodoEstadosCiviles(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	descripcion VARCHAR(30) NOT NULL,
	fechaCreacion DATETIME NOT NULL DEFAULT(GETDATE()),
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_nodoInfoPersonal ADD FOREIGN KEY (idEps) REFERENCES com_nodoEps(id);
ALTER TABLE com_nodoInfoPersonal ADD FOREIGN KEY (idEstadoCivil) REFERENCES com_nodoEstadosCiviles(id);

/* CREAR TABLAS PARA LOS LOGS */
CREATE TABLE com_nodoLogIngresoSinges(
	id BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	idNodo BIGINT NOT NULL,
	fechaIngreso DATETIME NOT NULL DEFAULT(GETDATE()),
	ipIngreso VARCHAR(20) NOT NULL,
	activo BIT NOT NULL DEFAULT(1),
	eliminado BIT NOT NULL DEFAULT(1)
);

ALTER TABLE com_nodoLogIngresoSinges ADD FOREIGN KEY (idNodo) REFERENCES Singes..com_nodoComisiones(id);
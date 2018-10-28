/* ASEGURAMIENTO */
INSERT INTO portal_aplicacionCodigos VALUES ('asg-files', 'Consultar archivos');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-files' WHERE ruta = 'archivos';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-auditBankConsigs', 'Auditoria de consignaciones bancarias');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-auditBankConsigs' WHERE ruta = 'auditoriaConsignacionBancaria';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-consultCreditNote', 'Consultar nota credito');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-consultCreditNote' WHERE ruta = 'notasCredito';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-activateUpPoints', 'Activación puntos Upselling');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-activateUpPoints' WHERE ruta = 'upselling';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-loadFiles', 'Carga de folios');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-loadFiles' WHERE ruta = 'CollectionController/';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-consultFilesTypes', 'Consultar tipos de archivos');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-consultFilesTypes' WHERE ruta = 'tiposArchivo';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-adminFields', 'Administrar campos');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-adminFields' WHERE ruta = 'campos';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-loadBankConsgs', 'Cargar consignaciones bancarias');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-loadBankConsgs' WHERE ruta = 'cargaConsignacionBancaria';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-consultIncons', 'Consultar inconsistencias');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-consultIncons' WHERE ruta = 'inconsistencias/admin';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-netPointAssignCode', 'Punto de red - asignara código');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-netPointAssignCode' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/asignarCodigo';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-adminNetPoint', 'Administrar puntos de red');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-adminNetPoint' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/concepto';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-createNetPoint', 'Crear un punto de red');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-createNetPoint' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/concepto/crear';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-consultLocalClosing', 'Consultar cierre local');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-consultLocalClosing' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/consulta/local';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-conciliation', 'Extracto de movimientos (conciliación)');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-conciliation' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/extractoConciliacion';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-consultNationalClosin', 'Consultar cierre nacional');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-consultNationalClosin' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/consulta/nacional';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-loadNationalAbstract', 'Carga de extracto nacional');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-loadNationalAbstract' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/extractoNacional';
INSERT INTO portal_aplicacionCodigos VALUES ('asg-loadLocalAbstracts', 'Carga de extracto de movimientos');
UPDATE portal_menuAplicacion SET codPermiso = 'asg-loadLocalAbstracts' WHERE ruta = 'portalSinges/aseguramiento/recaudosTerceros/pr/extractoLocal';

/* DIGITALIZACIÓN */
INSERT INTO portal_aplicacionCodigos VALUES ('dig-digitize', 'Digitalizaciones');
UPDATE portal_menuAplicacion SET codPermiso = 'dig-digitize' WHERE ruta = 'digitalizar';

/* INFRAESTRUCTURA */
INSERT INTO portal_aplicacionCodigos VALUES ('inf-adminRequirements', 'Administrador de casos para solicitud de requerimiento');
UPDATE portal_menuAplicacion SET codPermiso = 'inf-adminRequirements' WHERE ruta = 'portalSinges/infraestructura/adminCasos';
INSERT INTO portal_aplicacionCodigos VALUES ('inf-requireRequest', 'Solicitud de requerimiento');
UPDATE portal_menuAplicacion SET codPermiso = 'inf-requireRequest' WHERE ruta = 'infraestructura/requerimientos';
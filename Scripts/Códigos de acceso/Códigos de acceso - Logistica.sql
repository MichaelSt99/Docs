/* LOGISTICA - CLAROFIJO */
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultProductsType', 'Consultar tipos de productos');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultProductsType' WHERE ruta = 'portalSinges/logistica/claroFijo/tipoProducto';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultListPrices', 'Consultar lista de precios');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultListPrices' WHERE ruta = 'portalSinges/logistica/claroFijo/listaPrecioProducto';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultProductsChrs', 'Consultar características de productos');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultProductsChrs' WHERE ruta = 'portalSinges/logistica/claroFijo/caracteristicaProducto';
INSERT INTO portal_aplicacionCodigos VALUES ('log-multiplay', 'Multiplay');
UPDATE portal_menuAplicacion SET codPermiso = 'log-multiplay' WHERE ruta = 'portalSinges/logistica/claroFijo/multiplay';
INSERT INTO portal_aplicacionCodigos VALUES ('log-listPricesMultiplay', 'Lista de precios multiplay');
UPDATE portal_menuAplicacion SET codPermiso = 'log-listPricesMultiplay' WHERE ruta = 'portalSinges/logistica/claroFijo/listaPreciosMultiplay';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultCampaign', 'Consultar campañas');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultCampaign' WHERE ruta = 'portalSinges/logistica/claroFijo/campanias';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultContract', 'Consultar contrato');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultContract' WHERE ruta = 'portalSinges/logistica/claroFijo/contrato';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultActiveCoslts', 'Consultar asesores activos');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultActiveCoslts' WHERE ruta = 'portalSinges/logistica/claroFijo/reporteAsesoresActivos';
INSERT INTO portal_aplicacionCodigos VALUES ('log-loadPointsCF', 'Cargar puntos CF');
UPDATE portal_menuAplicacion SET codPermiso = 'log-loadPointsCF' WHERE ruta = 'portalSinges/logistica/claroFijo/cargaPuntosCF';
INSERT INTO portal_aplicacionCodigos VALUES ('log-cancelContract', 'Anular contrato');
UPDATE portal_menuAplicacion SET codPermiso = 'log-cancelContract' WHERE ruta = 'portalSinges/logistica/claroFijo/anulaContrato';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultViability', 'Consultar viabilidad');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultViability' WHERE ruta = 'portalSinges/logistica/claroFijo/viabilidad';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultPackageType', 'Consultar tipos de paquetes');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultPackageType' WHERE ruta = 'portalSinges/logistica/claroFijo/tipoPaquete';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultChannelsCat', 'Consultar categorías canales');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultChannelsCat' WHERE ruta = 'portalSinges/logistica/claroFijo/categoriaCanales';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultChrs', 'Consultar caracteristicas');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultChrs' WHERE ruta = 'portalSinges/logistica/claroFijo/caracteristica';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultPackages', 'Consultar lista de paquetes');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultPackages' WHERE ruta = 'portalSinges/logistica/claroFijo/paquete';
INSERT INTO portal_aplicacionCodigos VALUES ('log-listPricesPackages', 'Matriz de precios');
UPDATE portal_menuAplicacion SET codPermiso = 'log-listPricesPackages' WHERE ruta = 'portalSinges/logistica/claroFijo/listaPrecioPaquete/4';
INSERT INTO portal_aplicacionCodigos VALUES ('log-controlSales', 'Control de ventas');
UPDATE portal_menuAplicacion SET codPermiso = 'log-controlSales' WHERE ruta = 'portalSinges/logistica/claroFijo/reporteControlVentas';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultProducts', 'Consultar productos');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultProducts' WHERE ruta = 'portalSinges/logistica/claroFijo/producto';
INSERT INTO portal_aplicacionCodigos VALUES ('log-contentChannels', 'Contenedor canales');
UPDATE portal_menuAplicacion SET codPermiso = 'log-contentChannels' WHERE ruta = 'portalSinges/logistica/claroFijo/contenedorCanales';
INSERT INTO portal_aplicacionCodigos VALUES ('log-relChannels', 'Relacionar contenedor con productos');
UPDATE portal_menuAplicacion SET codPermiso = 'log-relChannels' WHERE ruta = 'portalSinges/logistica/claroFijo/asociacionCanales';
INSERT INTO portal_aplicacionCodigos VALUES ('log-terminalStrip', 'Regleta');
UPDATE portal_menuAplicacion SET codPermiso = 'log-terminalStrip' WHERE ruta = 'portalSinges/logistica/claroFijo/regleta';
INSERT INTO portal_aplicacionCodigos VALUES ('log-consultChannels', 'Consultar canales');
UPDATE portal_menuAplicacion SET codPermiso = 'log-consultChannels' WHERE ruta = 'portalSinges/logistica/claroFijo/canales';

/* LOGISTICA - CUADROCONTROL */
INSERT INTO portal_aplicacionCodigos VALUES ('log-reportConsltSales', 'Reporte de ventas de asesores');
UPDATE portal_menuAplicacion SET codPermiso = 'log-reportConsltSales' WHERE ruta = 'portalSinges/logistica/cuadroControl/reporteVentasAsesores';
INSERT INTO portal_aplicacionCodigos VALUES ('log-salesReport', 'Reporte de ventas detallado');
UPDATE portal_menuAplicacion SET codPermiso = 'log-salesReport' WHERE ruta = 'portalSinges/logistica/cuadroControl/reporteVentas';
INSERT INTO portal_aplicacionCodigos VALUES ('log-controlBox', 'Logistica cuadro control');
UPDATE portal_menuAplicacion SET codPermiso = 'log-controlBox' WHERE ruta = 'portalSinges/logistica/cuadroControl' OR ruta = 'portalSinges/logistica/cuadroControl/';
INSERT INTO portal_aplicacionCodigos VALUES ('log-controlBoxSales', 'Logistica cuadro control de ventas');
UPDATE portal_menuAplicacion SET codPermiso = 'log-controlBoxSales' WHERE ruta = 'portalSinges/logistica/cuadroControl/ventas';

/* LOGISTICA - MISIONESCRM */
INSERT INTO portal_aplicacionCodigos VALUES ('log-minCollections', 'Recaudos de min');
UPDATE portal_menuAplicacion SET codPermiso = 'log-minCollections' WHERE ruta = 'portalSinges/logistica/misionesCrm/recaudosMin';
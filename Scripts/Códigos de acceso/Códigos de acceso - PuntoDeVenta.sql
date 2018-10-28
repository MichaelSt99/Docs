/* PUNTO DE VENTA */
INSERT INTO portal_aplicacionCodigos VALUES ('pdv-2SellAssignCode', 'Asignación de código');
UPDATE portal_menuAplicacion SET codPermiso = 'pdv-2SellAssignCode' WHERE ruta = 'portalSinges/puntoDeVenta/tuVenta/asignar/usuario';
INSERT INTO portal_aplicacionCodigos VALUES ('pdv-consultSerialStates', 'Consultar estados seriales');
UPDATE portal_menuAplicacion SET codPermiso = 'pdv-consultSerialStates' WHERE ruta = 'portalSinges/puntoDeVenta/estadoSeriales';
INSERT INTO portal_aplicacionCodigos VALUES ('pdv-invoicePrinting', 'Impresión de factura');
UPDATE portal_menuAplicacion SET codPermiso = 'pdv-invoicePrinting' WHERE ruta = 'portalSinges/puntoDeVenta/imprimirFactura';
INSERT INTO portal_aplicacionCodigos VALUES ('pdv-createAuthInvoice', 'Creación de autoriación factura a crédito');
UPDATE portal_menuAplicacion SET codPermiso = 'pdv-createAuthInvoice' WHERE ruta = 'portalSinges/puntoDeVenta/creacionAutorizacionCredito';

/* SINGULARCOM INVENTARIO */
INSERT INTO portal_aplicacionCodigos VALUES ('inv-supportDoc213', 'Documento 213 mantenimiento');
UPDATE portal_menuAplicacion SET codPermiso = 'inv-supportDoc213' WHERE ruta = 'portalSinges/singularcomInventario/index.php/Principal/documento_213';
INSERT INTO portal_aplicacionCodigos VALUES ('inv-doc042', 'Documento 042 recibo de caja');
UPDATE portal_menuAplicacion SET codPermiso = 'inv-doc042' WHERE ruta = 'portalSinges/singularcomInventario/index.php/Principal/facturacion042';

/* SINGULARCOM FACTURACIÓN */
INSERT INTO portal_aplicacionCodigos VALUES ('fac-loadSerialsMassive', 'Cargue seriales facturación masiva');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-loadSerialsMassive' WHERE ruta = 'Facturacion/facturarSerialesMasivo';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changePayForm', 'Cambio forma de pago');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changePayForm' WHERE ruta = 'Facturacion/cambioFormaPago';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-billingDoc041', 'Facturación documento 041');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-billingDoc041' WHERE ruta = 'Principal/facturacion041';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-returnInvoiceSale', 'Devolución factura de venta');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-returnInvoiceSale' WHERE ruta = 'Facturacion/devolucionFactura';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-printCashReceipt', 'Imprimir recibo de caja');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-printCashReceipt' WHERE ruta = 'Facturacion/reImprimirFactura041';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-assignBox', 'Asignar caja');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-assignBox' WHERE ruta = 'Cajas/cargarFormulario/asignarCaja';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-clientInvoice', 'Cliente factura');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-clientInvoice' WHERE ruta = 'Facturacion/cliente';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-consultAuths', 'Consulta de autorizaciones');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-consultAuths' WHERE ruta = 'Facturacion/consultarAutorizaciones';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changePayMethod', 'Solicitud cambio de forma de pago');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changePayMethod' WHERE ruta = 'Facturacion/pedirAutorizacion';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changeFormPay0101', 'Solicitud cambio de forma de pago 010');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changeFormPay0101' WHERE ruta = 'Facturacion/autorizacion/0101';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changeFormPay3021', 'Solicitud cambio de forma de pago 302');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changeFormPay3021' WHERE ruta = 'Facturacion/autorizacion/3021';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changeFormPay010', 'Solicitud autorización factura credito');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changeFormPay010' WHERE ruta = 'Facturacion/autorizacion/010';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changeFormPay301', 'Solicitud autorización 301');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changeFormPay301' WHERE ruta = 'Facturacion/autorizacion/301';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changeFormPay011', 'Solicitud autorización 011');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changeFormPay011' WHERE ruta = 'Facturacion/autorizacion/011';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-changeFormPay302', 'Solicitud autorización 302');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-changeFormPay302' WHERE ruta = 'Facturacion/autorizacion/302';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-closeBoxATM', 'Cierre de caja cajero');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-closeBoxATM' WHERE ruta = 'CierreCaja/cierreCajaPrincipal/1/1';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-closeOp', 'Cierre de Operación');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-closeOp' WHERE ruta = '/CierreCaja/cierreCajaPrincipal/2/1';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-modifyCloseBoxATM', 'Modificación de cierre cajero');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-modifyCloseBoxATM' WHERE ruta = 'CierreCaja/cierreCajaPrincipal/1/2';
INSERT INTO portal_aplicacionCodigos VALUES ('fac-redeemBonuses', 'Redimir bonos');
UPDATE portal_menuAplicacion SET codPermiso = 'fac-redeemBonuses' WHERE ruta = 'Bonos/redimir_bonos';
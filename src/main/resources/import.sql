INSERT INTO regiones (id, nombre) VALUES (1, 'Misiones');
INSERT INTO regiones (id, nombre) VALUES (2, 'Corrientes');
INSERT INTO regiones (id, nombre) VALUES (3, 'Entre Rios');
INSERT INTO regiones (id, nombre) VALUES (4, 'Buenos Aires');
INSERT INTO regiones (id, nombre) VALUES (5, 'Santa Fe');
INSERT INTO regiones (id, nombre) VALUES (6, 'Chaco');
INSERT INTO regiones (id, nombre) VALUES (7, 'Formosa');
INSERT INTO regiones (id, nombre) VALUES (8, 'Cordoba');

INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(1, 'Jose Luis', 'Gazano', 'josegazano7@outlook.com', '1986-06-11');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(2, 'Maximo Emanuel', 'Gazano', 'maximoema@gmail.com', '2018-01-02');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(4, 'Adriana De Los Angeles', 'Opichani', 'opichaniadriana@outlook.com', '2018-01-03');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(4, 'Hugo Fabian', 'Gazano', 'hfgaza@gmail.com', '2018-01-04');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(4, 'Julia Beatriz', 'Opichani', 'lajulia@gmail.com', '2018-02-01');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'Jonathan Agustin', 'Gazano', 'agusjona@gmail.com', '2018-02-10');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'Maria Rosa', 'Rodriguez', 'rositapequeñosdetalles@gmail.com', '2018-02-18');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'Ruffino', 'Gazano', 'ruffinai@gmail.com', '2018-02-28');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'Coki', 'Gazano', 'elcoki@gmail.com', '2018-03-03');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(5, 'Simon', 'Gazano', 'saimon@gmail.com', '2018-03-04');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(6, 'Neron', 'Opichani', 'neronadio@gmail.com', '2018-03-05');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(7, 'Chappie', 'Gazano', 'chapeco@gmail.com', '2018-03-06');

/* Creamos algunos usuarios con sus roles */
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('user','$2a$10$C3Uln5uqnzx/GswADURJGOIdBqYrly9731fnwKDaUdBkt/M3qvtLq',1, 'Agustin', 'Gazano','agusting@gmail.com');
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('admin','$2a$10$RmdEsvEfhI7Rcm9f/uZXPebZVCcPC7ZXZwV51efAvMAp1rIaRAfPK',1, 'Jose Luis', 'Gazano','josegazano7@outlook.com');

INSERT INTO `roles` (nombre) VALUES ('ROLE_USER');
INSERT INTO `roles` (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (1, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 2);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 1);

/* Populate tabla productos */
INSERT INTO productos (nombre, precio, create_at) VALUES('Bicicleta R29 WAL-HER', 259990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Smartv 32 Android TCL ', 123490, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Celular Samnsung A03', 1499990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sony Notebook Z110', 37990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Hewlett Packard Multifuncional F2280', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 26', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Mica Comoda 5 Cajones', 299990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Notebook HP 14 8Ram 250 SSD', 120000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Pava Electrica ATMA', 8500, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Cocina 56cm ESCORIAL MASTER', 68500, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Heladera con freezer 280LTS BRIKET', 37990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Impresora sistema continuo EPSON', 76200, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bicicleta R29 WALL-HER', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Horno electrico 50Lts ATMA', 48000, NOW());

/* Creamos algunas facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura equipos de oficina', null, 1, NOW());

INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Factura Bicicleta', 'Alguna nota importante!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);



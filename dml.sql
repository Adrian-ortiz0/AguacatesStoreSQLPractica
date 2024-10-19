-- Tipos de aguacate
INSERT INTO Tipos_Aguacate (nombre) VALUES ('Hass');
INSERT INTO Tipos_Aguacate (nombre) VALUES ('Criollo');
INSERT INTO Tipos_Aguacate (nombre) VALUES ('Fuerte');
INSERT INTO Tipos_Aguacate (nombre) VALUES ('Bacon');

-- Aguacates
INSERT INTO Aguacates (nombre, descripcion, precio, tipo_id) VALUES ('Aguacate Hass Grande', 'Aguacate Hass de tamaño grande.', 5.99, 1);
INSERT INTO Aguacates (nombre, descripcion, precio, tipo_id) VALUES ('Aguacate Criollo Pequeño', 'Aguacate criollo de tamaño pequeño.', 3.50, 2);
INSERT INTO Aguacates (nombre, descripcion, precio, tipo_id) VALUES ('Aguacate Fuerte Mediano', 'Aguacate fuerte de tamaño mediano.', 4.25, 3);
INSERT INTO Aguacates (nombre, descripcion, precio, tipo_id) VALUES ('Aguacate Bacon Grande', 'Aguacate bacon de tamaño grande.', 6.00, 4);
INSERT INTO Aguacates (nombre, descripcion, precio, tipo_id) VALUES ('Aguacate Hass Pequeño', 'Aguacate Hass de tamaño pequeño.', 4.50, 1);

-- Clientes
INSERT INTO Clientes (nombre, direccion, telefono, email) VALUES ('Luis González', 'Calle Verde 123', '555-1234', 'luis.gonzalez@example.com');
INSERT INTO Clientes (nombre, direccion, telefono, email) VALUES ('Ana Ramírez', 'Av. Aguacate 456', '555-5678', 'ana.ramirez@example.com');
INSERT INTO Clientes (nombre, direccion, telefono, email) VALUES ('Pedro García', 'Calle del Mercado 789', '555-8765', 'pedro.garcia@example.com');

-- Pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, total) VALUES (1, '2024-09-25', 15.99);
INSERT INTO Pedidos (cliente_id, fecha_pedido, total) VALUES (2, '2024-09-26', 12.75);

-- Detalles de pedidos
INSERT INTO Detalles_Pedido (pedido_id, aguacate_id, cantidad, subtotal) VALUES (1, 1, 2, 11.98); -- 2 aguacates Hass grandes
INSERT INTO Detalles_Pedido (pedido_id, aguacate_id, cantidad, subtotal) VALUES (1, 2, 1, 3.50);  -- 1 aguacate criollo pequeño
INSERT INTO Detalles_Pedido (pedido_id, aguacate_id, cantidad, subtotal) VALUES (2, 3, 3, 12.75); -- 3 aguacates Fuerte medianos

-- 1. Trigger para insertar un registro en un log cuando se inserta un nuevo tipo de aguacate.
insert into Departamentos
values ('Sonsonate'),
	('Ahuachapan'),
	('Santa Ana');

insert into Municipios
values ('Sonsonate Norte', 1),
	('Sonsonate Este', 1),
	('Sonsonate Oeste', 1),
	('Sonsonate Centro', 1),
	('Santa Ana Sur', 2),
	('Santa Ana Este', 2),
	('Santa Ana Centro', 2);


insert into Distritos 
values ('Sonzacate',1),
	   ('Armenia',1), 
	   ('Acajutla',1),
	   ('Chalcuapa', 2), 
	   ('Metapan', 2);


insert into Direcciones 
values ('Lado Norte','senda 2', '03014',1),
('Lado Sur', 'senda 3','03012',1),
('Lado B','pasaje 4','03013',1),
('Lado A','pasaje 6','03014',1),
('Lado C','pasaje 7','03011',1);

insert into Clientes 
values ('Juan', 'Pérez', '7777-7777', 'juan.perez@gmail.com', '1234567890123', 1),
       ('María', 'Gómez', '8888-8888', 'maria.gomez@gmail.com', '9876543210987', 2),
       ('Pedro', 'López', '9999-9999', 'pedro.lopez@gmail.com', '4567890123456', 3),
       ('Laura', 'Rodríguez', '6666-6666', 'laura.rodriguez@gmail.com', '7890123456789', 4),
       ('Carlos', 'Martínez', '5555-5555', 'carlos.martinez@gmail.com', '3210987654321', 5);

insert into Cargos
values ('Gerente'),
       ('Vendedor'),
       ('Contador'),
       ('Recepcionista'),
       ('Técnico');

insert into Empleados 
values ('Luis', 'García', '1011121314151', 123456789, '7777-7777', 'luis.garcia@gmail.com', '1990-01-15', '2022-03-01', 3000.00, 1, 1),
       ('Ana', 'López', '1617181920212', 987654321, '8888-8888', 'ana.lopez@gmail.com', '1995-05-20', '2022-04-15', 2500.00, 2, 2),
       ('Mario', 'Hernández', '2223242526272', 111222333, '9999-9999', 'mario.hernandez@gmail.com', '1988-11-10', '2022-02-10', 2800.00, 3, 3),
       ('Elena', 'Pérez', '2829303132333', 444555666, '6666-6666', 'elena.perez@gmail.com', '1992-08-25', '2022-01-05', 2700.00, 4, 4),
       ('Javier', 'Ramírez', '3435363738394', 777888999, '5555-5555', 'javier.ramirez@gmail.com', '1998-04-03', '2022-05-20', 2600.00, 5, 5);

insert into Proveedores 
values ('Alimentacion del Sur', '1111-1111', 'Ali.Sur@gmail.com', 1),
       ('EcoClean', '2222-2222', 'Eco.clean@gmail.com', 2),
       ('Consumo Facil', '3333-3333', 'Consumo.facil@gmail.com', 3),
       ('StoreMax', '4444-4444', 'Store.Max@gmail.com', 4),
       ('Agil S.A', '5555-5555', 'Agil@gmail.com', 5);


insert into Categorias 
values ('Electrónica'),
       ('Ropa'),
       ('Hogar'),
       ('Alimentos'),
       ('Juguetes');


insert into UnidadPrecio 
values ('Unidad'),
	('litro'),
	('botella'),
	('bolsa'),
	('paquete');


insert into Productos 
values (1, 1, 'Televisor LED', 'Televisor de 55 pulgadas', 599.99, 1),
       (2, 2, 'Camiseta', 'Camiseta de algodón', 19.99, 1),
       (3, 3, 'Olla de Presión', 'Olla de presión de acero inoxidable', 49.99, 3),
       (4, 4, 'Arroz', 'Arroz blanco de 5 kg', 9.99, 3),
       (5, 5, 'Juguete de Peluche', 'Osito de peluche suave', 12.99, 1);


insert into Descuentos 
values ('Oferta Verano', '2023-06-01', '2023-06-30', 10.00),
       ('Descuento Navidad', '2023-01-01', '2023-01-31', 15.00),
       ('Promoción Black Friday', '2023-02-24', '2023-03-24', 20.00),
       ('Descuento Primavera', '2023-03-01', '2023-03-31', 12.00),
       ('Oferta Especial', '2023-05-15', '2023-07-30', 8.00);


insert into AsignacionDescuentoProducto 
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5);


insert into FacturaVentas 
values (1, 1, 1, '2023-08-15', '14:30:00', 599.99),
       (2, 2, 2, '2023-08-16', '15:45:00', 39.98),
       (3, 3, 3, '2023-08-17', '10:15:00', 54.99),
       (4, 4, 4, '2023-08-18', '16:20:00', 29.97),
       (5, 5, 5, '2023-08-19', '09:00:00', 12.99);


insert into DetallesFactVentas 
values (1, 1, 1, 599.99, 599.99, 599.99),
       (2, 2, 2, 19.99, 39.98, 39.98),
       (3, 3, 3, 16.66, 49.99, 54.99),
       (4, 4, 1, 29.97, 29.97, 29.97),
       (5, 5, 1, 12.99, 12.99, 12.99);


insert into MetodoPago 
values ('Efectivo'),
       ('Tarjeta de Crédito'),
       ('Tarjeta de Debito'),
       ('ChivoWallet'),
       ('BitCoin');


insert into Pagos 
values (1, 1, 599.99, '2023-08-15', '14:35:00'),
       (2, 2, 39.98, '2023-08-16', '15:50:00'),
       (3, 3, 54.99, '2023-08-17', '10:20:00'),
       (4, 4, 29.97, '2023-08-18', '16:25:00'),
       (5, 5, 12.99, '2023-08-19', '09:05:00');


insert into CantidadStock
values (300, '2023-08-01'),
       (550, '2023-07-22'),
       (200, '2023-05-30'),
       (100, '2023-04-04'),
       (120, '2023-02-11');

insert into Compras 
values (1, 1, 1, '2023-02-05', 10),
       (2, 2, 2, '2023-01-06', 15),
       (3, 3, 3, '2023-04-07', 20),
       (4, 4, 4, '2023-04-08', 8),
       (5, 5, 5, '2023-05-09', 12);


insert into FacturaCompras 
values ('2023-08-29', 1, 2999.90),
       ('2023-02-23', 2, 599.85),
       ('2023-06-12', 3, 999.80),
       ('2023-01-11', 4, 239.76),
       ('2023-02-01', 5, 155.88);


insert into Inventarios 
values (1, 1, 10, '2023-03-05'),
       (2, 2, 15, '2023-02-16'),
       (3, 3, 20, '2023-05-17'),
       (4, 4, 8, '2023-02-28'),
       (5, 5, 12, '2023-04-19');

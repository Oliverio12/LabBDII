--Consulta para obtener los nombres de los empleados y sus ventas totales por empleado
SELECT E.nombresEmpleado, E.apellidosEmpleado, SUM(FV.totalVenta) AS VentasTotales
FROM Empleados AS E
LEFT JOIN FacturaVentas AS FV ON E.idEmpleado = FV.idEmpleado
GROUP BY E.nombresEmpleado, E.apellidosEmpleado;

--Consulta para encontrar los productos comprados por cada cliente
SELECT C.nombresCliente, C.apellidosCliente, P.nombreProducto
FROM Clientes AS C
INNER JOIN FacturaVentas AS FV ON C.idCliente = FV.idCliente
INNER JOIN DetallesFactVentas AS DFV ON FV.idFactVenta = DFV.idFactVentas
INNER JOIN Productos AS P ON DFV.idProducto = P.idProducto;

--Consulta para calcular el monto total de compras por cada proveedor
SELECT Pr.nombreProveedor, SUM(FC.MontoTotal) AS MontoTotalCompras
FROM Proveedores AS Pr
INNER JOIN Compras AS C ON Pr.idProveedor = C.IdProveedor
INNER JOIN FacturaCompras AS FC ON C.IdCompra = FC.IdCompra
GROUP BY Pr.nombreProveedor;

--Consulta para encontrar los descuentos aplicados a cada producto en las ventas
SELECT P.nombreProducto, D.nombreDescuento
FROM Productos AS P
INNER JOIN AsignacionDescuentoProducto AS ADP ON P.idProducto = ADP.idProducto
INNER JOIN Descuentos AS D ON ADP.idDescuento = D.idDescuento;

--Consulta para mostrar los productos y su cantidad en inventario actual
SELECT P.nombreProducto, I.cantExist
FROM Productos AS P
INNER JOIN Inventarios AS I ON P.idProducto = I.idProducto;

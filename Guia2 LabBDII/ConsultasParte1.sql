--Consulta para calcular el precio total de productos vendidos en una factura específica
SELECT FV.idFactVenta, SUM(DFV.MontoTotal) AS PrecioTotal
FROM FacturaVentas AS FV
INNER JOIN DetallesFactVentas AS DFV ON FV.idFactVenta = DFV.idFactVentas
WHERE FV.idFactVenta = 3
GROUP BY FV.idFactVenta;

--Consulta para encontrar los productos que tienen un precio unitario mayor que la media de todos los productos
SELECT P.nombreProducto, P.precioUnitario
FROM Productos AS P
WHERE P.precioUnitario > (SELECT AVG(precioUnitario) FROM Productos);

--Consulta para obtener la edad de los empleados en años completos
SELECT nombresEmpleado, apellidosEmpleado, DATEDIFF(YEAR, fechaNac, GETDATE()) AS Edad
FROM Empleados;

--Consulta para encontrar los municipios que pertenecen a departamentos cuyos nombres comienzan con "S"
SELECT M.municipio, D.departamento
FROM Municipios AS M
INNER JOIN Departamentos AS D ON M.idDepartamento = D.idDepartamento
WHERE D.departamento LIKE 'S%';

--Consulta para calcular la diferencia de días entre la fecha de compra y la fecha de pago en las compras
SELECT C.FechaCompra, P.fechaPago, DATEDIFF(DAY, C.FechaCompra, P.fechaPago) AS DiasDiferencia
FROM Compras AS C
INNER JOIN Pagos AS P ON C.IdCompra = P.idFactura;
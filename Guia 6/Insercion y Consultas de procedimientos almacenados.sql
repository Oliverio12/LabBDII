Use ByteCode

--Procedimiento almacenado de consultas
create or alter procedure ConsultaVentasDetalles
as
begin
	select	v.FechaVenta, c.NombresCliente, c.ApellidosCliente, p.NombreProducto, p.Precio, m.Metodo
	from Ventas.Venta v
	Inner Join Cliente.Clientes c on v.Id_Cliente = c.Id_Cliente
	Inner Join Cliente.CarritoCompras cc on v.Id_Carrito = cc.Id_Carrito
	Inner Join Productos.Producto p on cc.Id_Producto = p.Id_Producto
    Inner Join Ventas.Pagos pg on v.Id_Pago = pg.Id_Pago
    Inner Join Ventas.MetodosPago m on pg.Id_MetodoPago = m.Id_MetodoPago;
end;

exec ConsultaVentasDetalles;


--Procedimientos almacenados de insert

create or alter procedure RealizarVenta
(
    @Id_Cliente int,
    @Id_Producto int,
    @Cantidad int,
    @Id_Usuario int,
    @Id_MetodoPago int
)
as
begin
    declare @FechaVenta datetime;
    declare @Id_Carrito int;

	set @FechaVenta = GETDATE();

    insert into Ventas.Venta (Id_Cliente, Id_Carrito, Id_Usuario, Id_Pago, FechaVenta)
    values (@Id_Cliente, 0, @Id_Usuario, @Id_MetodoPago, @FechaVenta);

    set @Id_Carrito = SCOPE_IDENTITY();

	insert into Cliente.CarritoCompras (Id_Cliente, Id_Producto, Cantidad, FechaAgregado)
    values (@Id_Cliente, @Id_Producto, @Cantidad, @FechaVenta);

    update Ventas.Venta
    set Id_Carrito = @Id_Carrito
    where Id_Venta = SCOPE_IDENTITY();
end;

exec RealizarVenta @Id_Cliente = 1, @Id_Producto = 2, @Cantidad = 3, @Id_Usuario = 4, @Id_MetodoPago = 5;


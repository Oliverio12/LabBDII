--Trigger con el procesamineto almacenado

create table Productos.LogActualizacionInventario (
    Id_Log int identity(1,1) primary key,
    Id_Inventario int,
    FechaActualizacion datetime,
    Accion varchar(100),
    StockAnterior int,
    StockNuevo int
);

create procedure spActualizarInventario
    @Id_Inventario int,
    @Stock int,
    @UsuarioModifico int
as
begin
    declare @StockActual int;

    select @StockActual = Stock from Productos.Inventario where Id_Inventario = @Id_Inventario;

    if @StockActual is null
    begin
        insert into Productos.Inventario (Stock, Nombre_producto, Precio) values (@Stock, 'Producto Nuevo', 0);
        insert into Productos.LogActualizacionInventario (Id_Inventario, FechaActualizacion, Accion, StockAnterior, StockNuevo)
        values (scope_identity(), getdate(), 'INSERCION', 0, @Stock);
    end
    else
    begin
        update Productos.Inventario set Stock = @Stock where Id_Inventario = @Id_Inventario;
        insert into Productos.LogActualizacionInventario (Id_Inventario, FechaActualizacion, Accion, StockAnterior, StockNuevo)
        values (@Id_Inventario, getdate(), 'ACTUALIZACION', @StockActual, @Stock);
    end

    print 'La operación de actualización de inventario ha sido realizada.';
end
go

create trigger trgAfterActualizarInventario
on Productos.Inventario
after insert, update
as
begin
    declare @Id_Inventario int, @Stock int, @FechaActualizacion datetime;

    select @Id_Inventario = inserted.Id_Inventario, @Stock = inserted.Stock
    from inserted;

    set @FechaActualizacion = getdate();
    insert into Productos.LogActualizacionInventario (Id_Inventario, FechaActualizacion, Accion, StockNuevo)
    values (@Id_Inventario, @FechaActualizacion, 'TRIGGER INSERT/UPDATE', @Stock);

    print 'El trigger ha registrado la actualización de inventario en el log.';
end
go


/*
Nota: El procesamiento almacenado debe ejecutarse en una Query diferente
sino no funcionara, ya luego se puede ejecutar tanto el trigger de manera normal
*/
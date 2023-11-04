--Funcion Escalar

create function Productos.fnPrecioMaximoCategoria(@Id_Categoria int)
returns decimal(10,2)
as
begin
    declare @PrecioMaximo decimal(10,2);
    
    select @PrecioMaximo = max(Precio) 
    from Productos.Producto 
    where Id_Categoria = @Id_Categoria;
    
    return isnull(@PrecioMaximo, 0);
end;
go


--Funcion de valores por tablas
use TiendaByteCode;
go

create function Productos.fnProductosConDescuento(@Fecha datetime)
returns @TablaConDescuentos table
(
    Id_Producto int,
    NombreProducto varchar(100),
    Descripcion varchar(255),
    Precio decimal(10,2),
    PorcentajeDescuento decimal(5,2),
    PrecioFinal decimal(10,2)
)
as
begin
    insert into @TablaConDescuentos
    select 
        p.Id_Producto, 
        p.NombreProducto, 
        p.Descripcion, 
        p.Precio, 
        d.PorcentajeDescuento,
        p.Precio - (p.Precio * d.PorcentajeDescuento / 100)
    from Productos.Producto p
    left join Productos.Descuento d on p.Id_Producto = d.Id_Producto 
    and @Fecha between d.FechaInicio and d.FechaFinal
    where d.PorcentajeDescuento is not null;

    return;
end;
go

--Cursor Dinamico

declare @id_producto int, 
        @nombre_producto varchar(100), 
        @descripcion varchar(255), 
        @precio decimal(10, 2),
        @id_inventario int, 
        @id_marca int, 
        @id_categoria int;

declare producto_cursor cursor dynamic for 
select id_producto, nombre_producto, descripcion, precio, id_inventario, id_marca, id_categoria 
from productos.producto;

open producto_cursor;

fetch next from producto_cursor into @id_producto, @nombre_producto, @descripcion, @precio, @id_inventario, @id_marca, @id_categoria;

while @@fetch_status = 0
begin
    print 'ID del Producto: ' + cast(@id_producto as varchar(10)) 
        + ', Nombre: ' + @nombre_producto 
        + ', Precio: ' + cast(@precio as varchar(10));
    

    fetch next from producto_cursor into @id_producto, @nombre_producto, @descripcion, @precio, @id_inventario, @id_marca, @id_categoria;
end;

close producto_cursor;
deallocate producto_cursor;

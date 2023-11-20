create view EmployeeDetails as
select
    E.Id_Empleado,
    E.DUI_Empleado,
    E.ISSS_Empleado,
    E.NombresEmpleado,
    E.ApellidosEmpleado,
    E.FechaNacEmpleado,
    E.Telefono,
    E.Correo,
    C.Cargo as NombreCargo,
    D.Linea1 as DireccionLinea1,
    D.Linea2 as DireccionLinea2,
    D.CodigoPostal
from
    Persona.Empleados E
    join Persona.Cargos C on E.Id_Cargo = C.Id_Cargo
    join Departamento.Direcciones D on E.Id_Direccion = D.Id_Direccion;


	
create view ProductDetails as
select
    P.Id_Producto,
    P.NombreProducto,
    P.Descripcion,
    P.Precio,
    M.NombreMarca,
    C.NombreCategoria
from
    Productos.Producto P
    join Productos.Marca M on P.Id_Marca = M.Id_Marca
    join Productos.Categoria C on P.Id_Categoria = C.Id_Categoria;



create view SaleDetails as
select
    V.Id_Venta,
    V.FechaVenta,
    C.NombresCliente,
    C.ApellidosCliente,
    DV.Cantidad,
    DV.PrecioUnitario,
    P.NombreProducto
from
    Ventas.Venta V
    join Cliente.Clientes C on V.Id_Cliente = C.Id_Cliente
    join Ventas.DetalleVenta DV on V.Id_Venta = DV.Id_Venta
    join Productos.Producto P on DV.Id_Producto = P.Id_Producto;

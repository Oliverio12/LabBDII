
--Vista de Direcciones

CREATE VIEW DireccionCompleta AS
SELECT
	D.Id_Direccion,
    D.Linea1,
    D.Linea2,
    D.CodigoPostal,
    Dist.Distrito,
    M.Municipio,
    Dep.Departamento,
    Dep.Pais
FROM Departamento.Direcciones D
JOIN Departamento.Distritos Dist ON D.Id_Distrito = Dist.Id_Distrito
JOIN Departamento.Municipios M ON Dist.Id_Municipio = M.Id_Municipio
JOIN Departamento.Departamentos Dep ON M.Id_Departamento = Dep.Id_Departamento;
go
select * from DireccionCompleta

--Vista de Empleados
CREATE VIEW VistaEmpleadoDireccion AS
SELECT
    E.Id_Empleado,
    E.DUI_Empleado,
    E.ISSS_Empleado,
    E.NombresEmpleado,
    E.ApellidosEmpleado,
    E.FechaNacEmpleado,
    E.Telefono,
    E.Correo,
    E.Id_Cargo,
    C.Cargo as CargoEmpleado,
    E.Id_Direccion,
    CONCAT(
        DC.Linea1, ', ',
        DC.Linea2, ', ',
        DC.CodigoPostal, ', ',
        DC.Distrito, ', ',
        DC.Municipio, ', ',
        DC.Departamento, ', ',
        DC.Pais, ', ',
        CAST(DC.CodigoPostal as char(5))
    ) as Direccion
FROM Persona.Empleados E
JOIN Persona.Cargos C ON E.Id_Cargo = C.Id_Cargo
JOIN DireccionCompleta DC ON E.Id_Direccion = DC.Id_Direccion;
go

select * from  VistaEmpleadoDireccion

--Vista de Usuarios
CREATE VIEW VistaUsuarios AS
SELECT
    U.Id_Usuario,
    U.Id_Empleado,
    CONCAT(E.NombresEmpleado, ', ', E.ApellidosEmpleado) AS NombreCompleto,
    E.Id_Cargo,
    U.Id_Rol,
    R.NombreRol,
    U.Usuario,
    U.Clave
FROM Rol.Usuarios U
JOIN Rol.Roles R ON U.Id_Rol = R.Id_Rol
JOIN Persona.Empleados E ON U.Id_Empleado = E.Id_Empleado;

select * from VistaUsuarios

--Vista de Clientes
CREATE VIEW VistaClientesDireccion AS
SELECT
    C.Id_Cliente,
    C.NombresCliente,
    C.ApellidosCliente,
    C.DUI_Cliente,
    C.Telefono,
    C.Correo,
    C.Id_Direccion,
    CONCAT(
        DC.Linea1, ', ',
        DC.Linea2, ', ',
        DC.CodigoPostal, ', ',
        DC.Distrito, ', ',
        DC.Municipio, ', ',
        DC.Departamento, ', ',
        DC.Pais, ', ',
        CAST(DC.CodigoPostal as char(5))
    ) as Direccion,
    C.Usuario,
    C.Clave
FROM Cliente.Clientes C
JOIN DireccionCompleta DC ON C.Id_Direccion = DC.Id_Direccion;

Select * from VistaClientesDireccion


--Vista de Inventario
CREATE VIEW VistaInventario
AS
SELECT
    Id_Inventario,
    Stock,
    Nombre_producto,
    Descripcion,
    Precio,
    Fecha_adquisicion,
    Fecha_ultima_actualizacion,
    Categoria,
    Proveedor
FROM
    Productos.Inventario;
go
	
select * from VistaInventario


--Vista de Productos

CREATE VIEW VistaProductoCompleta
AS
SELECT
    P.Id_Producto,
    P.NombreProducto,
    P.Descripcion AS DescripcionProducto,
    P.Precio,
	P.Id_Inventario,
	CONCAT(
    'Cantidad: ',I.Stock , ',   ' ,
    I.Nombre_producto,', ',
    I.Descripcion,', ',
    I.Fecha_adquisicion,', ',
    I.Fecha_ultima_actualizacion,', ',
    I.Categoria,', ',
    I.Proveedor) as Inventario,
	P.Id_Marca,
	CONCAT(
	M.Id_Marca, ', ',
    M.NombreMarca) as Marca,
	P.Id_Categoria,
	CONCAT(
	C.Id_Categoria, ', ',
    C.NombreCategoria) as Categoria
FROM
    Productos.Producto P
    INNER JOIN Productos.Inventario I ON P.Id_Inventario = I.Id_Inventario
    INNER JOIN Productos.Marca M ON P.Id_Marca = M.Id_Marca
    INNER JOIN Productos.Categoria C ON P.Id_Categoria = C.Id_Categoria;
go



select * from VistaProductoCompleta

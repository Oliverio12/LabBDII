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
--Vista
-- Crear vista que une las tres tablas
create view Departamento.VistaDireccion as
select
    d.Id_Departamento,
    d.Departamento,
    d.Pais,
    m.Id_Municipio,
    m.Municipio,
    m.Id_Departamento as Municipio_Departamento,
    di.Id_Distrito,
    di.Distrito,
    di.Id_Municipio as Distrito_Municipio
from
    Departamento.Departamentos d
join
    Departamento.Municipios m on d.Id_Departamento = m.Id_Departamento
join
    Departamento.Distritos di on m.Id_Municipio = di.Id_Municipio;


-- Crear la nueva vista
create view Persona.VistaEmpleadosDireccion as
select
    e.DUI_Empleado,
    e.ISSS_Empleado,
    e.NombresEmpleado,
    e.ApellidosEmpleado,
    e.FechaNacEmpleado,
    e.Telefono,
    e.Correo,
    c.Cargo as NombreCargo,
    d.Linea1,
    d.Linea2,
    d.Id_Distrito,
    d.CodigoPostal
from
    Persona.Empleados e
join
    Persona.Cargos c on e.Id_Cargo = c.Id_Cargo
join
    Departamento.Direcciones d on e.Id_Direccion = d.Id_Direccion;


	Select * from Persona.VistaEmpleadosDireccion


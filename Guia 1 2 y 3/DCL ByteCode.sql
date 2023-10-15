
--Roles

create role Administrador
go
create role Gerente
go
create role Empleado
go
create role Bodegero
go
create role Administrador_de_Usuarios
go
create role Administrador_de_Turno
go


--Logins
--Administrador
create login login_admin_Rodrigo__Zavaleta12
with password = 'admin';
go
create login login_admin_Dennis__Godinez97
with password = 'admin123';
go
--Gerente
create login login_gerente_Francis22
with password = 'geren123';
go
--Empleado
create login login_emplea_Raul55
with password = 'emp24';
go
--Bodegero
create login login_bodege_Carmen
with password = 'bode32';
go
--Administrador Usuario
create login login_adminUsu_Luisa887
with password = 'AdmUs';
go
--Super Visor 
create login login_superVis_Robert552
with password = 'SupTu';
go

--Crear Usuarios
--admin
create user admin_Rodrigo__Zavaleta12
for login login_admin_Rodrigo__Zavaleta12;
go
create user admin_Dennis__Godinez97
for login login_admin_Dennis__Godinez97;
--gerente
create user gerente_Francis22
for login login_gerente_Francis22;
go
--empleado
create user emplea_Raul55
for login login_emplea_Raul55;
go
--bodegero
create user bodege_Carmen
for login login_bodege_Carmen;
go
--Administrador de usuario
create user adminUsu_Luisa887
for login login_adminUsu_Luisa887;
go
--Supervisor de turnos
create user superVis_Robert552
for login login_superVis_Robert552;
go

--Agregar usuarios a roles
alter role Administrador add member admin_Rodrigo__Zavaleta12;
go
alter role Administrador add member admin_Dennis__Godinez97;
go
alter role Gerente add member gerente_Francis22;
go
alter role Empleado add member emplea_Raul55;
go
alter role Bodegero add member bodege_Carmen;
go
alter role Administrador_de_Usuarios add member adminUsu_Luisa887;
go
alter role Administrador_de_Turno add member superVis_Robert552;
go

--PERMISOS
--Administrador
grant control on database::TiendaByteCode to Administrador;
go
--Gerente
grant select, insert, update, delete on Departamento.Direcciones to Gerente
go
grant select, insert, update on Persona.Cargos to Gerente
go
grant select, insert, update, delete on Persona.Empleados to Gerente
go
grant select, insert, update, delete on Grupos.Grupo to Gerente
go
grant select, insert, update, delete on Cliente.Clientes  to Gerente
go
grant select, insert, update, delete on Rol.AsignacionRolesOpciones  to Gerente
go
grant select, insert, update, delete on Productos.Inventario to Gerente
go
grant select, insert, update, delete on Productos.Marca to Gerente
go
grant select, insert, update, delete on Productos.Categoria to Gerente
go
grant select, insert, update, delete on Productos.Producto to Gerente
go
grant select, insert, update, delete on Productos.Descuento to Gerente
go
grant select, insert, update, delete on Ventas.Compra to Gerente
go
grant select, insert, update, delete on Ventas.DetalleCompra to Gerente
go
grant select, insert, update, delete on Ventas.MetodosPago to Gerente
go
grant select, insert, update, delete on Ventas.Pagos to Gerente
go
grant select, insert, update, delete on Ventas.Venta to Gerente
go
grant select, insert, update, delete on Ventas.DetalleVenta to Gerente
go

--Empleado
grant select, insert, update on Productos.Marca to Empleado
go
grant select, insert, update on Productos.Categoria to Empleado
go
grant select, insert, update on Productos.Producto to Empleado
go
grant select, insert, update on Ventas.Pagos to Empleado
go
grant select, insert, update on Productos.Inventario to Empleado
go
grant select, insert, update on Cliente.Clientes to Empleado
go
grant select, insert, update on Ventas.Venta to Empleado
go
grant select, insert, update on Ventas.DetalleVenta to Empleado
go
grant select, insert, update on Ventas.MetodosPago to Empleado
go

--Bodegero
grant select, insert, update, Delete on Productos.Marca to Bodegero
go
grant select, insert, update, Delete on Productos.Producto to Bodegero
go
grant select, insert, update, Delete on Productos.Categoria to Bodegero
go
grant select, insert, update, Delete on Productos.Inventario to Bodegero
go
grant select, insert, update, Delete on Ventas.Compra to Bodegero
go
grant select, insert, update, Delete on Ventas.DetalleCompra to Bodegero
go

--Administrador_de_Usuarios
grant select, insert, update on Persona.Empleados to Administrador_de_Usuarios
go
grant select, insert, update on Rol.Usuarios to Administrador_de_Usuarios
go
grant select, insert, update on Cliente.Clientes to Administrador_de_Usuarios
go
grant select, insert, update on Grupos.Grupo to Administrador_de_Usuarios
go

--Administrador de Grupos
grant select, insert, update on Grupos.Grupo to Administrador_de_Turno
go

-- Consulta para obtener una lista de logins en la instancia de SQL Server
select name from sys.server_principals where type_desc = 'SQL_LOGIN';
go
-- Consulta para obtener una lista de usuarios en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'SQL_USER';
go
-- Consulta para obtener una lista de roles en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'DATABASE_ROLE';
go

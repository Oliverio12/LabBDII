--Secuencia para llenar la llave primaria de una tabla de facturación, puede ser el número
--de la factura, ticket o un correlativo

create sequence Ventas.secuenciafacturas
    start with 1
    increment by 1
    minvalue 1
    maxvalue 999999
    cycle;

alter table Ventas.Venta
add Id_venta int default next value for ventas.secuenciafacturas primary key;

insert into Ventas.Venta (Id_Cliente, Id_Usuario, Id_Pago, FechaVenta)
values (1, 1, 1, getdate());

declare @numerofactura int;
set @numerofactura = scope_identity();

--Secuencia para llenar la llave primaria de una tabla que se encuentre suelta en su base
--de datos 

create sequence SecuenciaInventario
    start with 1
    increment by 1;
go

alter table Productos.Inventario
alter column Id_Inventario int default (next value for dbo.SecuenciaInventario) primary key;
go


--Secuencia para llenar la llave primaria o cualquier campo con numeración única de una
--tabla nueva o existente según su elección

create sequence dbo.SecuenciaNumeracionUnica
    start with 1
    increment by 1;
go

create table Nombretabla (
    Id_Campo int default (next value for dbo.SecuenciaNumeracionUnica) primary key,
);
go

alter table Nombretabla
alter column Id_Campo int default (next value for dbo.SecuenciaNumeracionUnica) primary key;
go

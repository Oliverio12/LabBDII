create table Departamentos(
	idDepartamento int primary key identity(1,1),
	departamento varchar(80) not null
);

create table Municipios(
	idMunicipio int primary key identity(1,1), 
	municipio varchar(80), 
	idDepartamento int not null,
	foreign key (idDepartamento) references Departamentos(idDepartamento)
);

create table Distritos(
	idDistrito int primary key identity(1,1), 
	distrito varchar(80)  not null,
	idMunicipio int  not null,
	foreign key (idMunicipio) references Municipios(idMunicipio)
);

create table Direcciones(
	idDireccion int primary key identity (1,1), 
	linea1 varchar(255) not null, 
	linea2 varchar (150), 
    codigoPostal int not null,
	idDistrito int not null,
	foreign key (idDistrito) references Distritos(idDistrito)
);

create table Clientes(
	idCliente int primary key identity (1,1), 
	nombresCliente varchar (150) not null, 
	apellidosCliente varchar(150) not null, 
	telefono varchar (9) not null,
	email varchar(255), 
	DUI varchar (13),
	idDireccion int not null,
	foreign key (idDireccion) references Direcciones(idDireccion)
);

create table Cargos(
	idCargo int primary key identity(1,1),
	cargo varchar(50) not null
);

create table Empleados(
	idEmpleado int primary key identity (1,1), 
	nombresEmpleado varchar (150) not null, 
	apellidosEmpleado varchar(150) not null, 
	DUI varchar (13)  not null,
	ISSS int  not null,
	telefono varchar (9) not null,
	email varchar(255) not null, 
	fechaNac date not null,
	fechaContratacion date not null,
	salario float not null,
	idCargo int  not null,
	idDireccion int not null,
	foreign key (idCargo) references Cargos(idCargo),
	foreign key (idDireccion) references Direcciones(idDireccion)
);

create table Proveedores(
	idProveedor int primary key identity(1,1), 
	nombreProveedor varchar(150)  not null,
	telefono varchar (9) not null,
	email varchar(255) not null,
	idDireccion int  not null,
	foreign key (idDireccion) references Direcciones(idDireccion)
);

create table Categorias(
	 idCategoria int primary key identity (1,1), 
	 categoria varchar(150)  not null
);



create table CantidadStock(
	IdCantidadStock int primary key identity(1,1),
	IdSuministro int not null,
	Cantidad int not null,
	FechaEntrada date not null,
);

create table Productos(
	 idProducto int primary key identity(1,1), 
	 idCategoria int not null,
	 idProveedor int not null,
     idCantidadStock int not null,
	 nombreProducto varchar(150)  not null,
	 descripcion varchar(255) not null,
	 precio float not null,
	 foreign key (idCategoria)  references Categorias(idCategoria),
	 foreign key (idProveedor) references Proveedores(idProveedor),
     foreign key (idCantidadStock) references CantidadStock(idCantidadStock)
);

create table Descuentos (
    idDescuento int primary key identity(1,1),
    nombreDescuento varchar(100) not null,
    fechaInicio date not null,
    fechaFin date not null,
    porcentajeDescuento float not null
);

create table AsignacionDescuentoProducto (
    idAsignacionDescuentoProducto int primary key identity(1,1),
    idProducto int not null,
    idDescuento int not null,
    foreign key (idProducto) references Productos(idProducto),
    foreign key (idDescuento) references Descuentos(idDescuento)
);


create table FacturaVentas(
	 idFactVenta int primary key identity(1,1), 
	 idEmpleado int not null,
	 idCliente int not null,
     idProducto int not null,
	 fechaVenta date not null,
	 horaVenta time not null,
	 totalVenta float, 
	 foreign key (idEmpleado) references Empleados(idEmpleado),
	 foreign key (idCliente) references Clientes(idCliente),
     foreign key (idProducto) references Productos(idProducto)
);

create table DetallesFactVentas(
	 idDetallesFactVenta int primary key identity(1,1), 
     idFactVentas int not null,
	 idProducto int not null,
	 cantidadVendida int not null,
	 precioUnitario float not null,
	 subtotal float not null,
     MontoTotal Decimal(10,2) not null,
	 foreign key (idFactVentas) references FacturaVentas(idFactVenta),
	 foreign key (idProducto) references Productos(idProducto)
 );
 
 create table MetodoPago(
	idMetodoPago int primary key identity(1,1),
	NombreMetodoPago varchar(100)
 );

create table Pagos(
	 idPago int primary key identity(1,1),
	 idFactura int not null,
	 idMetodoPago int not null,
	 montoPagado float not null,
	 fechaPago date not null,
	 horaPago time not null,
	 foreign key (idFactura) references FacturaVentas(idFactVenta),
	 foreign key (idMetodoPago) references MetodoPago(idMetodoPago)
);

Create table Compras(
	IdCompra int primary key identity(1,1),
	IdProveedor int not null,
	IdCantidadStock int not null,
	IdEmpleado int not null,
	FechaCompra Date,
	ProductosComprados int,
	foreign key (IdEmpleado) references Empleados(IdEmpleado),
	foreign key (IdProveedor) references Proveedores(IdProveedor),
	foreign key (IdCantidadStock) references CantidadStock(IdCantidadStock),
);


create table FacturaCompras(
    IdFactCompra int primary key identity(1,1),
    FechaFactura Date not null,
    IdCompra int,
    MontoTotal Decimal(10,2) not null,    
    foreign key (IdCompra) references Compras(IdCompra)
);

create table Inventarios(
	 idInventario int primary key identity(1,1),
     idProducto int not null,
     idCantidadStock int not null,
	 cantExist int not null,
	 fechaActualizacion date,
	 foreign key (idProducto) references Productos(idProducto),
     foreign key (idCantidadStock) references CantidadStock(idCantidadStock)
);


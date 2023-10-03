Create database DBSistema_Tienda;
Use DBSistema_Tienda;

Create Table negocio (
IdNegocio int NOT NULL,
Nombre varchar(100),
Direccion varchar(100),
Cuit varchar(30),
Celular varchar(20),
Logo varchar(500),
PRIMARY KEY (IdNegocio)
);


Create Table rol (
IdRol int NOT NULL,
Descripcion varchar(20),
Estado tinyint,
PRIMARY KEY (IdRol)
);


Create Table usuario (
IdUsuario int NOT NULL,
IdRol Int,
Nombre varchar (100),
Correo varchar(30),
Celular varchar(15),
DNI varchar(15),
Clave varchar(40),
Estado tinyint,
PRIMARY KEY (IdUsuario),
 KEY fk_usuario_rol (IdRol),
CONSTRAINT fk_usuario_rol FOREIGN KEY (IdRol) REFERENCES rol (IdRol)
);


Create Table categoria (
IdCategoria int NOT NULL,
Descripcion varchar (100),
Estado tinyint,
PRIMARY KEY (IdCategoria)
);

Create Table producto (
IdProducto int NOT NULL,
IdCategoria Int,
Nombre varchar (100),
PrecioCompra decimal(10,2),
PrecioVenta decimal(10,2),
Stock int,
Estado tinyint,
PRIMARY KEY (IdProducto),
 KEY fk_producto_categoria (IdCategoria),
CONSTRAINT fk_producto_categoria FOREIGN KEY (IdCategoria) REFERENCES categoria (IdCategoria)
);


Create Table factura (
IdFactura int NOT NULL,
IdUsuario Int,
NumeroFactura int,
MetodoPago varchar(20),
Total decimal(10,2),
Direccion varchar(100),
Fecha datetime DEFAULT CURRENT_TIMESTAMP,
TipoDeEntrega varchar(20),
EstadoPago tinyint,
PRIMARY KEY (IdFactura)
);

Create Table detalle_factura (
IdDetalle_Factura int NOT NULL,
IdFactura Int,
IdProducto int,
PrecioCompra decimal(10,2),
PrecioVenta decimal(10,2),
Cantidad int,
SubTotal decimal(10,2),
PRIMARY KEY (IdDetalle_Factura),
 KEY fk_detallef_factura (IdFactura),
CONSTRAINT fk_detallef_factura FOREIGN KEY (IdFactura) REFERENCES factura (IdFactura),
KEY fk_detallef_producto (IdProducto),
CONSTRAINT fk_detallef_producto FOREIGN KEY (IdProducto) REFERENCES producto (IdProducto)
);


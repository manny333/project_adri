
create table tctipoimagen(
    id int not null primary key auto_increment,
    cNombre varchar(50) not null,
    cDescripcion varchar(250) null
)Engine=InnoDB charset=utf8;

create table tcimagenesproductos(
    id int not null primary key auto_increment,
    idProducto bigint not null,
    cImagen varchar(250) null,
    idTipoImagen int not null,
    dtFechaRegistro timestamp default now(),
    key(idProducto,idTipoImagen)
)Engine=InnoDB charset=utf8;

create table tccaracteristicasproducto(
    id int not null primary key auto_increment,
    idProducto bigint not null,
    cDescripcion text null
)Engine=InnoDB charset=utf8;

create table tcproductos(
    id bigint not null primary key auto_increment,
    cNombre varchar(150) not null,
    cDescripcion varchar(500) not null,
    dPrecio decimal not null default 0.0,
    idTipoProducto int not null,
    dtFechaRegistro timestamp default now(),
    deFechaActualizacion timestamp null,
    idEstatusProducto int not null,
    key(idTipo,idEstatus)
)Engine=InnoDB charset=utf8;

create table tctiposproductos(
    id int not null primary key auto_increment,
    cNombre varchar(50) not null,
    cDescripcion varchar(150) null
)Engine=InnoDB charset=utf8;

create table tcsubtiposproductos(
    id int not null primary key auto_increment,
    idTipoProducto int not null,
    cNombre varchar(50) not null,
    cDescripcion varchar(150) null,
    key(idTipoProducto)
)Engine=InnoDB charset=utf8;

create table tcestatusproducto(
    id int not null primary key auto_increment,
    cNombre varchar(50) not null,
    cDescripcion varchar(150) null
)Engine=InnoDB charset=utf8;

create table tcusuarios(
    id int not null primary key auto_increment,
    cNombre varchar(150) not null,
    cApellidoPaterno varchar(150) not null,
    cApellidoMaterno varchar(150) not null,
    cCorreo varchar(250) not null,
    cContraseña varchar(150) not null,
    cImagen varchar(150) not null,
    idTipoUsuario int not null
)Engine=InnoDB charset=utf8;

create table tctipousuario(
    id int not null primary key auto_increment,
    cNombre varchar(50) not null,
    cDescripcion varchar(150) not null
)Engine=InnoDB charset=utf8;



create table clientes(
dni int not null,
nombre varchar(45),
apellido varchar(45),
direccion varchar(45),
tel int,
PRIMARY KEY(dni)
);

create table reserva(
id int not null,
fecha_inicio varchar(45),
fecha_final varchar(45),
cant_personas varchar(45),
clientes_dni int,
paquete_viaje_id_viaje int,
PRIMARY KEY(id),
foreign key(clientes_dni) references clientes(dni),
foreign key(paquete_viaje_id_viaje) references paquete_viaje(id_viaje)
on delete restrict
on update cascade
);

create table paquete_viaje(
id_viaje int not null,
destino varchar(45),
cant_dias int,
cant_noches int,
costo int,
cant_excursiones int,
transporte_viaje varchar(45),
pago_id_pago int,
PRIMARY KEY(id_viaje),
foreign key (pago_id_pago) references pago(id_pago) 
on update set null
);
create table pago(
id_pago int not null,
num_tarjeta int,
metodo varchar(45),
PRIMARY KEY(id_pago)
);
 
create table alojamiento(
id_complejo int not null,
nombre_complejo varchar(45),
categoria varchar(45),
tel int,
cant_personas int,
cant_pisos int,
cocina_cabaña bool,
garage_cabaña bool,
parilla_cabaña bool,
restobar_complejo bool,
PRIMARY KEY(id_complejo)
);
-- Consultas I
create table productos(
codigo int not null,
nombre varchar(45),
precio_u int,
PRIMARY KEY(codigo) 
);

create table proveedores(
dni int not null,
direccion varchar(45),
nombre varchar (45),
productos_codigo int,
PRIMARY KEy (dni),
foreign key(productos_codigo) references productos(codigo)
);
create table productos_has_clientes(
productos_codigo int not null,
cliente_dni int not null,
PRIMARY KEY(productos_codigo, cliente_dni),
foreign key(producto_codigo)references productos(codigo),
foreign key(cliente_dni) references cliente(dni)
);
create table cliente(
dni int not null,
nombre varchar(45),
apellido varchar(45),
direccion varchar(45),
PRIMARY KEY(dni)
); 



-- Consultas II

create table camionero(
dni int not null,
direccion varchar(45),
ciudad varchar(45),
telefono int,
salario int,
PRIMARY KEY (dni)
);

create table camion(
matricula varchar(7) not null,
potencia int,
modelo varchar(45),
tipo varchar(45),
PRIMARY KEY (matricula)
);

create table camionero_has_camion(
camion_matricula varchar(7),
camionero_dni int,
PRIMARY KEY (camion_matricula, camionero_dni),
foreign key(camion_matricula) references camion(matricula),
foreign key(camionero_dni) references camionero(dni)
on delete restrict
on update cascade
);

create table paquete(
codigo int not null,
descripcion varchar(45),
destinatario varchar(45),
direccion varchar(45),
PRIMARY KEY (codigo),
foreign key(ciudad_codigo) references ciudad(codigo),
foreign key(camionero_rec) references camionero(rec)
on delete set null
on update restrict
);

create table ciudad(
codigo int,
nombre varchar(45)
);

-- tarea

alter table reserva add column descuento int;


create table empleado(
dni int not null,
nombre varchar(45),
apellido varchar(45),
telefono int,
PRIMARY KEY(dni)
);


alter table reserva add check (descuento > 0);


alter table reserva add column dni_empleado int;
alter table reserva add foreign key(dni_empleado) references empleado(dni);
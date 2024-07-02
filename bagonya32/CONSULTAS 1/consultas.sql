insert into clientes value(48597324, "Juan", "Baquero", "lavallol", 18);
insert into clientes value(48597325, "Julian", "Gomes", "constituyentes", 12); 
insert into clientes value(48597326, "Jorge", "Gimenez", "cuenca", 21); 
insert into clientes value(48597327, "Lorenzo", "Giez", "monroe", 26); 

insert into producto value(1, "tv", "$5");
insert into producto value(323, "heladera", "$10");
insert into producto value(324, "ventilador", "$15");
insert into producto value(325, "caramelo", "$20");

insert into proveedor value(47123987,"Puerreydon", "Marcos", "101"); 
insert into proveedor value(47123986,"Urquiza", "Santiago", "102"); 
insert into proveedor value(47123985,"Montecastro", "Martin", "103"); 
insert into proveedor value(47123984,"Parque", "Tobias", "104");

select nombre, apellido from clientes;
select apellido from clientes where nombre = "Juan" and edad > "18";
select dni,nombre,direccion,productos_codigo from proveedores;
select clientes_dni from clientes_has_productos where productos_codigo = 1;
update clientes set direccion = "Villa Fiorito" where dni = 11111111;

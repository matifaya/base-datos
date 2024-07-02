insert into alojamiento values(100,"Cabañas Resort","Cabaña","Albarellos 324", 15343485, 4, 2, 1, 1, 1, 1),
(101,"Cabañas Mar Del Plata","Cabaña","Triunvirato 532", 15668235, 6, 2, 1, 0, 1, 1),
(102, "Cabañas Yapeyu", "Cabaña", "General Paz 901", 15724299, 2, 1, 1, 0, 0, 0),
(103, "Lago Vista", "Edificio", "Monroe 1937", 15678901, 4, 4, 1, 1, 0, 1),
(104, "Bosque Encantado", "Casa", "Jose C Paz 1276", 15789023, 3, 3, 1, 0, 1,0),
(105, "Villa Serenidad", "Casa", "Olazabal 968", 15890134, 3, 6, 1, 1, 1, 0),
(106, "Aventura Salvaje", "Cabaña", "Córdoba 3654", 16345678, 4, 6, 1, 1, 0, 1),
(107, "Cabañas del Bosque", "Cabaña", "San Martín 466", 16234567, 4, 3, 0, 1, 1, 0),
(108, "Cabañas Palermo", "Cabaña", "Artigas 7612", 16285682, 5, 2, 1, 0, 1, 1),
(109, "Selva Asiatica", "Edificio", "Campana 14223", 16274920, 1, 0, 0, 0, 0);

insert into clientes values(48123451, "Matias", "Faya", "Villa Maipu 726", 15892451),
(48123452, "Juan Pablo", "Baquero", "Villa del Parque 325", 15924761),
(48123453, "Joaquin", "Gonzalez", "Villa Urquiza 8712", 15882941),
(48123454, "Lucía", "Garcia", "Güemes 124", 15992452),
(48123455, "Juan", "Gómez", "San Martín 890", 16092453),
(48123456, "Sofía", "López", "Avenida de Mayo 432", 16192454),
(48123457, "Diego", "Rodríguez", "Corrientes 1550", 16292455),
(48123458, "Valentina", "Garayzar", "Florida 678", 16392456),
(48123459, "Nicolás", "Pérez", "Lavalle 1100", 16492457),
(48123460, "Carolina", "Díaz", "Callao 276", 16592458); -- Usamos DNI en vez de codigo

insert into pago values(500, 7245983487239275, "Efectivo"),
(501, 6983765253920153, "Efectivo"),
(502, 1119725406042216, "Cheque"),
(503, 9182750041164805, "Cheque"),
(504, 1358245369287234, "Efectivo"),
(505, 6261237310859047, "Efectivo"),
(506, 4897754892720896, "Cheque"),
(507, 5892103749258201, "Efectivo"),
(508, 1498632470935410, "Efectivo"),
(509, 8107623859478206, "Cheque");

insert into paquete_viaje values(1000, "Cancun", 15, 14, 2500, 3, "Avion", 500, 100),
(1001, "París", 20, 19, 5500, 4, "Barco", 700, 120),
(1002, "Bariloche", 10, 11, 7200, 2, "Vehiculo", 1000, 200),
(1003, "Roma", 12, 13, 4100, 3, "Avion", 800, 120),
(1004, "Sidney", 18, 17, 6200, 4, "Barco", 900, 180),
(1005, "Nueva York", 14, 13, 8300, 3, "Vehiculo", 1200, 160),
(1006, "Londres", 16, 15, 2800, 2, "Avion", 600, 140),
(1007, "Bariloche", 11, 12, 9400, 5, "Barco", 1100, 220),
(1008, "Barcelona", 17, 16, 3700, 3, "Vehiculo", 800, 170),
(1009, "Dubái", 13, 12, 6800, 4, "Avion", 950, 190);

insert into reserva values(10, 2024-5-21, 2024-6-5, 4, 48123451, 1000),
(11, 2024-5-21, 2024-6-5, 4, 48123452, 1001),
(12, 2024-5-21, 2024-6-5, 4, 48123453, 1002),
(13, 2024-5-21, 2024-6-5, 4, 48123454, 1003),
(14, 2024-5-21, 2024-6-5, 4, 48123455, 1004),
(15, 2024-5-21, 2024-6-5, 4, 48123456, 1005),
(16, 2024-5-21, 2024-6-5, 4, 48123457, 1006),
(17, 2024-5-21, 2024-6-5, 4, 48123458, 1007),
(18, 2024-5-21, 2024-6-5, 4, 48123459, 1008),
(19, 2024-5-21, 2024-6-5, 4, 48123460, 1009);

-- Consultas
select * from clientes;
select * from clientes where dni = 48123456;
select apellido, nombre, tel from clientes where apellido like 'Gar%';
select nombre_complejo, categoria, direccion from alojamiento where alojamiento_id_complejo = null;
select nombre, apellido, direccion from alojamiento left join paquete_viaje on id_complejo = alojamiento_id_complejo left join reserva on id_viaje = paquete_viaje_id_viaje;
select apellido, nombre, tel from clientes where apellido like '%ez';
update clientes set direccion = "San Juan 1234" where dni = 48123460;
select * from alojamiento where categoria = "Cabaña";
select * from paquete_viaje where cant_dias = 2 and costo > 6000;
select * from reserva where fecha_inicio between "2017-5-1"and "2017-5-10" order by fecha_inicio desc;
delete from reserva where clientes_dni = 48123460;
select costo, apellido, nombre, dni, metodo_pago from clientes join reserva on dni = clientes_dni join paquete_viaje on paquete_viaje_id_viaje = id_viaje join pago on pago_id_pago = id_pago;
select * from alojamiento left join paquete_viaje on alojamiento_id_complejo = id_complejo;
update alojamiento set direccion = "Belgrano 15897" where id_complejo = 102;
select * from reserva where fecha_inicio between 2017-4-1 and 2017-4-30 and cant_personas > 2;
select apellido, nombre, tel from clientes where apellido like '%ar%';
delete from paquete_viaje where id_viaje=1002; -- Si esta asociado, no se puede eliminar porque la clave foranea esta vinculada en otras tablas
delete from clientes where dni = 48123456; -- No se puede borrar porque la clave foranea esta vinculada en otras tablas.
update paquete_viaje set cant_dias = 7 and cant_noches = 8 where destino = "Bariloche"; 
 

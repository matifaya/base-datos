insert into ingreso value(48777001, "C100", 1, 30, "2017-5-7", 301, 80), (48777002, "C101", 2, 41, "2022-5-6", 302, 81), (48777003, "C102", 3, 57, "2009-5-5", 303, 82), (48777004, "C103", 4, 63, "1874-5-4", 304, 83);
insert into medic value(80, "Matias", "Faya", 48768120, "Huevologo"), (81, "Joaquin", "Gonzalez", 61123916, "Traumatologo"), (82, "Santino", "Cantale", 78234419, "Traumatologo"), (83, "Ulises", "Copati", 87238421, "Traumatologo");
insert into paciente value("301", "Madison", "Beer", "La Matanza", "Monroe", "C1431", "1998-6-23", 87125563), ("302", "Corinna", "Kofp", "Jose C Paz", "Triunvirato", "C1432", "1999-7-12", 76148751), ("303", "Aldana", "Danger", "Berazategui", "Artigas", "C1433", "2001-4-18", 48719127), ("304", "Mira", "David", "Gonzalez Catan", "Cabildo", "C1434", "1985-4-22", 74359997);

select nombre, apellido from medic order by apellido asc;
delete from ingreso where `fecha ingreso` < "2018-5-7";
select `cama paciente` from ingreso where paciente_codigo = 302;
update medic set especialidad = "Pediatra" where codigo = 80;
select nombre, apellido from medic where nombre like "a%";
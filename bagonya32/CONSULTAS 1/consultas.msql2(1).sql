insert into camion value ("bcs345", "85HP","model1","grande"),("bcs346", "70HP","model2","mediano"),("bcs347", "50HP","model3","chico");
insert into camionero value (158,"Santo tome3218","juan","Argentino",1537462543,"40$"),(159,"Santo tome3219","Jorge","Argentino",1537465869,"100$"),(160,"Santo tome3220","miguel","Paraguayo",1537463265,"50$");
insert into ciudad value (2,"Mar del plata"),(1,"caba"),(3,"Bariloche");
insert into paquetes value (1,"largo","Faya","Martinez",1,158),(2,"chico","Francisco","Mataderos",2,159),(3,"mediano","Ricardo","Floresta",3,160);

select dni from camionero_has_camion where camion_matricula = 1 and fecha  = "2023-04-26"
select nombre from ciudad;
update camionero set salario = salario + (salario * (1/10));
select codigo,descripcion,camionero_rec from paquete;
delete from paquete where codigo <100;
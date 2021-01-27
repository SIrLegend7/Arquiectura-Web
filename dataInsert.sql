select * from empresacliente;
select * from proyecto;
select * from trabajador;

insert into trabajador values ("09111066F", "Jorge", "jorgebeiz", "123", "jorge.berbel@edu.uah.es", "622145XXX", "C/Laquesea", "", "rrhh");
insert into trabajador values ("82134722X", "Paco", "Admin", "RRHH", "pakito83@hotmail.com", "614223452", "C/Ole ole", "1", "rrhh");
insert into trabajador values ("40332146A", "Silvia", "Pruebas", "Pruebas", "silviamg@gmail.com", "643432210", "C/Botella", "1", "tester");
insert into trabajador values ("09074448M", "Mangel", "lleeuuggiimm", "jajamagia", "angel.benito@edu.uah.es", "644211321", "C/Tonto", "2", "programador");
insert into trabajador values ("21416512G", "Ruben", "sirlegend", "xxx", "ruben.calvo@edu.uah.es", "633278918", "C/Platano", "10", "analista");

INSERT INTO empresacliente VALUES (1234,'123456789','empresaPrueba@gmail.com','empresaDePrueba1','Calle Falsa, 123');
INSERT INTO empresacliente VALUES (3321,'435325233','theGreatComopa@tgc.com','The Great Company','Calle Mala, 89');
INSERT INTO proyecto VALUES ('1', 1234, 200000,'2021-02-02 00:00:00','2021-01-05 00:00:00');
INSERT INTO proyecto VALUES ('2', 3321, 3000,'2021-06-04 00:00:00','2021-07-03 00:00:00');
INSERT INTO proyecto VALUES ('10', 1234, 10500,'2021-09-02 00:00:00','2021-010-11 00:00:00');
INSERT INTO proyecto VALUES ('3', 1234, 52200,'2021-08-10 00:00:00','2021-011-03 00:00:00');
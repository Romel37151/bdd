-- tabla cuentas 
drop table cuentas 


create table cuentas(
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','45612','1/1/2024',89)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('32589','78945','1/12/2012',568)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('96325','17544','19/11/2002',63)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('9632','78965','11/3/2022',893)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54123','89562','8/1/2024',39)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54321','85214','25/1/2023',21)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('75314','85245','15/3/2022',963)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('95123','78965','1/6/2002',896)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('82645','89654','1/9/2017',562)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('80134','02586','1/7/2018',4258)

select numero_cuenta,saldo from cuentas

select * from cuentas
where fecha_creacion
between '1/1/2024' and '1/3/2024'

select numero_cuenta,saldo from cuentas
where fecha_creacion
between '1/1/2024' and '1/3/2024'










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
values ('12345','45612','1/1/2002',89);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('32589','78945','1/12/2012',568);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('96325','17544','19/11/2002',63);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('9632','78965','11/3/2022',893);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54123','89562','8/1/2019',39);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54321','85214','25/10/2023',21);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('75314','85245','15/3/2022',963);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('95123','78965','1/6/2002',896);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('82645','89654','1/9/2017',562);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('80134','02586','1/7/2018',4258);

select * from cuentas

select numero_cuenta, saldo from cuentas

select * from cuentas where fecha_creacion
between '07/03/2024' and '07/01/2024'

select numero_cuenta, saldo from cuentas where fecha_creacion
between '07/03/2024' and '07/01/2024'

update cuentas set saldo=10 where cedula_propietario like '17%'

delete from cuentas where cedula_propietario like '10%'

select * from cuentas where saldo>money(100) and saldo<money(1000)

select * from cuentas where fecha_creacion = '10/02/2024' and fecha_creacion= '10/02/2023'

select * from cuentas where saldo=money(0) or cedula_propietario like '%2' 

-- agragar la columna usuario_cuenta en la tabla cuenta 
alter table cuentas
add column usuario_cuenta varchar(20)

select * from usuario
-- creacion de la tabla usuario
create table usuario(
	
	cedula char(10),
	nombre varchar(25),
	apellido varchar(25),
	Tipo_cuenta varchar(20),
	limite_credito decimal(10,2),
	
	constraint usuario_pk primary key (cedula)
)
insert into usuario(cedula,nombre, apellido,tipo_cuenta,limite_credito)
values('1234576890','jonathan','perez','corriente',12.3);
insert into usuario(cedula,nombre, apellido,tipo_cuenta,limite_credito)
values('1105232977','jonathan','perez','corriente',12.3);
select * from usuario

-- creacion de foreing key 
alter table cuentas
add constraint cuentas_usuario_fk 
foreign key (usuario_cuenta)
references usuario(cedula)

select usu.nombre, cu.numero_cuenta from usuario usu, cuentas cu
where  saldo>money(100) and saldo<money(1000)

select * from cuentas , usuario 
where fecha_creacion ='22/09/21' and  fecha_creacion='23/09/21'
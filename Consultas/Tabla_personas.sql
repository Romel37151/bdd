create table persona(
	cedula char(10),
	nombre varchar(50),
	apellido varchar(50),
	estatura decimal(10,2),
	fecha_nacimento date ,
	hora_nacimeinto time,
	cantidad_ahorrada money ,
	numeros_hijos int ,
	
	constraint persona_key primary key(cedula)
)
select * from persona

insert into persona(cedula,nombre,apellido,estatura,fecha_nacimento,hora_nacimeinto,cantidad_ahorrada,numeros_hijos)
values('1105232977','jonatha','morocho',120.0,'1995/08/03','10:00',20.0,0)
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimento,hora_nacimeinto,cantidad_ahorrada,numeros_hijos)
values('1105232978','Sean','morocho',500.0,'1997/08/09','18:00',22.0,0)
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimento,hora_nacimeinto,cantidad_ahorrada,numeros_hijos)
values('110523378','LUSI','peraz',500.0,'1997/08/09','18:00',22.0,0)

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	grante varchar(50),
	constraint prestamo_key primary key (cedula)
)
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232977',500,'2024/01/23','10:00','luis')
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232978',700,'2024/01/23','15:00','pepe')
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('110523378',350,'2024/01/29','19:00','angela')
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo, grante)
values('1105232977',350,'2024/02/1','09:00','angel')
select * from prestamo

alter table prestamo 
add constraint prestamo_personas_fk 
foreign key (cedula)
references personas(cedula)

select pre.cantidad_ahorrada , pre.monto ,pre.grante from prestamo pre, personas per

where monto >money(100) and monto< money(500)


select * from  personas per
where per.nombre= 'Sean'

select *
from personas per , estado_civil_codigo ec
where per.estado_civil_codigo =ec.codigo
and estado_civil_codigo='U'



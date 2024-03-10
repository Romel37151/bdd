-- tabla estudiantes
drop table estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estidiantes_pk primary key(cedula)
)

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1754247722','Pedro','Vasquez','d45@gmal.com','1/2/2003')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('5689412233','Jose','Andrango','rt45@gmal.com','18/12/2003')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('5896234477','Joaquin','Andrimba','ja85@gmal.com','23/8/2000')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1002857777','Juan','Pillajo','jq9@gmal.com','6/12/1996')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1556938526','Rosa','Alba','ra52@gmal.com','26/1/1999')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('9635852269','Ana','Quilo','aq23@gmal.com','23/9/2001')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('9632587425','Margarita','Achina','mpq3@gmal.com','3/4/2004')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('8956247585','Jose','Cadena','cer56@gmal.com','5/11/2003')
  
select * from estudiantes

update estudiantes set apellido='Hernandez'
where cedula like '17%'


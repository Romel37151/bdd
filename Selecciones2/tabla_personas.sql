drop table personas

create table personas (
	cedula char(10) not null ,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura int ,
	fecha_nacimiento date ,
	hora_nacimiento time ,
	numero_hijos int,
	estado_civil_codigo char(1) not null,
	
	constraint personas_pk primary key(cedula)	
)

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key (codigo)
	
)

alter table personas
add constraint persona_estado_civil_fk 
foreign key (estado_civil_codigo)
references estado_civil(codigo)


insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1754247722','Romel','Sanchez','U')

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1754287722','Romel2','Sanchez2','U')


insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');

SELECT * from estado_civil

select *from personas
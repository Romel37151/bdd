-- tabla registros_entrada

drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85691,'1758964266','1/8/2024','8:50')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85692,'8945237722','1/8/2024','8:30')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85693,'1005697894','1/8/2024','8:45')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85694,'9635824177','1/8/2024','8:20')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85695,'1006938562','1/8/2024','8:00')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85696,'1798653482','1/8/2024','8:59')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85697,'8956357491','1/8/2024','8:35')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85698,'1004567892','1/8/2024','9:00')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85699,'8945631278','1/8/2024','8:20')


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (85700,'9635824175','2/8/2024','8:50')

select * from registros_entrada

delete from registros_entrada 
where fecha
between '1/6/2024' and '30/6/2024'
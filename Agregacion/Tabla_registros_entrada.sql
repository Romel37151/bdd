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

alter table registro_entrada
add constraint registo_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

select * from registros_entrada

select cedula_empleado,fecha,hora from resgistro_entrada

select * from registro_entrada where hora

between '07:00' and '14:00'

select * from registro_entrada where hora> '08:00'


update registro_entrada set cedula_empleado='082345679' where fecha= '07/01/2024'

delete from registro_entrada where fecha='06/01/2024'

select * from registro_entrada where fecha= '09/01/2024' or cedula_empleado like '17%'

select * from registro_entrada where(fecha= '09/01/2024' and cedula_empleado like '17%') and (hora='08:00' and hora= '12:00')

select * from registro_entrada where (fecha= '08/01/2024' and cedula_empleado like '17%')and (hora='08:00' and hora= '12:00') or (fecha= '09/01/2024' and cedula_empleado like '08%') and (hora='09:00' and hora= '13:00') 

alter table registro_entrada 
add column codigo_empleado int 

drop table empleado

create table empleado(
	codigo_empleado int,
	nombre varchar(50),
	fecha date,
	hora time, 
	
	constraint empleado_key primary key (codigo_empleado)
	
)
select * from empleado
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(1212,'jonathan','2024/08/12','14:00')
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'luis','2024/05/12','14:30')


select re.cedula_empleado, re.fecha , em.nombre from registros_entrada re, empleado em
where re.fecha='2023/08/01' and re.fecha= '2023/08/31'

select cedula_empleado, count(codigo_registro)  from registros_entrada, empleado

group by(cedula_empleado)


select max(fecha) as fecha_maxima , min(fecha) as fecha_minima from registros_entrada



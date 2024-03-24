-- tabla productos
drop table productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
) 
insert into productos(codigo,nombre,descripcion,precio,stock)
values (10025,'Romel','pan',85,12)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (89045,'Carlos','cebolla',9,5)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (01472,'Daniel','jabon',20,85)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (88521,'Roberto','arroz',8,56)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (85623,'Gloria','atun',23,8)


insert into productos(codigo,nombre,precio,stock)
values (89456,'Juan',2,4)

insert into productos(codigo,nombre,precio,stock)
values (89256,'Margarita',91,25)

insert into productos(codigo,nombre,precio,stock)
values (23654,'Pedro',20,63)

select * from productos
select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select * from productos where precio between money(2) and money(3)

update productos set stock= 0 where descripcion is null

delete from productos where descripcion is null

select * from productos where stock= 10 and precio<money(10)

select * from productos where nombre like 'm%' or descripcion= ''

select * from productos 
where descripcion is null or stock= 0

select * from ventas
create table ventas(
	id_ventas int,
	codigo_producto int,
	fecha_venta date ,
	cantidad int,
	
	constraint ventas_key primary key (id_ventas)


-- creacion de foreing key 
alter table ventas
add constraint ventas_productos_fk 
foreign key (codigo_producto)
references productos(codigo)

insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(1,13,'2024/08/22',12);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(4,13,'2024/08/29',13);
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(3,13,'2024/08/29',8);


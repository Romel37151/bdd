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


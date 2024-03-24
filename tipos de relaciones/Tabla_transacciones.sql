-- tabla transacciones
drop table transacciones

create table transacciones(
	 codigo int not null,
	numero_cuenta char (5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (7989,'12345',256,'C','1/12/2023','8:00')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (4562,'89562',963,'D','16/12/2023','8:56')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (7895,'45621',42,'C','1/5/2023','10:00')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (7894,'56123',85,'C','8/12/2022','14:00')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (9635,'45678',96,'D','6/8/2023','9:00')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (9012,'74410',01,'D','1/12/2023','8:30')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (0010,'78945',369,'C','8/6/2023','8:00')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (4488,'89635',9,'D','25/12/2023','15:00')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (8944,'78900',200,'C','1/2/2021','18:00')


insert into transacciones( codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2210,'45600',400,'D','26/6/2023','8:00')

select * from transacciones
select * from banco

create table banco(
	codigo_banco int,
	codidigo_transaccion int ,
	detalle varchar(100),
	constraint banco_key primary key (codigo_banco)
)

insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1112,1,'detalle de la tansaccion por motivps de pagos ')
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1113,3,'detalle de la tansaccion por pago de deuda ')
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1114,1,'detalle de la tansaccion por motivps de pagos ')
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1115,2,'detalle de la tansaccion por compra de uan moto ')

alter table banco
add constraint banco_transaccion_key 
foreign key (codidigo_transaccion)
references transacciones(codigo)
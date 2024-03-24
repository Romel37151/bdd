-- tabla videojuegos
 drop table videojuegos
  create table videojuegos(
  	 codigo int not null,
	 nombre varchar (100) not null,
	  descripcion varchar (300),
	  valoracion int not null,
	  constraint videojuegos_pk primary key(codigo)
  )
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(895,'Juan','LOL','4')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(753,'Pedro','GTA','5')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(852,'Julian','FORNITE','4')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(147,'Jose','FREE FIRE','3')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(951,'Armando','VALORANT','5')
  
  
  insert into videojuegos(codigo,nombre,valoracion)
  values(963,'Homero','4')
  insert into videojuegos(codigo,nombre,valoracion)
  values(456,'Jorge','1')
  insert into videojuegos(codigo,nombre,valoracion)
  values(012,'Sara','3')
  select * from videojuegos
  
  select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion 
between 9 and 10

select * from videojuegos where descripcion is null


update videojuegos set descripcion= 'mejor puntuado' where valoracion>9

delete from videojuegos where valoracion>7

select * from videojuegos where nombre like 'c' or valoracion= 7

select * from videojuegos where (codigo= 3 and  codigo = 7 ) or valoracion= 7

select * from videojuegos where (valoracion > 7 and nombre like 'C') or (valoracion> 8 and nombre like 'D')

select * from videojuegos
select * from plataforma

create table plataforma(
	id_plataforma int,
	nombre_plataforma varchar(50),
	codigo_videojuego int,
	
	constraint plataforma_key primary key (id_plataforma)
	
)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(12,'plataforma nose',1)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(13,'plataforma de guerra',11)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(14,'plataforma peleas',11)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(15,'plataforma carros',8)
-- foreing key 
alter table plataforma
add constraint palataforma_videojuego_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)
  
  
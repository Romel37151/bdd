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
  values(895,'LOL','GAME','4')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(753,'GTA','MUNDO ABIERTO','5')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(852,'FORNITE','BATTLE ROYAL','4')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(147,'FREE FIRE','BATTLE ROYAL','3')
  
  insert into videojuegos(codigo,nombre,descripcion,valoracion)
  values(951,'VALORANT','BATTLE ROYAL','5')
  
  
  insert into videojuegos(codigo,nombre,valoracion)
  values(963,'COUNTER STRIKE','4')
  insert into videojuegos(codigo,nombre,valoracion)
  values(456,'POU','1')
  insert into videojuegos(codigo,nombre,valoracion)
  values(012,'SIGMAX','3')
  
  select * from videojuegos
  where nombre like 'C%'
  
  select * from videojuegos
  where valoracion
  between 4 and 5
  
  select * from videojuegos
  where descripcion is null
  
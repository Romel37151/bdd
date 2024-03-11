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
  
  delete from videojuegos
  where valoracion<4
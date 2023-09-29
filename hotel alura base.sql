CREATE DATABASE hotel_alura_pe;

use hotel_alura_pe;

create table reservas(
id int not null auto_increment,    
fecha_entrada date not null,
fecha_salida date not null,
valor varchar(50),
forma_de_pago varchar(50) not null,
primary key (id)
);

create table huespedes(
	id int not null auto_increment,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    fecha_nacimiento date,
    nacionalidad varchar(50) not null,
    telefono varchar(50) not null,
    id_reserva int not null,
    primary key (id),
    foreign key (id_reserva) references reservas(id)
);
  

create table usuario (
nombre varchar(50),
contraseña  varchar(50)
);

insert into usuario (nombre,contraseña) values ('Bruce','12345');
insert into usuario (nombre,contraseña) values ('admin','admin');
insert into usuario (nombre,contraseña) values ('santiago','12345');

select * from reservas;

select * from huespedes;
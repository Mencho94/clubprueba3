drop database if exists club;
create database club;
use club;

create table actividad(
	id int auto_increment primary key,
    nombre varchar(20) not null,
    entrenador varchar(20) not null,
    dia enum('LUNES','MARTES','MIERCOLES','JUEVES','VIERNES'),
    turno enum('MAÑANA','TARDE','NOCHE')
);

create table socio(
	id int auto_increment primary key,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    edad int check(edad between 18 and 120),
    idActividad int not null
);

create table entrenador(
	id int auto_increment primary key,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    edad int check(edad between 18 and 120),
    idActividad int not null
);

	alter table socio
    add constraint FK_alumnos_actividad
    foreign key(idActividad)
    references actividad(id);
    
    alter table entrenador
    add constraint FK_entrenador_actividad
    foreign key(idActividad)
    references actividad(id);
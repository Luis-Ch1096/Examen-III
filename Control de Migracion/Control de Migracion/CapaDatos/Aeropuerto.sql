create database Aeropuerto
use Aeropuerto
create table Usuario(
Id_usuario varchar(9)unique not null,
Nombre varchar (20) not null,
Apellido varchar (30) not null,
Email varchar (30) unique not null,
Contraseña varchar(10) unique not null,
constraint Pk_Idusuario primary key(Id_usuario),
)
Insert into Usuario values ('159887451', 'Juan', 'Perez', 'juan@perez', 'JuanPerez1')
Insert into Usuario values ('159887452', 'Luna', 'Campos', 'luna@campos', 'LunaCampos')


create table Viajero(
Id_viajero varchar (9) unique not null,
Nombre varchar(20) not null,
Apellido varchar(30) not null,
Apellido2 varchar(30),
Nacionalidad varchar(30) not null,
constraint Pk_Idviajero primary key(Id_viajero),
)
Insert into Viajero values ('165887412', 'Marcos', 'Perez', 'Perez', 'Mexicano')
Insert into Usuario values ('987456325', 'Alejandro', 'Mata', 'Solano', 'Hondureño')

create table Pais(
Pais varchar(30) unique not null,
Id_pais int identity (1,1) unique not null,
constraint Pk_Idpais primary key(Id_pais)
)
Insert into Pais values ('Mexico')
Insert into Pais values ('Colombia')
Insert into Pais values ('Argentina')
Insert into Pais values ('Honduras')

create table Pais_Viajero(
Id_viajero varchar(9),
Id_pais int,
constraint Fk_Persona foreign key (Id_viajero) references Viajero (Id_viajero),
constraint Fk_Lugar foreign key (Id_pais) references Pais (Id_pais),
)
create table Salida(
Id_viajero varchar(9),
Fecha_salida datetime,
)
create table Llegada(
Id_viajero varchar(9),
Fecha_llegada datetime,
)
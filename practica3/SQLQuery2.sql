create database escuela_horarios
use escuela_horarios
create table Alumno (IdMat int not null,
NomAlu varchar(50),
Edad tinyint,
FecNac datetime,
StausReg varchar (1))

insert into Alumno values(
1639523, 'Salvador',20,'07-14-1997','A')
insert into Alumno values(
1528423, 'Candy',20,'02-01-1994','A')
insert into Alumno values(
1515287,'Ana',23,'06-15-1994','A')
select * from Alumno

create table Carrera (IdCarrera int not null,
NomCarrera varchar(50),
SemCarera tinyint,
StatusReg varchar(1))

insert into Carrera values(
1,'LMAD',8,'A')
insert into Carrera values(
2,'LCC',8,'A')
insert into Carrera values(
3,'LSTI',8,'A')
insert into Carrera values(
4,'LA',8,'A')
insert into Carrera values(
5,'LM',8,'A')
insert into Carrera values(
6,'LF',8,'A')
select * from Carrera

create table Materia (
IdMateria int not null,
IdCarrera int not null,
matNombre varchar(50),
NumCred tinyint,
Semestre tinyint,
StatusReg varchar(1))

insert into Materia values(
1, 5, 'Algebra', 7,3, 'A')
insert into Materia values(
2, 5, 'Circuitos digitales', 6 , 9 , 'A')
insert into Materia values(
3, 8, ' Calculo integral' , 8 , 6 , 'A')
insert into Materia values(
4, 5, 'Fundamentos de seguridad', 6 , 8 , 'A')
insert into Materia values(
5, 4 , 'Base de datos', 4, 5, 'A')
select * from Materia

create table grupo_materia(
IdGrupo_materia int not null,
IdMateria_Maestro int not null,
IdGrupo int not null)

insert into grupo_materia values(

24, 25, 30)

create table Profesor(
IdProfesor int not null,
IdUsuario int not null,
Nombre varchar(50),
Edad tinyint,
Sexo varchar(1),
StatusReg varchar(1))

insert into Profesor values(
1, 1,'El Mejor',25,'M', 'A')

select * from Profesor

create table Grupo(
IdGrupo int not null,
IdSalon int not null,
IdTurno int not null,)

insert into Grupo values(

54,56,66)

create table Profesor_Materia (
IdMateriaMaestro int not null,
idProfesor int not null,
IdMateria int not null)
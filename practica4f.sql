create database escuela_horarios
use escuela_horarios

create table Usuario (
IdUsuario int not null,
nombreL varchar(50),
pass varchar(50))


insert into Usuario values (

1667093, 'sofia aleck', 'piedequeso21')

select *  from Usuario



create table Alumno (
IdAlumno int not null,
NomAlu varchar(50),
Edad tinyint,
FecNac datetime,
StausReg varchar (1))

insert into Alumno values(
1639523, 'Sofia',20,'07-14-1997','A')
insert into Alumno values(
1528423, 'esmeralda',20,'02-01-1994','A')
insert into Alumno values(
1515287,'valeria',23,'06-15-1994','A')
select * from Alumno

create table Nivel (
IdNivel int not null,
nomNivel varchar (50)

)

insert into Nivel values (

4, 'lincenciatura')


insert into Nivel values( 
 3, 'doctorado')

select * from Nivel

create table Carrera (
IdCarrera int not null,
IdNivel int not null,
NomCarrera varchar(50),
SemCarrera tinyint,
StatusReg varchar(1))

insert into Carrera values(
1,4,'LMAD',8,'A')
insert into Carrera values(
2,3,'LCC',8,'A')
insert into Carrera values(
3,4,'LSTI',8,'A')
insert into Carrera values(
4,3,'LA',8,'A')
insert into Carrera values(
5,4,'LM',8,'A')
insert into Carrera values(
6,3,'LF',8,'A')
select * from Carrera

create table Calificaciones(
Idgrupo_materia int not null,
Idgrupo_alumno int not null,
calificacion int not null)

insert into Calificaciones values(
12, 16, 9)

insert into Calificaciones values(
12, 17, 10)

insert into Calificaciones values(
12, 15, 15)

select * from Calificaciones 


create table grupo_alumno (
Idgrupo_materia int not null,
IdAlumno int not null)


insert into grupo_alumno values(

12, 1528423
)
insert into grupo_alumno values(
12, 1639523)

insert into grupo_alumno values(
12, 1515287)



select * from grupo_alumno


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
Idgrupo_materia int not null,
IdMateria_Maestro int not null,
IdGrupo int not null)

insert into grupo_materia values(

12, 25, 30)

insert into grupo_materia values(

12, 20, 33)

insert into grupo_materia values(

12, 15, 35)

select * from grupo_materia

create table Profesor(
IdProfesor int not null,
IdUsuario int not null,
Nombre varchar(50),
Edad tinyint,
Sexo varchar(1),
StatusReg varchar(1))

insert into Profesor values(
1, 1,'Atilano',25,'M', 'A')

insert into Profesor values(
2, 2,'Mario',26,'M', 'A')

insert into Profesor values(
3, 3,'Jose Jimenez',89,'M', 'A')

select * from Profesor

create table Grupo(
IdGrupo int not null,
IdSalon int not null,
IdTurno int not null,)

insert into Grupo values(

54,56,30)

insert into Grupo values(

53,50,33)
insert into Grupo values(

52,44,35)

select * from Grupo


create table Profesor_Materia (
IdMateria_Maestro int not null,
idProfesor int not null,
IdMateria int not null)


insert into Profesor_Materia values(

25,1,5)

insert into Profesor_Materia values(

20,2,1)

insert into Profesor_Materia values(

15,3,2)

select * from Profesor_Materia

create table Salon(
IdSalon int not null,
capacidad int not null)

insert into Salon values(
56, 45)


insert into Salon values(
50, 45)


insert into Salon values(
44, 45)




select * from Salon



update Alumno  set NomAlu= ' sofia estuvo aqui'


 where IdAlumno= 1639523




 select IdAlumno, NomAlu, a.Edad, NomCarrera, p.Nombre
from Alumno a, Carrera c, Materia m, Profesor p, Profesor_Materia pm
where IdAlumno = 1639523
and c.IdCarrera = 3
and m.IdMateria = 5
and pm.idProfesor = p.idProfesor


 
 update Alumno  set IdAlumno= ' 1111111'
 
 where IdAlumno= 1528423


 select * from Alumno
 
 
 update Materia set matNombre= 'Panaderia'
  where IdMateria=1
  
  
 
 select * from Materia
 
 update Materia set matNombre= 'Laboratorio de BDD'
  where IdMateria=2
  
  
 
 select * from Materia
 
 update Profesor set Nombre= 'Jose Hernandez'
  where IdProfesor=1
  
  
 
 select * from Profesor
 
 update Carrera set NomCarrera= 'Multimedia'
  where IdCarrera=1
  
  
 
 select * from Carrera
 
 
 
 
 

 select * 

 --DELETE

 FROM Alumno 

 where IdAlumno = 1515287
 
 
 
 

 select * 

 --DELETE

 FROM Alumno 

 where NomAlu = 'sofia'
 
 
 
 select * 

 --DELETE

 FROM Carrera

 where NomCarrera = 'Multimedia'
 
 
 
 
 select * 

 --DELETE

 FROM Materia

 where  matNombre = 'Panaderia'
 
 
 
 select * 

 --DELETE

 FROM Materia
 
 where matNombre= 'Laboratorio de BDD'


 
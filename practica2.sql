use PRACTICA2
create table Alumno(
IdMatricula  UNIQUEIDENTIFIER not null, 
NomAlu varchar (50),
ApellidoAlu varchar(50),
Edad tinyint,
FecNac datetime,
StauReg varchar(1),
PRIMARY KEY (IdMatricula),

NombreEstudiante as (ApellidoAlu + NomAlu)


)


create table Carrera(
IdCarrera int not null, 
NomCarrera varchar (50),
SemCarrera tinyint,
StatusREg varchar(1)



)


create table Materia(
IdMateria UNIQUEIDENTIFIER not null,
Nombre varchar(50),
NumCred tinyint,
Semestre tinyint,
StatusReg varchar(1),


CatalogoMaterias as (Nombre + NumCred + Semestre)

)

create table Profesor (
IdProfesor UNIQUEIDENTIFIER not null,
Nombre varchar(50),
Edad tinyint,
Sexo varchar(1),
IdCarrera int,
StatusReg varchar(1),

DatosProfesor as (Nombre + Edad + Sexo)

)

create table Grupo(
IdGrupo UNIQUEIDENTIFIER not null,
salon varchar(3),
IdMateria UNIQUEIDENTIFIER not null,
)

create table Nivel(
IdNivel UNIQUEIDENTIFIER not null,
NombreNivel text
)

create table Turno(
IdTurno UNIQUEIDENTIFIER not null,
TipoTurno text)












select *from Alumno
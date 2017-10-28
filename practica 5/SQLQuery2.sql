

 select NomAlu, count(IdAlumno) as 'numero de alumnos con la id', SUM(IdUsuario) as 'identificador'
 from Alumno
 group by NomAlu

Select SUM(Materia.MatCred) as 'Cantidad de creditos' , COUNT (MatNom) as 'total de materias impartidas', Materia.MatNom

from Materia
group by Materia.MatNom

select  AVG(Salon.Capacidad) as 'capacidad'
from Salon


select   AVG(Salon.Capacidad) as 'capacidad de salon', SUM(IdSalon) as 'identificador de salon'
from Salon
group by Salon.Capacidad
having(Salon.Capacidad) >30
select * from Salon

select SUM(Materia.MatCred) as 'creditos de materia', COUNT (Materia.MatNom) as ' total de materias'
from Materia
group by Materia.NumSemestre
having (Materia.NumSemestre) >2
select * from Materia


select MAX(Grupo_Materia.IdGrupoMateria) as ' la hora mas tarde de empezar'
from Grupo_Materia
group by Grupo_Materia.IdGrupoMateria
having (Grupo_Materia.IdGrupoMateria)> 77777
select * from Grupo_Materia


select IdMaestro id, NomMaestro nombre
from Maestro
where IdMaestro = 44441
and NomMaestro= NomMaestro


select MAX(Carrera.SemCarrera) as ' maximo semestre' 
from Carrera
where SemCarrera = 9


select COUNT ( Salon.Capacidad) as ' capacidad'
from Salon
where Capacidad = Capacidad




Select Top 7*
from Materia

Select NomMaestro 
from Maestro 
where NomMaestro= NomMaestro
order by NomMaestro DESC












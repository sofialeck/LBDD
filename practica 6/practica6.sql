Use Escolar_Horarios
create view Maestros_Asignaturas as
select ma.NomMaestro, ma.Apellidos, m.MatNom
from Maestro ma inner join Materia_Maestro mm
on ma.IdMaestro = mm.IdMaestro
inner join Materia m 
on mm.IdMateria = m.IdMateria

create view dificultad as 
select f.NomCarrera, f.SemCarrera, n.nomNivel
from Carrera f inner join Nivel n 
on f.IdNivel = n.IdNivel

create view alumnos_por_salon as
select s.Capacidad, ca.IdSalon
from Salon s inner join Grupo ca 
on s.IdSalon = ca.IdSalon 

create view Alumno_registrados as
select a.StausReg , a.NomAlu, a.IdAlumno, u.nombreL
from Alumno a inner join Usuario u
on a.IdUsuario = u.IdUsuario


create view  clase_de_maestros as
select m.NomMaestro, m.Apellidos, t.nomTitulo
from Maestro m inner join Maestro_Titulo mat
on m.IdMaestro = mat.IdMaestro
inner join Titulo t
on mat.IdTitulo= t.IdTitulo

create view MaxCreditoporSem as
select MAX (cre.MatCred) as [CrediMaxi]
from Materia cre inner join Carrera ca
on cre.IdCarrera= ca.IdCarrera
inner join Nivel ni
on ca.IdNivel = ni.IdNivel
group by cre.MatCred


select * from Carrera


select * from Carrera where Carrera.SemCarrera = (select SemCarrera from Carrera where SemCarrera = 8)
select * from Carrera where Carrera.SemCarrera in (select SemCarrera from Carrera where SemCarrera = 8)
select * from Carrera where Carrera.SemCarrera in (select SemCarrera from Carrera where SemCarrera = 9)